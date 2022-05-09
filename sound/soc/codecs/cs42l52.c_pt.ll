; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs42l52.c_pt.bc'
source_filename = "../sound/soc/codecs/cs42l52.c"
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
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cs42l52_clk_para = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.cs42l52_private = type { ptr, ptr, ptr, %struct.sp_config, %struct.cs42l52_platform_data, i32, i8, i32, i8, ptr, %struct.work_struct, i32 }
%struct.sp_config = type { i8, i8, i8, i32 }
%struct.cs42l52_platform_data = type { i32, i8, i8, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_cs42l52__297_1232_cs42l52_i2c_driver_init6 = internal global ptr @cs42l52_i2c_driver_init, section ".initcall6.init", align 4
@cs42l52_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs42l52_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs42l52_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cs42l52_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs42l52_i2c_driver_exit = internal global ptr @cs42l52_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [48 x i8] c"snd_soc_cs42l52.description=ASoC CS42L52 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [78 x i8] c"snd_soc_cs42l52.author=Georgi Vlaev, Nucleus Systems Ltd, <joe@nucleusys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [81 x i8] c"snd_soc_cs42l52.author=Brian Austin, Cirrus Logic Inc, <brian.austin@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [54 x i8] c"snd_soc_cs42l52.file=sound/soc/codecs/snd-soc-cs42l52\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [28 x i8] c"snd_soc_cs42l52.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs42l52\00", [24 x i8] zeroinitializer }, align 32
@cs42l52_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs42l52\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs42l52_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs42l52\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs42l52_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @cs42l52_readable_register, ptr @cs42l52_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 71, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l52_reg_defaults, i32 49, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs42l52:1104:(&cs42l52_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs42l52_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs42l52.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry_ptr = internal global ptr @cs42l52_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,mica-differential-cfg\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,micb-differential-cfg\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrus,micbias-lvl\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,chgfreq-divisor\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,reset-gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CS42L52 /RST\00", [19 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request /RST %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry_ptr.15 = internal global ptr @cs42l52_i2c_probe._entry.13, section ".printk_index", align 4
@cs42l52_threshold_patch = internal constant { [6 x %struct.reg_sequence], [56 x i8] } { [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 153, i32 0 }, %struct.reg_sequence { i32 62, i32 186, i32 0 }, %struct.reg_sequence { i32 71, i32 128, i32 0 }, %struct.reg_sequence { i32 50, i32 187, i32 0 }, %struct.reg_sequence { i32 50, i32 59, i32 0 }, %struct.reg_sequence zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1162, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry_ptr.19 = internal global ptr @cs42l52_i2c_probe._entry.16, section ".printk_index", align 4
@cs42l52_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry_ptr.22 = internal global ptr @cs42l52_i2c_probe._entry.20, section ".printk_index", align 4
@cs42l52_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CS42L52 Device ID (%X). Expected %X\0A\00", [59 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry_ptr.25 = internal global ptr @cs42l52_i2c_probe._entry.23, section ".printk_index", align 4
@cs42l52_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 1180, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cirrus Logic CS42L52, Revision: %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs42l52_i2c_probe._entry_ptr.29 = internal global ptr @cs42l52_i2c_probe._entry.26, section ".printk_index", align 4
@soc_component_dev_cs42l52 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs42l52_snd_controls, i32 64, ptr @cs42l52_dapm_widgets, i32 42, ptr @cs42l52_audio_map, i32 54, ptr @cs42l52_probe, ptr @cs42l52_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l52_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs42l52_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs42l52_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.294, i64 5841155522900, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.295, i64 5841155522900, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@cs42l52_reg_defaults = internal constant { [49 x %struct.reg_default], [120 x i8] } { [49 x %struct.reg_default] [%struct.reg_default { i32 2, i32 159 }, %struct.reg_default { i32 3, i32 7 }, %struct.reg_default { i32 4, i32 255 }, %struct.reg_default { i32 5, i32 160 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 128 }, %struct.reg_default { i32 9, i32 128 }, %struct.reg_default { i32 10, i32 165 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 96 }, %struct.reg_default { i32 14, i32 2 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 128 }, %struct.reg_default { i32 25, i32 128 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 127 }, %struct.reg_default { i32 41, i32 192 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 63 }, %struct.reg_default { i32 44, i32 63 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 59 }, %struct.reg_default { i32 51, i32 0 }], [120 x i8] zeroinitializer }, align 32
@cs42l52_snd_controls = internal constant { [64 x %struct.snd_kcontrol_new], [768 x i8] } { [64 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @hl_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @hpd_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @hp_gain_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @hl_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mic_bias_level_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @ipd_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @ipd_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @beep_config_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @beep_pitch_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @beep_ontime_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @beep_offtime_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @beep_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @beep_treble_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @beep_bass_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hl_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hl_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ng_type_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ng_threshold_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ng_delay_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }], [768 x i8] zeroinitializer }, align 32
@cs42l52_audio_map = internal constant { [54 x %struct.snd_soc_dapm_route], [680 x i8] } { [54 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr @.str.285, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr @.str.285, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.242, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.269, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.275, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.270, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.276, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.271, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.277, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.272, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.278, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.273, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.279, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.287, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.287, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.287, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.287, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.287, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.287, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.287, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.287, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.287, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.287, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.287, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr @.str.287, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr @.str.287, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr @.str.287, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr null, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr @.str.287, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr @.str.287, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr @.str.286, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr @.str.286, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }], [680 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@hl_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 32, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@hpd_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 192, i32 0, i32 34, i32 35, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Analog Gain\00", [42 x i8] zeroinitializer }, align 32
@hp_gain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 5, i8 5, i32 8, i32 7, ptr @hp_gain_num_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 64, i32 192, i32 0, i32 36, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bypass Volume\00", [18 x i8] zeroinitializer }, align 32
@pga_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 136, i32 144, i32 0, i32 20, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bypass Mute\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MIC Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@mic_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 1600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 16, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MIC Bias Level\00", [17 x i8] zeroinitializer }, align 32
@mic_bias_level_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 6, i32 7, ptr @mic_bias_level_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@ipd_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 160, i32 120, i32 0, i32 22, i32 23, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Mixer Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 25, i32 127, i32 0, i32 24, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12, i32 12, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Mixer Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 25, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PGA Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 40, i32 36, i32 0, i32 18, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM Mixer Volume\00", [47 x i8] zeroinitializer }, align 32
@mix_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -50, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 25, i32 127, i32 0, i32 26, i32 27, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM Mixer Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 27, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beep Config\00", [20 x i8] zeroinitializer }, align 32
@beep_config_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 30, i8 6, i8 6, i32 4, i32 3, ptr @beep_config_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Beep Pitch\00", [21 x i8] zeroinitializer }, align 32
@beep_pitch_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 28, i8 4, i8 4, i32 16, i32 15, ptr @beep_pitch_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Beep on Time\00", [19 x i8] zeroinitializer }, align 32
@beep_ontime_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 28, i8 0, i8 0, i32 16, i32 15, ptr @beep_ontime_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Beep off Time\00", [18 x i8] zeroinitializer }, align 32
@beep_offtime_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29, i8 5, i8 5, i32 8, i32 7, ptr @beep_offtime_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beep Volume\00", [20 x i8] zeroinitializer }, align 32
@beep_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -56, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 7, i32 31, i32 0, i32 29, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Beep Mixer Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Beep Treble Corner Freq\00", [40 x i8] zeroinitializer }, align 32
@beep_treble_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 30, i8 3, i8 3, i32 4, i32 3, ptr @beep_treble_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Beep Bass Corner Freq\00", [42 x i8] zeroinitializer }, align 32
@beep_bass_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 30, i8 1, i8 1, i32 4, i32 3, ptr @beep_bass_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tone Control Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Treble Gain Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 31, i32 31, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bass Gain Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 31, i32 31, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Limiter Max Threshold Volume\00", [35 x i8] zeroinitializer }, align 32
@limiter_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 2, i32 1, i32 8, i32 -3000, i32 600, i32 3, i32 7, i32 1, i32 8, i32 -1200, i32 300], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 39, i32 39, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Limiter Cushion Threshold Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 39, i32 39, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Limiter Release Rate Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Limiter Attack Rate Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Limiter SR Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Limiter ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Limiter Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Attack Rate Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ALC Release Rate Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Max Threshold Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Min Threshold Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC SR Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 19, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC ZC Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 19, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NG Type Switch\00", [17 x i8] zeroinitializer }, align 32
@ng_type_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 6, i8 6, i32 2, i32 1, ptr @cs42l52_ng_type_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NG Enable Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NG Boost Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NG Threshold\00", [19 x i8] zeroinitializer }, align 32
@ng_threshold_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 2, i8 2, i32 8, i32 7, ptr @ng_threshold_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NG Delay\00", [23 x i8] zeroinitializer }, align 32
@ng_delay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 0, i8 0, i32 4, i32 3, ptr @cs42l52_ng_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPF Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 5, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analog SR Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 1, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analog ZC Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital SR Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Deemphasis Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Batt Compensation Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Batt VP Monitor Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Batt VP ref\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN1L Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN1R Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN2L Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN2R Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN3L Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN3R Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN4L Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA AIN4R Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PGA MICA Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PGA MICB Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@hp_gain_num_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.3959\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.4571\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.5111\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.6047\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.7099\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.8399\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.000\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.1430\00", [25 x i8] zeroinitializer }, align 32
@mic_bias_level_text = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159], [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.5 +VA\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.6 +VA\00", [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.7 +VA\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.8 +VA\00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.83 +VA\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.91 +VA\00", [23 x i8] zeroinitializer }, align 32
@beep_config_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Single\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Multiple\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Continuous\00", [21 x i8] zeroinitializer }, align 32
@beep_pitch_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C4\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C5\00", [29 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D5\00", [29 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"E5\00", [29 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"F5\00", [29 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"G5\00", [29 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A5\00", [29 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B5\00", [29 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C6\00", [29 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D6\00", [29 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"E6\00", [29 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"F6\00", [29 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"G6\00", [29 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A6\00", [29 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B6\00", [29 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C7\00", [29 x i8] zeroinitializer }, align 32
@beep_ontime_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195], [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"86 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"430 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"780 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.20 s\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.50 s\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.80 s\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.20 s\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.50 s\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.80 s\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.20 s\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.50 s\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.80 s\00", [25 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.20 s\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.50 s\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.80 s\00", [25 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.20 s\00", [25 x i8] zeroinitializer }, align 32
@beep_offtime_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.195, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202], [32 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.23 s\00", [25 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.58 s\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.90 s\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6.60 s\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.05 s\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.35 s\00", [25 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10.80 s\00", [24 x i8] zeroinitializer }, align 32
@beep_treble_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206], [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5 kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"7 kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10 kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" 15 kHz\00", [24 x i8] zeroinitializer }, align 32
@beep_bass_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210], [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"50 Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"100 Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"200 Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"250 Hz\00", [25 x i8] zeroinitializer }, align 32
@cs42l52_ng_type_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.211, ptr @.str.212], [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Apply Specific\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Apply All\00", [22 x i8] zeroinitializer }, align 32
@ng_threshold_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220], [32 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-34dB\00", [26 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-37dB\00", [26 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-40dB\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-43dB\00", [26 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-46dB\00", [26 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-52dB\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-58dB\00", [26 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-64dB\00", [26 x i8] zeroinitializer }, align 32
@cs42l52_ng_delay_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224], [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50ms\00", [27 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100ms\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150ms\00", [26 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200ms\00", [26 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1L\00", [26 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1R\00", [26 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2L\00", [26 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2R\00", [26 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN3L\00", [26 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN3R\00", [26 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN4L\00", [26 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN4R\00", [26 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICA\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICB\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Beep\00", [27 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTR\00", [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PGA Left\00", [23 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PGA Right\00", [22 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC Left Mux\00", [19 x i8] zeroinitializer }, align 32
@adca_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adca_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC Right Mux\00", [18 x i8] zeroinitializer }, align 32
@adcb_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.274, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adcb_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC Left Swap\00", [18 x i8] zeroinitializer }, align 32
@adca_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adca_swap_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC Right Swap\00", [17 x i8] zeroinitializer }, align 32
@adcb_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adcb_swap_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Output Mux\00", [21 x i8] zeroinitializer }, align 32
@digital_output_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @digital_output_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PGA MICA\00", [23 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PGA MICB\00", [23 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINL\00", [25 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINR\00", [25 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bypass Left\00", [20 x i8] zeroinitializer }, align 32
@passthrul_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bypass Right\00", [19 x i8] zeroinitializer }, align 32
@passthrur_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM Left Swap\00", [18 x i8] zeroinitializer }, align 32
@pcma_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @pcma_swap_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM Right Swap\00", [17 x i8] zeroinitializer }, align 32
@pcmb_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @pcmb_swap_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HP Left Amp\00", [20 x i8] zeroinitializer }, align 32
@hpl_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Right Amp\00", [19 x i8] zeroinitializer }, align 32
@hpr_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK Left Amp\00", [19 x i8] zeroinitializer }, align 32
@spkl_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPK Right Amp\00", [18 x i8] zeroinitializer }, align 32
@spkr_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTA\00", [25 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTB\00", [25 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTA\00", [24 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTB\00", [24 x i8] zeroinitializer }, align 32
@cs42l52_dapm_widgets = internal constant { [42 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1912 x i8] } { [42 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.240, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.242, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adca_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcb_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.244, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adca_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.245, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcb_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.246, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @digital_output_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.247, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @passthrul_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @passthrur_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pcma_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pcmb_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpl_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpr_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.261, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spkl_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.262, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spkr_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.263, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.264, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1912 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Left ADC Input Capture Mux\00", [37 x i8] zeroinitializer }, align 32
@adca_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 5, i8 5, i32 5, i32 7, ptr @cs42l52_adca_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l52_adca_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273], [44 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input1A\00", [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input2A\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input3A\00", [24 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input4A\00", [24 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PGA Input Left\00", [17 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right ADC Input Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adcb_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 5, i8 5, i32 5, i32 7, ptr @cs42l52_adcb_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l52_adcb_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279], [44 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input1B\00", [24 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input2B\00", [24 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input3B\00", [24 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input4B\00", [24 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PGA Input Right\00", [16 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@adca_swap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 2, i8 2, i32 3, i32 3, ptr @left_swap_text, ptr @swap_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@left_swap_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.281, ptr @.str.282, ptr @.str.283], [20 x i8] zeroinitializer }, align 32
@swap_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LR 2\00", [27 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@adcb_swap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 0, i8 0, i32 3, i32 3, ptr @right_swap_text, ptr @swap_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@right_swap_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.283, ptr @.str.282, ptr @.str.281], [20 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital Output Mux\00", [45 x i8] zeroinitializer }, align 32
@digital_output_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 6, i8 6, i32 2, i32 1, ptr @digital_output_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@digital_output_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.285, ptr @.str.286], [24 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSP\00", [28 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@pcma_swap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 6, i8 6, i32 3, i32 3, ptr @left_swap_text, ptr @swap_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pcmb_swap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 4, i8 4, i32 3, i32 3, ptr @right_swap_text, ptr @swap_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@cs42l52_mica_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mica_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@cs42l52_micb_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.299, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @micb_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICA Select\00", [20 x i8] zeroinitializer }, align 32
@mica_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 5, i8 5, i32 2, i32 1, ptr @cs42l52_mic_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l52_mic_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.297, ptr @.str.298], [24 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICB Select\00", [20 x i8] zeroinitializer }, align 32
@micb_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 5, i8 5, i32 2, i32 1, ptr @cs42l52_mic_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l52_init_beep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.301, ptr @.str.4, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate beep device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs42l52_init_beep\00", [46 x i8] zeroinitializer }, align 32
@cs42l52_init_beep._entry_ptr = internal global ptr @cs42l52_init_beep._entry, section ".printk_index", align 4
@cs42l52_init_beep.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.302 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&cs42l52->beep_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CS42L52 Beep Generator\00", [41 x i8] zeroinitializer }, align 32
@cs42l52_init_beep._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.301, ptr @.str.4, i32 1005, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register beep device\0A\00", [32 x i8] zeroinitializer }, align 32
@cs42l52_init_beep._entry_ptr.306 = internal global ptr @cs42l52_init_beep._entry.304, section ".printk_index", align 4
@dev_attr_beep = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.316, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @beep_store }, [36 x i8] zeroinitializer }, align 32
@cs42l52_init_beep._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.301, ptr @.str.4, i32 1011, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create keyclick file: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs42l52_init_beep._entry_ptr.309 = internal global ptr @cs42l52_init_beep._entry.307, section ".printk_index", align 4
@beep_rates = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 261, i32 522, i32 585, i32 667, i32 706, i32 774, i32 889, i32 1000, i32 1043, i32 1200, i32 1333, i32 1412, i32 1600, i32 1714, i32 2000, i32 2182], [32 x i8] zeroinitializer }, align 32
@cs42l52_beep_work.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.310, ptr @.str.311, ptr @.str.4, ptr @.str.312, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.310 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs42l52\00", [16 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs42l52_beep_work\00", [46 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Set beep rate %dHz for requested %dHz\0A\00", [57 x i8] zeroinitializer }, align 32
@cs42l52_beep_work.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.310, ptr @.str.311, ptr @.str.4, ptr @.str.313, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.313 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Disabling beep\0A\00", [16 x i8] zeroinitializer }, align 32
@cs42l52_beep_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.310, ptr @.str.314, ptr @.str.4, ptr @.str.315, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.314 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs42l52_beep_event\00", [45 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Beep event %x %x\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"beep\00", [27 x i8] zeroinitializer }, align 32
@cs42l52_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs42l52_set_sysclk, ptr null, ptr null, ptr null, ptr @cs42l52_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l52_mute, ptr null, ptr null, ptr @cs42l52_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@cs42l52_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.318, ptr @.str.4, i32 721, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid freq parameter\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs42l52_set_sysclk\00", [45 x i8] zeroinitializer }, align 32
@cs42l52_set_sysclk._entry_ptr = internal global ptr @cs42l52_set_sysclk._entry, section ".printk_index", align 4
@clk_map_table = internal constant { [32 x %struct.cs42l52_clk_para], [128 x i8] } { [32 x %struct.cs42l52_clk_para] [%struct.cs42l52_clk_para { i32 12288000, i32 8000, i8 3, i8 1, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 18432000, i32 8000, i8 3, i8 1, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12000000, i32 8000, i8 3, i8 1, i8 0, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 24000000, i32 8000, i8 3, i8 1, i8 0, i8 1, i8 1 }, %struct.cs42l52_clk_para { i32 27000000, i32 8000, i8 3, i8 1, i8 1, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 11289600, i32 11025, i8 3, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 16934400, i32 11025, i8 3, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12288000, i32 16000, i8 2, i8 1, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 18432000, i32 16000, i8 2, i8 1, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12000000, i32 16000, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 24000000, i32 16000, i8 2, i8 1, i8 0, i8 1, i8 1 }, %struct.cs42l52_clk_para { i32 27000000, i32 16000, i8 2, i8 1, i8 1, i8 1, i8 1 }, %struct.cs42l52_clk_para { i32 11289600, i32 22050, i8 2, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 16934400, i32 22050, i8 2, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12288000, i32 32000, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 18432000, i32 32000, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12000000, i32 32000, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 24000000, i32 32000, i8 1, i8 1, i8 0, i8 1, i8 1 }, %struct.cs42l52_clk_para { i32 27000000, i32 32000, i8 1, i8 1, i8 1, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 11289600, i32 44100, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 16934400, i32 44100, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12288000, i32 48000, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 18432000, i32 48000, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12000000, i32 48000, i8 1, i8 0, i8 0, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 24000000, i32 48000, i8 1, i8 0, i8 0, i8 1, i8 1 }, %struct.cs42l52_clk_para { i32 27000000, i32 48000, i8 1, i8 0, i8 1, i8 1, i8 1 }, %struct.cs42l52_clk_para { i32 11289600, i32 88200, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 16934400, i32 88200, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12288000, i32 96000, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 18432000, i32 96000, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.cs42l52_clk_para { i32 12000000, i32 96000, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.cs42l52_clk_para { i32 24000000, i32 96000, i8 0, i8 0, i8 0, i8 1, i8 1 }], [128 x i8] zeroinitializer }, align 32
@cs42l52_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.320, ptr @.str.4, i32 824, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get correct mclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs42l52_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@cs42l52_pcm_hw_params._entry_ptr = internal global ptr @cs42l52_pcm_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 46, i64 48, i64 49, i64 52]
@__sancov_gen_cov_switch_values.321 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.322 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.323 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.324 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.325 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.326 = private unnamed_addr constant [19 x i8] c"cs42l52_i2c_driver\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1223, i32 26 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1225, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"cs42l52_of_match\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1210, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant [11 x i8] c"cs42l52_id\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1217, i32 35 }
@___asan_gen_.338 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [15 x i8] c"cs42l52_regmap\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1077, i32 35 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1104, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1107, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1120, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1124, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1128, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1132, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1137, i32 7 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1146, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1148, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant [24 x i8] c"cs42l52_threshold_patch\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1066, i32 34 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1161, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1166, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1173, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1179, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs42l52\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1048, i32 46 }
@___asan_gen_.425 = private unnamed_addr constant [12 x i8] c"cs42l52_dai\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 874, i32 34 }
@___asan_gen_.428 = private unnamed_addr constant [21 x i8] c"cs42l52_reg_defaults\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 54, i32 33 }
@___asan_gen_.431 = private unnamed_addr constant [21 x i8] c"cs42l52_snd_controls\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 340, i32 38 }
@___asan_gen_.434 = private unnamed_addr constant [18 x i8] c"cs42l52_audio_map\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 560, i32 40 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 342, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"hl_tlv\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 130, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 345, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [8 x i8] c"hpd_tlv\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 132, i32 8 }
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 348, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [13 x i8] c"hp_gain_enum\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 197, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 350, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 353, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [8 x i8] c"pga_tlv\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 138, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 356, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 358, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [8 x i8] c"mic_tlv\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 136, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 361, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c"mic_bias_level_enum\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 172, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 363, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [8 x i8] c"ipd_tlv\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 134, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 365, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 369, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 371, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 374, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 377, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [8 x i8] c"mix_tlv\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 140, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 380, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 383, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"beep_config_enum\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 233, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 384, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [16 x i8] c"beep_pitch_enum\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 206, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 385, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"beep_ontime_enum\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 216, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 386, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [18 x i8] c"beep_offtime_enum\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 225, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 387, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [9 x i8] c"beep_tlv\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 142, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 389, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 390, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [17 x i8] c"beep_treble_enum\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 249, i32 8 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 391, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [15 x i8] c"beep_bass_enum\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 241, i32 8 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 393, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 394, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 396, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 400, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [12 x i8] c"limiter_tlv\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 144, i32 14 }
@___asan_gen_.584 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 402, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 404, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 406, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 409, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 410, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 411, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 414, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 416, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 418, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 420, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 423, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 425, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 427, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 430, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [13 x i8] c"ng_type_enum\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 273, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 431, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 432, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 433, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant [18 x i8] c"ng_threshold_enum\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 258, i32 8 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 434, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [14 x i8] c"ng_delay_enum\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 265, i32 8 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 436, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 438, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 439, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 440, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 441, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 442, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 444, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 445, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 446, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 448, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 449, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 450, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 451, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 453, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 454, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 456, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 457, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 459, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 460, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [17 x i8] c"hp_gain_num_text\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 192, i32 27 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 193, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 193, i32 12 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 193, i32 22 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 193, i32 32 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 194, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 194, i32 12 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 194, i32 22 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 194, i32 31 }
@___asan_gen_.766 = private unnamed_addr constant [20 x i8] c"mic_bias_level_text\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 167, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 168, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 168, i32 13 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 168, i32 24 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 169, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 169, i32 13 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 169, i32 25 }
@___asan_gen_.787 = private unnamed_addr constant [17 x i8] c"beep_config_text\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 229, i32 27 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 230, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 230, i32 9 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 230, i32 19 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 230, i32 31 }
@___asan_gen_.802 = private unnamed_addr constant [16 x i8] c"beep_pitch_text\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 201, i32 27 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 8 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 14 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 20 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 26 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 32 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 202, i32 44 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 8 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 14 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 20 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 26 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 32 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 38 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 203, i32 44 }
@___asan_gen_.853 = private unnamed_addr constant [17 x i8] c"beep_ontime_text\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 210, i32 27 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 211, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 211, i32 11 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 211, i32 21 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 211, i32 31 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 211, i32 41 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 212, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 212, i32 12 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 212, i32 22 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 212, i32 32 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 212, i32 42 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 213, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 213, i32 12 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 213, i32 22 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 213, i32 32 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 213, i32 42 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 213, i32 52 }
@___asan_gen_.904 = private unnamed_addr constant [18 x i8] c"beep_offtime_text\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 220, i32 27 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 221, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 221, i32 12 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 221, i32 22 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 222, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 222, i32 12 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 222, i32 22 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 222, i32 32 }
@___asan_gen_.928 = private unnamed_addr constant [17 x i8] c"beep_treble_text\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 245, i32 27 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 246, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 246, i32 11 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 246, i32 20 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 246, i32 30 }
@___asan_gen_.943 = private unnamed_addr constant [15 x i8] c"beep_bass_text\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 237, i32 27 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 238, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 238, i32 11 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 238, i32 21 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 238, i32 31 }
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c"cs42l52_ng_type_text\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 269, i32 27 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 270, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 270, i32 20 }
@___asan_gen_.967 = private unnamed_addr constant [18 x i8] c"ng_threshold_text\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 253, i32 27 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 254, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 254, i32 11 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 254, i32 20 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 254, i32 29 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 255, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 255, i32 11 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 255, i32 20 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 255, i32 29 }
@___asan_gen_.994 = private unnamed_addr constant [22 x i8] c"cs42l52_ng_delay_text\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 262, i32 27 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 263, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 263, i32 10 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 263, i32 19 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 263, i32 28 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 490, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 491, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 492, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 493, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 494, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 495, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 496, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 497, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 498, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 499, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 500, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 502, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 504, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 507, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 508, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 509, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 510, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 512, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant [9 x i8] c"adca_mux\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 161, i32 38 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 513, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant [9 x i8] c"adcb_mux\00", align 1
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 164, i32 38 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 515, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant [11 x i8] c"adca_mixer\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 291, i32 38 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 517, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant [11 x i8] c"adcb_mixer\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 309, i32 38 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 520, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant [19 x i8] c"digital_output_mux\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 189, i32 38 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 523, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 524, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 526, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 527, i32 2 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 529, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 531, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 534, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 535, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 537, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant [14 x i8] c"passthrul_ctl\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 322, i32 38 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 539, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant [14 x i8] c"passthrur_ctl\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 325, i32 38 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 542, i32 2 }
@___asan_gen_.1129 = private unnamed_addr constant [11 x i8] c"pcma_mixer\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 300, i32 38 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 544, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant [11 x i8] c"pcmb_mixer\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 318, i32 38 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 547, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant [8 x i8] c"hpl_ctl\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 334, i32 38 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 548, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant [8 x i8] c"hpr_ctl\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 337, i32 38 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 550, i32 2 }
@___asan_gen_.1153 = private unnamed_addr constant [9 x i8] c"spkl_ctl\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 328, i32 38 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 551, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant [9 x i8] c"spkr_ctl\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 331, i32 38 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 553, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 554, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 555, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 556, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant [21 x i8] c"cs42l52_dapm_widgets\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 488, i32 41 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 162, i32 2 }
@___asan_gen_.1180 = private unnamed_addr constant [10 x i8] c"adca_enum\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 155, i32 8 }
@___asan_gen_.1183 = private unnamed_addr constant [18 x i8] c"cs42l52_adca_text\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 149, i32 27 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 150, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 150, i32 13 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 150, i32 24 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 150, i32 35 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 150, i32 46 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 165, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant [10 x i8] c"adcb_enum\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 158, i32 8 }
@___asan_gen_.1207 = private unnamed_addr constant [18 x i8] c"cs42l52_adcb_text\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 152, i32 27 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 153, i32 2 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 153, i32 13 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 153, i32 24 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 153, i32 35 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 153, i32 46 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 292, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant [15 x i8] c"adca_swap_enum\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 285, i32 30 }
@___asan_gen_.1231 = private unnamed_addr constant [15 x i8] c"left_swap_text\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 277, i32 27 }
@___asan_gen_.1234 = private unnamed_addr constant [12 x i8] c"swap_values\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 283, i32 27 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 278, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 278, i32 10 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 278, i32 18 }
@___asan_gen_.1246 = private unnamed_addr constant [15 x i8] c"adcb_swap_enum\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 303, i32 30 }
@___asan_gen_.1249 = private unnamed_addr constant [16 x i8] c"right_swap_text\00", align 1
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 280, i32 27 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 190, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant [24 x i8] c"digital_output_mux_enum\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 185, i32 8 }
@___asan_gen_.1258 = private unnamed_addr constant [24 x i8] c"digital_output_mux_text\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 183, i32 27 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 183, i32 56 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 183, i32 63 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 323, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant [15 x i8] c"pcma_swap_enum\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 294, i32 30 }
@___asan_gen_.1275 = private unnamed_addr constant [15 x i8] c"pcmb_swap_enum\00", align 1
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 312, i32 30 }
@___asan_gen_.1278 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 562, i32 3 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 617, i32 29 }
@___asan_gen_.1288 = private unnamed_addr constant [22 x i8] c"cs42l52_mica_controls\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 464, i32 38 }
@___asan_gen_.1291 = private unnamed_addr constant [22 x i8] c"cs42l52_micb_controls\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 468, i32 38 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 465, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant [10 x i8] c"mica_enum\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 177, i32 8 }
@___asan_gen_.1300 = private unnamed_addr constant [17 x i8] c"cs42l52_mic_text\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 175, i32 27 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 175, i32 50 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 175, i32 58 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 469, i32 2 }
@___asan_gen_.1312 = private unnamed_addr constant [10 x i8] c"micb_enum\00", align 1
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 180, i32 8 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 985, i32 3 }
@___asan_gen_.1324 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 989, i32 2 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 992, i32 24 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1005, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant [14 x i8] c"dev_attr_beep\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 1010, i32 3 }
@___asan_gen_.1348 = private unnamed_addr constant [11 x i8] c"beep_rates\00", align 1
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 893, i32 12 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 915, i32 3 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 922, i32 3 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 941, i32 2 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 976, i32 8 }
@___asan_gen_.1372 = private unnamed_addr constant [12 x i8] c"cs42l52_ops\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 866, i32 37 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 721, i32 3 }
@___asan_gen_.1384 = private unnamed_addr constant [14 x i8] c"clk_map_table\00", align 1
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 643, i32 38 }
@___asan_gen_.1387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1394 = private constant [30 x i8] c"../sound/soc/codecs/cs42l52.c\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1394, i32 824, i32 3 }
@llvm.compiler.used = appending global [415 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_cs42l52_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs42l52__297_1232_cs42l52_i2c_driver_init6, ptr @cs42l52_i2c_driver_exit, ptr @cs42l52_i2c_probe._entry, ptr @cs42l52_i2c_probe._entry.13, ptr @cs42l52_i2c_probe._entry.16, ptr @cs42l52_i2c_probe._entry.20, ptr @cs42l52_i2c_probe._entry.23, ptr @cs42l52_i2c_probe._entry.26, ptr @cs42l52_i2c_probe._entry_ptr, ptr @cs42l52_i2c_probe._entry_ptr.15, ptr @cs42l52_i2c_probe._entry_ptr.19, ptr @cs42l52_i2c_probe._entry_ptr.22, ptr @cs42l52_i2c_probe._entry_ptr.25, ptr @cs42l52_i2c_probe._entry_ptr.29, ptr @cs42l52_init_beep._entry, ptr @cs42l52_init_beep._entry.304, ptr @cs42l52_init_beep._entry.307, ptr @cs42l52_init_beep._entry_ptr, ptr @cs42l52_init_beep._entry_ptr.306, ptr @cs42l52_init_beep._entry_ptr.309, ptr @cs42l52_pcm_hw_params._entry, ptr @cs42l52_pcm_hw_params._entry_ptr, ptr @cs42l52_set_sysclk._entry, ptr @cs42l52_set_sysclk._entry_ptr, ptr @cs42l52_i2c_driver, ptr @.str, ptr @cs42l52_of_match, ptr @cs42l52_id, ptr @cs42l52_i2c_probe._key, ptr @cs42l52_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @cs42l52_threshold_patch, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @soc_component_dev_cs42l52, ptr @cs42l52_dai, ptr @cs42l52_reg_defaults, ptr @cs42l52_snd_controls, ptr @cs42l52_audio_map, ptr @.str.30, ptr @hl_tlv, ptr @.compoundliteral, ptr @.str.31, ptr @hpd_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @hp_gain_enum, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @pga_tlv, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @mic_tlv, ptr @.compoundliteral.41, ptr @.str.42, ptr @mic_bias_level_enum, ptr @.str.43, ptr @ipd_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @mix_tlv, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @beep_config_enum, ptr @.str.58, ptr @beep_pitch_enum, ptr @.str.59, ptr @beep_ontime_enum, ptr @.str.60, ptr @beep_offtime_enum, ptr @.str.61, ptr @beep_tlv, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @beep_treble_enum, ptr @.str.66, ptr @beep_bass_enum, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @limiter_tlv, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @ng_type_enum, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @ng_threshold_enum, ptr @.str.107, ptr @ng_delay_enum, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @hp_gain_num_text, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @mic_bias_level_text, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @beep_config_text, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @beep_pitch_text, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @beep_ontime_text, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @beep_offtime_text, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @beep_treble_text, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @beep_bass_text, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @cs42l52_ng_type_text, ptr @.str.211, ptr @.str.212, ptr @ng_threshold_text, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @cs42l52_ng_delay_text, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @adca_mux, ptr @.str.243, ptr @adcb_mux, ptr @.str.244, ptr @adca_mixer, ptr @.str.245, ptr @adcb_mixer, ptr @.str.246, ptr @digital_output_mux, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @passthrul_ctl, ptr @.str.256, ptr @passthrur_ctl, ptr @.str.257, ptr @pcma_mixer, ptr @.str.258, ptr @pcmb_mixer, ptr @.str.259, ptr @hpl_ctl, ptr @.str.260, ptr @hpr_ctl, ptr @.str.261, ptr @spkl_ctl, ptr @.str.262, ptr @spkr_ctl, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @cs42l52_dapm_widgets, ptr @.str.268, ptr @adca_enum, ptr @cs42l52_adca_text, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @adcb_enum, ptr @cs42l52_adcb_text, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @adca_swap_enum, ptr @left_swap_text, ptr @swap_values, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @adcb_swap_enum, ptr @right_swap_text, ptr @.str.284, ptr @digital_output_mux_enum, ptr @digital_output_mux_text, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.compoundliteral.289, ptr @pcma_swap_enum, ptr @pcmb_swap_enum, ptr @.compoundliteral.290, ptr @.compoundliteral.291, ptr @.compoundliteral.292, ptr @.compoundliteral.293, ptr @.str.294, ptr @.str.295, ptr @cs42l52_mica_controls, ptr @cs42l52_micb_controls, ptr @.str.296, ptr @mica_enum, ptr @cs42l52_mic_text, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @micb_enum, ptr @.str.300, ptr @.str.301, ptr @cs42l52_init_beep.__key, ptr @.str.302, ptr @.str.303, ptr @.str.305, ptr @dev_attr_beep, ptr @.str.308, ptr @beep_rates, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @cs42l52_ops, ptr @.str.317, ptr @.str.318, ptr @clk_map_table, ptr @.str.319, ptr @.str.320], section "llvm.metadata"
@0 = internal global [396 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_threshold_patch to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs42l52 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_reg_defaults to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_snd_controls to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_audio_map to i32), i32 2808, i32 3488, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_gain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_bias_level_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipd_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mix_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_config_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_pitch_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_ontime_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_offtime_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_treble_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_bass_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limiter_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ng_type_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ng_threshold_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ng_delay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_gain_num_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_bias_level_text to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_config_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_pitch_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_ontime_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_offtime_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_treble_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_bass_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_ng_type_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ng_threshold_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_ng_delay_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adca_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcb_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adca_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcb_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_output_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @passthrul_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @passthrur_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcma_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmb_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpl_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpr_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkl_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkr_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_dapm_widgets to i32), i32 7560, i32 9472, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adca_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_adca_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcb_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_adcb_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adca_swap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_swap_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcb_swap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_swap_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_output_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_output_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcma_swap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmb_swap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_mica_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_micb_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mica_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_mic_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micb_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_init_beep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_init_beep.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_init_beep._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_init_beep._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_rates to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_map_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l52_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs42l52_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs42l52_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cs42l52_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !683
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #7
  %3 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val32, align 4, !annotation !683
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev4, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs42l52_regmap, ptr noundef nonnull @cs42l52_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %6) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %pdata14 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %pdata14, ptr %1, i32 16)
  br label %if.end50

if.else:                                          ; preds = %if.end12
  %call.i218 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i218, null
  br i1 %tobool17.not, label %if.else.cleanup_crit_edge, label %if.end19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.else
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end19.if.end48_crit_edge, label %if.then22

if.end19.if.end48_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then22:                                        ; preds = %if.end19
  %call.i219 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i219, null
  br i1 %tobool.i.not, label %if.then22.if.end27_crit_edge, label %if.then26

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %mica_diff_cfg = getelementptr inbounds %struct.cs42l52_platform_data, ptr %call.i218, i32 0, i32 1
  %10 = ptrtoint ptr %mica_diff_cfg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mica_diff_cfg, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then22.if.end27_crit_edge
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i220 = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool.i221.not = icmp eq ptr %call.i220, null
  br i1 %tobool.i221.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %micb_diff_cfg = getelementptr inbounds %struct.cs42l52_platform_data, ptr %call.i218, i32 0, i32 2
  %13 = ptrtoint ptr %micb_diff_cfg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %micb_diff_cfg, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull %val32, i32 noundef 1, i32 noundef 0) #7
  %16 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp36 = icmp sgt i32 %16, -1
  br i1 %cmp36, label %if.then37, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val32, align 4
  %19 = ptrtoint ptr %call.i218 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call.i218, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32.if.end38_crit_edge
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i.i222 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef nonnull %val32, i32 noundef 1, i32 noundef 0) #7
  %22 = call i32 @llvm.smin.i32(i32 %call.i.i222, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp42 = icmp sgt i32 %22, -1
  br i1 %cmp42, label %if.then43, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val32, align 4
  %chgfreq = getelementptr inbounds %struct.cs42l52_platform_data, ptr %call.i218, i32 0, i32 3
  %25 = ptrtoint ptr %chgfreq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %chgfreq, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end38.if.end44_crit_edge
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i223 = call i32 @of_get_named_gpio_flags(ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null) #7
  %reset_gpio = getelementptr inbounds %struct.cs42l52_platform_data, ptr %call.i218, i32 0, i32 4
  %28 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i223, ptr %reset_gpio, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.end19.if.end48_crit_edge
  %pdata49 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4
  %29 = call ptr @memcpy(ptr %pdata49, ptr %call.i218, i32 16)
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.then13
  %pdata51 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4
  %reset_gpio52 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %reset_gpio52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reset_gpio52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool53.not = icmp eq i32 %31, 0
  br i1 %tobool53.not, label %if.end50.if.end72_crit_edge, label %if.then54

if.end50.if.end72_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then54:                                        ; preds = %if.end50
  %call58 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %31, i32 noundef 2, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  %32 = ptrtoint ptr %reset_gpio52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reset_gpio52, align 4
  br i1 %cmp59, label %do.end63, label %if.end67

do.end63:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %33, i32 noundef %call58) #10
  br label %cleanup

if.end67:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %call.i224 = call ptr @gpio_to_desc(i32 noundef %33) #7
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i224, i32 noundef 0) #7
  %call.i225 = call ptr @gpio_to_desc(i32 noundef %33) #7
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i225, i32 noundef 1) #7
  br label %if.end72

if.end72:                                         ; preds = %if.end67, %if.end50.if.end72_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call74 = call i32 @regmap_register_patch(ptr noundef %36, ptr noundef nonnull @cs42l52_threshold_patch, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end72.if.end81_crit_edge, label %do.end79

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.17, i32 noundef %call74) #10
  br label %if.end81

if.end81:                                         ; preds = %do.end79, %if.end72.if.end81_crit_edge
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call83 = call i32 @regmap_read(ptr noundef %40, i32 noundef 1, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call83) #10
  br label %cleanup

if.end90:                                         ; preds = %if.end81
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg, align 4
  %and = and i32 %42, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and)
  %cmp91.not = icmp eq i32 %and, 224
  br i1 %cmp91.not, label %do.end100, label %if.then92

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %and, i32 noundef 224) #10
  br label %cleanup

do.end100:                                        ; preds = %if.end90
  %and102 = and i32 %42, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %and102) #10
  %mica_diff_cfg104 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %mica_diff_cfg104 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mica_diff_cfg104, align 4, !range !684
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool105.not = icmp eq i8 %44, 0
  br i1 %tobool105.not, label %do.end100.if.end112_crit_edge, label %if.then106

do.end100.if.end112_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then106:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call.i226 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 16, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %do.end100.if.end112_crit_edge
  %micb_diff_cfg114 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %micb_diff_cfg114 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %micb_diff_cfg114, align 1, !range !684
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool115.not = icmp eq i8 %48, 0
  br i1 %tobool115.not, label %if.end112.if.end124_crit_edge, label %if.then116

if.end112.if.end124_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %call.i227 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 17, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %if.end112.if.end124_crit_edge
  %chgfreq126 = getelementptr inbounds %struct.cs42l52_private, ptr %call.i, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %chgfreq126 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chgfreq126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool127.not = icmp eq i32 %52, 0
  br i1 %tobool127.not, label %if.end124.if.end134_crit_edge, label %if.then128

if.end124.if.end134_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %shl132 = shl i32 %52, 4
  %call.i228 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 52, i32 noundef 240, i32 noundef %shl132, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end124.if.end134_crit_edge
  %55 = ptrtoint ptr %pdata51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pdata51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool137.not = icmp eq i32 %56, 0
  br i1 %tobool137.not, label %if.end134.if.end143_crit_edge, label %if.then138

if.end134.if.end143_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call.i229 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 7, i32 noundef 7, i32 noundef %56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end134.if.end143_crit_edge
  %call145 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_cs42l52, ptr noundef nonnull @cs42l52_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.then92, %do.end88, %do.end63, %if.else.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %call58, %do.end63 ], [ %call83, %do.end88 ], [ -19, %if.then92 ], [ %call145, %if.end143 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l52_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 52
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l52_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 7, label %entry.return_crit_edge
    i32 46, label %entry.return_crit_edge1
    i32 48, label %entry.return_crit_edge2
    i32 49, label %entry.return_crit_edge3
    i32 52, label %entry.return_crit_edge4
  ]

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %mica_diff_cfg.i = getelementptr inbounds %struct.cs42l52_private, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %mica_diff_cfg.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mica_diff_cfg.i, align 4, !range !684
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @cs42l52_mica_controls, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %micb_diff_cfg.i = getelementptr inbounds %struct.cs42l52_private, ptr %9, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %micb_diff_cfg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %micb_diff_cfg.i, align 1, !range !684
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.cs42l52_add_mic_controls.exit_crit_edge

if.end.i.cs42l52_add_mic_controls.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs42l52_add_mic_controls.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @cs42l52_micb_controls, i32 noundef 1) #7
  br label %cs42l52_add_mic_controls.exit

cs42l52_add_mic_controls.exit:                    ; preds = %if.then4.i, %if.end.i.cs42l52_add_mic_controls.exit_crit_edge
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i7 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i7, align 4
  %call1.i = tail call ptr @devm_input_allocate_device(ptr noundef %15) #7
  %beep.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %beep.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i, ptr %beep.i, align 4
  %tobool.not.i8 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i8, label %do.end.i, label %do.body4.i

do.end.i:                                         ; preds = %cs42l52_add_mic_controls.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.300) #10
  br label %cs42l52_init_beep.exit

do.body4.i:                                       ; preds = %cs42l52_add_mic_controls.exit
  %beep_work.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 10
  tail call void @__init_work(ptr noundef %beep_work.i, i32 noundef 0) #7
  %21 = ptrtoint ptr %beep_work.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %beep_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.302, ptr noundef nonnull @cs42l52_init_beep.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry8.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 10, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cs42l52_beep_work, ptr %func.i, align 4
  %beep_rate.i = getelementptr inbounds %struct.cs42l52_private, ptr %17, i32 0, i32 11
  %25 = ptrtoint ptr %beep_rate.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %beep_rate.i, align 4
  %26 = ptrtoint ptr %beep.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %beep.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.303, ptr %27, align 8
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body4.i.dev_name.exit.i_crit_edge

do.body4.i.dev_name.exit.i_crit_edge:             ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.body4.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %do.body4.i.dev_name.exit.i_crit_edge ]
  %35 = ptrtoint ptr %beep.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %beep.i, align 4
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i.i, ptr %phys.i, align 4
  %38 = load ptr, ptr %beep.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 24, ptr %id.i, align 4
  %40 = load ptr, ptr %beep.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 262144, ptr %evbit.i, align 8
  %42 = load ptr, ptr %beep.i, align 4
  %sndbit.i = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %sndbit.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %sndbit.i, align 8
  %44 = load ptr, ptr %beep.i, align 4
  %event.i = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 34
  %45 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @cs42l52_beep_event, ptr %event.i, align 4
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = load ptr, ptr %beep.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 40, i32 1
  %49 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %parent.i, align 8
  %50 = load ptr, ptr %beep.i, align 4
  %driver_data.i.i71.i = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 40, i32 8
  %51 = ptrtoint ptr %driver_data.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %component, ptr %driver_data.i.i71.i, align 4
  %52 = load ptr, ptr %beep.i, align 4
  %call26.i = tail call i32 @input_register_device(ptr noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp.not.i = icmp eq i32 %call26.i, 0
  br i1 %cmp.not.i, label %dev_name.exit.i.if.end33.i_crit_edge, label %if.then27.i

dev_name.exit.i.if.end33.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then27.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %beep.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %beep.i, align 4
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.305) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %dev_name.exit.i.if.end33.i_crit_edge
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %call35.i = tail call i32 @device_create_file(ptr noundef %57, ptr noundef nonnull @dev_attr_beep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.not.i, label %if.end33.i.cs42l52_init_beep.exit_crit_edge, label %do.end40.i

if.end33.i.cs42l52_init_beep.exit_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs42l52_init_beep.exit

do.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.308, i32 noundef %call35.i) #10
  br label %cs42l52_init_beep.exit

cs42l52_init_beep.exit:                           ; preds = %do.end40.i, %if.end33.i.cs42l52_init_beep.exit_crit_edge, %do.end.i
  %sysclk = getelementptr inbounds %struct.cs42l52_private, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 12000000, ptr %sysclk, align 4
  %format = getelementptr inbounds %struct.cs42l52_private, ptr %3, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %format, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs42l52_remove(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_beep) #7
  %beep_work.i = getelementptr inbounds %struct.cs42l52_private, ptr %3, i32 0, i32 10
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %beep_work.i) #7
  %beep.i = getelementptr inbounds %struct.cs42l52_private, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %beep.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %beep.i, align 4
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 30, i32 noundef 63, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb7
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb2.if.end_crit_edge

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2.if.end_crit_edge
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef 159) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef 159) #7
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext true) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #1

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
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs42l52_beep_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %beep_rate = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %beep_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body29, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best.073 = phi i32 [ %best.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr @beep_rates, i32 0, i32 %i.074
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %arrayidx8 = getelementptr [16 x i32], ptr @beep_rates, i32 0, i32 %best.073
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8, align 4
  %sub9 = sub i32 %3, %8
  %9 = tail call i32 @llvm.abs.i32(i32 %sub9, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp17 = icmp slt i32 %6, %9
  %best.1 = select i1 %cmp17, i32 %i.074, i32 %best.073
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l52_beep_work.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l52_beep_work, %if.then24)) #7
          to label %do.end [label %if.then24], !srcloc !685

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %arrayidx25 = getelementptr [16 x i32], ptr @beep_rates, i32 0, i32 %best.1
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx25, align 4
  %14 = ptrtoint ptr %beep_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %beep_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l52_beep_work.__UNIQUE_ID_ddebug294, ptr noundef %11, ptr noundef nonnull @.str.312, i32 noundef %13, i32 noundef %15) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %shl = shl i32 %best.1, 4
  %call28 = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.235) #7
  br label %if.end47

do.body29:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l52_beep_work.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l52_beep_work, %if.then41)) #7
          to label %do.end45 [label %if.then41], !srcloc !685

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l52_beep_work.__UNIQUE_ID_ddebug295, ptr noundef %17, ptr noundef nonnull @.str.313) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %call46 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.235) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %do.end
  %val.0 = phi i32 [ %shl, %do.end ], [ 0, %do.end45 ]
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 15, i32 noundef %val.0) #7
  %call49 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_beep_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %hz) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i16 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l52_beep_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l52_beep_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !685

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l52_beep_event.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.315, i32 noundef %code, i32 noundef %hz) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %code, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz)
  %tobool6.not = icmp eq i32 %hz, 0
  %spec.store.select = select i1 %tobool6.not, i32 0, i32 261
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %hz.addr.0 = phi i32 [ %hz, %do.end.sw.epilog_crit_edge ], [ %spec.store.select, %sw.bb ]
  %beep_rate = getelementptr inbounds %struct.cs42l52_private, ptr %5, i32 0, i32 11
  %9 = ptrtoint ptr %beep_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %hz.addr.0, ptr %beep_rate, align 4
  %beep_work = getelementptr inbounds %struct.cs42l52_private, ptr %5, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %beep_work) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #7
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %time, align 4, !annotation !683
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %time) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %beep = getelementptr inbounds %struct.cs42l52_private, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %beep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %beep, align 4
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time, align 4
  call void @input_event(ptr noundef %4, i32 noundef 18, i32 noundef 2, i32 noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_set_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = add i32 %freq, -11000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000001, i32 %4)
  %5 = icmp ult i32 %4, 16000001
  br i1 %5, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.cs42l52_private, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.317) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.323)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %iface.0 = phi i8 [ 0, %sw.bb2 ], [ -128, %entry.sw.epilog_crit_edge ]
  %and3 = and i32 %fmt, 15
  %8 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %and3, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.epilog.sw.epilog19_crit_edge
    i32 4, label %sw.bb14
    i32 5, label %sw.epilog.sw.epilog19_crit_edge47
  ]

sw.epilog.sw.epilog19_crit_edge47:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.epilog.sw.epilog19_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i8 %iface.0, 36
  br label %sw.epilog19

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i8 %iface.0, 8
  br label %sw.epilog19

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i8 %iface.0, 16
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb14, %sw.bb6, %sw.bb4, %sw.epilog.sw.epilog19_crit_edge, %sw.epilog.sw.epilog19_crit_edge47
  %iface.1 = phi i8 [ %iface.0, %sw.epilog.sw.epilog19_crit_edge ], [ %11, %sw.bb14 ], [ %10, %sw.bb6 ], [ %9, %sw.bb4 ], [ %iface.0, %sw.epilog.sw.epilog19_crit_edge47 ]
  %and20 = lshr i32 %fmt, 8
  %12 = and i32 %and20, 15
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %12, label %sw.epilog19.cleanup_crit_edge [
    i32 0, label %sw.epilog19.sw.epilog30_crit_edge
    i32 4, label %sw.bb21
    i32 3, label %sw.bb25
    i32 2, label %sw.epilog19.sw.epilog30_crit_edge48
  ]

sw.epilog19.sw.epilog30_crit_edge48:              ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog30

sw.epilog19.sw.epilog30_crit_edge:                ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog30

sw.epilog19.cleanup_crit_edge:                    ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb21:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %iface.1, 64
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i8 %iface.1, 64
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb25, %sw.bb21, %sw.epilog19.sw.epilog30_crit_edge, %sw.epilog19.sw.epilog30_crit_edge48
  %iface.2 = phi i8 [ %15, %sw.bb25 ], [ %14, %sw.bb21 ], [ %iface.1, %sw.epilog19.sw.epilog30_crit_edge ], [ %iface.1, %sw.epilog19.sw.epilog30_crit_edge48 ]
  %format = getelementptr inbounds %struct.cs42l52_private, ptr %5, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %iface.2, ptr %format, align 1
  %conv33 = zext i8 %iface.2 to i32
  %call34 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %conv33) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %sw.epilog19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog30 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 13, i32 noundef 3, i32 noundef %.) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l52_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %sysclk = getelementptr inbounds %struct.cs42l52_private, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.032.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.031.i = phi i32 [ -22, %entry ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mclk2.030.i = phi i32 [ 0, %entry ], [ %mclk2.1.i, %for.inc.i.for.body.i_crit_edge ]
  %rate1.i = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %i.032.i, i32 1
  %10 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.i = icmp eq i32 %11, %9
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %i.032.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %7, %13
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  %sub8.i = sub i32 %7, %mclk2.030.i
  %15 = tail call i32 @llvm.abs.i32(i32 %sub8.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp16.i = icmp slt i32 %14, %15
  %spec.select.i = select i1 %cmp16.i, i32 %13, i32 %mclk2.030.i
  %spec.select29.i = select i1 %cmp16.i, i32 %i.032.i, i32 %ret.031.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %mclk2.1.i = phi i32 [ %mclk2.030.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %ret.1.i = phi i32 [ %ret.031.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select29.i, %if.then.i ]
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cs42l52_get_clk.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cs42l52_get_clk.exit:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.i)
  %cmp = icmp sgt i32 %ret.1.i, -1
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %cs42l52_get_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %ret.1.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sysclk, align 4
  %speed = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %ret.1.i, i32 2
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %speed, align 4
  %conv = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv, 5
  %group = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %ret.1.i, i32 3
  %21 = ptrtoint ptr %group to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %group, align 1
  %conv7 = zext i8 %22 to i32
  %shl8 = shl nuw nsw i32 %conv7, 4
  %or = or i32 %shl8, %shl
  %videoclk = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %ret.1.i, i32 4
  %23 = ptrtoint ptr %videoclk to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %videoclk, align 2
  %conv10 = zext i8 %24 to i32
  %shl11 = shl nuw nsw i32 %conv10, 3
  %or12 = or i32 %or, %shl11
  %ratio = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %ret.1.i, i32 5
  %25 = ptrtoint ptr %ratio to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ratio, align 1
  %conv14 = zext i8 %26 to i32
  %shl15 = shl nuw nsw i32 %conv14, 1
  %or16 = or i32 %or12, %shl15
  %mclkdiv2 = getelementptr [32 x %struct.cs42l52_clk_para], ptr @clk_map_table, i32 0, i32 %ret.1.i, i32 6
  %27 = ptrtoint ptr %mclkdiv2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mclkdiv2, align 4
  %conv18 = zext i8 %28 to i32
  %or19 = or i32 %or16, %conv18
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %or19) #7
  br label %cleanup

do.end:                                           ; preds = %cs42l52_get_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.319) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 396)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 396)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !622, !623, !624, !626, !627, !629, !631, !632, !633, !635, !636, !637, !639, !640, !641, !642, !644, !645, !647, !649, !650, !651, !653, !654, !656, !658, !660, !661, !662, !663, !665, !666, !667, !668, !670, !672}
!llvm.module.flags = !{!674, !675, !676, !677, !678, !679, !680, !681}
!llvm.ident = !{!682}

!0 = !{ptr @__initcall__kmod_snd_soc_cs42l52__297_1232_cs42l52_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs42l52__297_1232_cs42l52_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs42l52.c", i32 1232, i32 1}
!2 = !{ptr @__exitcall_cs42l52_i2c_driver_exit, !1, !"__exitcall_cs42l52_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs42l52.c", i32 1234, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs42l52.c", i32 1235, i32 1}
!7 = !{ptr @__UNIQUE_ID_author300, !8, !"__UNIQUE_ID_author300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs42l52.c", i32 1236, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/cs42l52.c", i32 1237, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs42l52.c", i32 1225, i32 11}
!14 = !{ptr @cs42l52_i2c_driver, !15, !"cs42l52_i2c_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs42l52.c", i32 1223, i32 26}
!16 = !{ptr @cs42l52_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/cs42l52.c", i32 1104, i32 20}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/cs42l52.c", i32 1107, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cs42l52_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @cs42l52_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/cs42l52.c", i32 1120, i32 5}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/cs42l52.c", i32 1124, i32 5}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/cs42l52.c", i32 1128, i32 5}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/cs42l52.c", i32 1132, i32 5}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs42l52.c", i32 1137, i32 7}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/cs42l52.c", i32 1146, i32 10}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs42l52.c", i32 1148, i32 4}
!41 = !{ptr @cs42l52_i2c_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cs42l52_i2c_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cs42l52.c", i32 1161, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cs42l52_i2c_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cs42l52_i2c_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cs42l52.c", i32 1166, i32 3}
!50 = !{ptr @cs42l52_i2c_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cs42l52_i2c_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/cs42l52.c", i32 1173, i32 3}
!54 = !{ptr @cs42l52_i2c_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cs42l52_i2c_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cs42l52.c", i32 1179, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cs42l52_i2c_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @cs42l52_i2c_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @cs42l52_regmap, !62, !"cs42l52_regmap", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/cs42l52.c", i32 1077, i32 35}
!63 = !{ptr @cs42l52_reg_defaults, !64, !"cs42l52_reg_defaults", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/cs42l52.c", i32 54, i32 33}
!65 = !{ptr @cs42l52_threshold_patch, !66, !"cs42l52_threshold_patch", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/cs42l52.c", i32 1066, i32 34}
!67 = !{ptr @soc_component_dev_cs42l52, !68, !"soc_component_dev_cs42l52", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/cs42l52.c", i32 1048, i32 46}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/cs42l52.c", i32 342, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/cs42l52.c", i32 345, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/cs42l52.c", i32 348, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/cs42l52.c", i32 350, i32 2}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/cs42l52.c", i32 353, i32 2}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/cs42l52.c", i32 356, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/cs42l52.c", i32 358, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/cs42l52.c", i32 361, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/cs42l52.c", i32 363, i32 2}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/cs42l52.c", i32 365, i32 2}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/cs42l52.c", i32 369, i32 2}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/cs42l52.c", i32 371, i32 2}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/cs42l52.c", i32 374, i32 2}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/cs42l52.c", i32 377, i32 2}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/cs42l52.c", i32 380, i32 2}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/cs42l52.c", i32 383, i32 2}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/cs42l52.c", i32 384, i32 2}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/cs42l52.c", i32 385, i32 2}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/cs42l52.c", i32 386, i32 2}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/cs42l52.c", i32 387, i32 2}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/cs42l52.c", i32 389, i32 2}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/cs42l52.c", i32 390, i32 2}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cs42l52.c", i32 391, i32 2}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/cs42l52.c", i32 393, i32 2}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs42l52.c", i32 394, i32 2}
!119 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/cs42l52.c", i32 396, i32 2}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/cs42l52.c", i32 400, i32 2}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/cs42l52.c", i32 402, i32 2}
!125 = !{ptr @.str.77, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/cs42l52.c", i32 404, i32 2}
!127 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/cs42l52.c", i32 406, i32 2}
!129 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/cs42l52.c", i32 409, i32 2}
!131 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/cs42l52.c", i32 410, i32 2}
!133 = !{ptr @.str.85, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/cs42l52.c", i32 411, i32 2}
!135 = !{ptr @.str.87, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs42l52.c", i32 414, i32 2}
!137 = !{ptr @.str.89, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cs42l52.c", i32 416, i32 2}
!139 = !{ptr @.str.91, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/cs42l52.c", i32 418, i32 2}
!141 = !{ptr @.str.93, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/cs42l52.c", i32 420, i32 2}
!143 = !{ptr @.str.95, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/cs42l52.c", i32 423, i32 2}
!145 = !{ptr @.str.97, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/cs42l52.c", i32 425, i32 2}
!147 = !{ptr @.str.99, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cs42l52.c", i32 427, i32 2}
!149 = !{ptr @.str.101, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/cs42l52.c", i32 430, i32 2}
!151 = !{ptr @.str.102, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/cs42l52.c", i32 431, i32 2}
!153 = !{ptr @.str.104, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cs42l52.c", i32 432, i32 2}
!155 = !{ptr @.str.106, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cs42l52.c", i32 433, i32 2}
!157 = !{ptr @.str.107, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/cs42l52.c", i32 434, i32 2}
!159 = !{ptr @.str.108, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cs42l52.c", i32 436, i32 2}
!161 = !{ptr @.str.110, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs42l52.c", i32 438, i32 2}
!163 = !{ptr @.str.112, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/cs42l52.c", i32 439, i32 2}
!165 = !{ptr @.str.114, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs42l52.c", i32 440, i32 2}
!167 = !{ptr @.str.116, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cs42l52.c", i32 441, i32 2}
!169 = !{ptr @.str.118, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/cs42l52.c", i32 442, i32 2}
!171 = !{ptr @.str.120, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/cs42l52.c", i32 444, i32 2}
!173 = !{ptr @.str.122, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cs42l52.c", i32 445, i32 2}
!175 = !{ptr @.str.124, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cs42l52.c", i32 446, i32 2}
!177 = !{ptr @.str.126, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs42l52.c", i32 448, i32 2}
!179 = !{ptr @.str.128, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/cs42l52.c", i32 449, i32 2}
!181 = !{ptr @.str.130, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/cs42l52.c", i32 450, i32 2}
!183 = !{ptr @.str.132, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cs42l52.c", i32 451, i32 2}
!185 = !{ptr @.str.134, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cs42l52.c", i32 453, i32 2}
!187 = !{ptr @.str.136, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cs42l52.c", i32 454, i32 2}
!189 = !{ptr @.str.138, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/cs42l52.c", i32 456, i32 2}
!191 = !{ptr @.str.140, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/cs42l52.c", i32 457, i32 2}
!193 = !{ptr @.str.142, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/cs42l52.c", i32 459, i32 2}
!195 = !{ptr @.str.144, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cs42l52.c", i32 460, i32 2}
!197 = !{ptr @cs42l52_snd_controls, !198, !"cs42l52_snd_controls", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cs42l52.c", i32 340, i32 38}
!199 = !{ptr @hl_tlv, !200, !"hl_tlv", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cs42l52.c", i32 130, i32 8}
!201 = !{ptr @hpd_tlv, !202, !"hpd_tlv", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/cs42l52.c", i32 132, i32 8}
!203 = !{ptr @hp_gain_enum, !204, !"hp_gain_enum", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cs42l52.c", i32 197, i32 8}
!205 = !{ptr @.str.146, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/cs42l52.c", i32 193, i32 2}
!207 = !{ptr @.str.147, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/cs42l52.c", i32 193, i32 12}
!209 = !{ptr @.str.148, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cs42l52.c", i32 193, i32 22}
!211 = !{ptr @.str.149, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs42l52.c", i32 193, i32 32}
!213 = !{ptr @.str.150, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs42l52.c", i32 194, i32 2}
!215 = !{ptr @.str.151, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cs42l52.c", i32 194, i32 12}
!217 = !{ptr @.str.152, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cs42l52.c", i32 194, i32 22}
!219 = !{ptr @.str.153, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs42l52.c", i32 194, i32 31}
!221 = !{ptr @hp_gain_num_text, !222, !"hp_gain_num_text", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs42l52.c", i32 192, i32 27}
!223 = !{ptr @pga_tlv, !224, !"pga_tlv", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cs42l52.c", i32 138, i32 8}
!225 = !{ptr @mic_tlv, !226, !"mic_tlv", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs42l52.c", i32 136, i32 8}
!227 = !{ptr @mic_bias_level_enum, !228, !"mic_bias_level_enum", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs42l52.c", i32 172, i32 8}
!229 = !{ptr @.str.154, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs42l52.c", i32 168, i32 2}
!231 = !{ptr @.str.155, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs42l52.c", i32 168, i32 13}
!233 = !{ptr @.str.156, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cs42l52.c", i32 168, i32 24}
!235 = !{ptr @.str.157, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs42l52.c", i32 169, i32 2}
!237 = !{ptr @.str.158, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cs42l52.c", i32 169, i32 13}
!239 = !{ptr @.str.159, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cs42l52.c", i32 169, i32 25}
!241 = !{ptr @mic_bias_level_text, !242, !"mic_bias_level_text", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cs42l52.c", i32 167, i32 27}
!243 = !{ptr @ipd_tlv, !244, !"ipd_tlv", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs42l52.c", i32 134, i32 8}
!245 = !{ptr @mix_tlv, !246, !"mix_tlv", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs42l52.c", i32 140, i32 8}
!247 = !{ptr @beep_config_enum, !248, !"beep_config_enum", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs42l52.c", i32 233, i32 8}
!249 = !{ptr @.str.160, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs42l52.c", i32 230, i32 2}
!251 = !{ptr @.str.161, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs42l52.c", i32 230, i32 9}
!253 = !{ptr @.str.162, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cs42l52.c", i32 230, i32 19}
!255 = !{ptr @.str.163, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cs42l52.c", i32 230, i32 31}
!257 = !{ptr @beep_config_text, !258, !"beep_config_text", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cs42l52.c", i32 229, i32 27}
!259 = !{ptr @beep_pitch_enum, !260, !"beep_pitch_enum", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cs42l52.c", i32 206, i32 8}
!261 = !{ptr @.str.164, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 2}
!263 = !{ptr @.str.165, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 8}
!265 = !{ptr @.str.166, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 14}
!267 = !{ptr @.str.167, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 20}
!269 = !{ptr @.str.168, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 26}
!271 = !{ptr @.str.169, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 32}
!273 = !{ptr @.str.170, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 38}
!275 = !{ptr @.str.171, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/cs42l52.c", i32 202, i32 44}
!277 = !{ptr @.str.172, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 2}
!279 = !{ptr @.str.173, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 8}
!281 = !{ptr @.str.174, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 14}
!283 = !{ptr @.str.175, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 20}
!285 = !{ptr @.str.176, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 26}
!287 = !{ptr @.str.177, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 32}
!289 = !{ptr @.str.178, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 38}
!291 = !{ptr @.str.179, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/cs42l52.c", i32 203, i32 44}
!293 = !{ptr @beep_pitch_text, !294, !"beep_pitch_text", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/cs42l52.c", i32 201, i32 27}
!295 = !{ptr @beep_ontime_enum, !296, !"beep_ontime_enum", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/cs42l52.c", i32 216, i32 8}
!297 = !{ptr @.str.180, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/cs42l52.c", i32 211, i32 2}
!299 = !{ptr @.str.181, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/cs42l52.c", i32 211, i32 11}
!301 = !{ptr @.str.182, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/cs42l52.c", i32 211, i32 21}
!303 = !{ptr @.str.183, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/cs42l52.c", i32 211, i32 31}
!305 = !{ptr @.str.184, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/cs42l52.c", i32 211, i32 41}
!307 = !{ptr @.str.185, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/cs42l52.c", i32 212, i32 2}
!309 = !{ptr @.str.186, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/cs42l52.c", i32 212, i32 12}
!311 = !{ptr @.str.187, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/cs42l52.c", i32 212, i32 22}
!313 = !{ptr @.str.188, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/cs42l52.c", i32 212, i32 32}
!315 = !{ptr @.str.189, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/cs42l52.c", i32 212, i32 42}
!317 = !{ptr @.str.190, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/cs42l52.c", i32 213, i32 2}
!319 = !{ptr @.str.191, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/cs42l52.c", i32 213, i32 12}
!321 = !{ptr @.str.192, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/cs42l52.c", i32 213, i32 22}
!323 = !{ptr @.str.193, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/cs42l52.c", i32 213, i32 32}
!325 = !{ptr @.str.194, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/cs42l52.c", i32 213, i32 42}
!327 = !{ptr @.str.195, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/cs42l52.c", i32 213, i32 52}
!329 = !{ptr @beep_ontime_text, !330, !"beep_ontime_text", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/cs42l52.c", i32 210, i32 27}
!331 = !{ptr @beep_offtime_enum, !332, !"beep_offtime_enum", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/cs42l52.c", i32 225, i32 8}
!333 = !{ptr @.str.196, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/cs42l52.c", i32 221, i32 2}
!335 = !{ptr @.str.197, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/cs42l52.c", i32 221, i32 12}
!337 = !{ptr @.str.198, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/cs42l52.c", i32 221, i32 22}
!339 = !{ptr @.str.199, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/cs42l52.c", i32 222, i32 2}
!341 = !{ptr @.str.200, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/cs42l52.c", i32 222, i32 12}
!343 = !{ptr @.str.201, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/cs42l52.c", i32 222, i32 22}
!345 = !{ptr @.str.202, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/cs42l52.c", i32 222, i32 32}
!347 = !{ptr @beep_offtime_text, !348, !"beep_offtime_text", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/cs42l52.c", i32 220, i32 27}
!349 = !{ptr @beep_tlv, !350, !"beep_tlv", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/cs42l52.c", i32 142, i32 8}
!351 = !{ptr @beep_treble_enum, !352, !"beep_treble_enum", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/cs42l52.c", i32 249, i32 8}
!353 = !{ptr @.str.203, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/cs42l52.c", i32 246, i32 2}
!355 = !{ptr @.str.204, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/cs42l52.c", i32 246, i32 11}
!357 = !{ptr @.str.205, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/cs42l52.c", i32 246, i32 20}
!359 = !{ptr @.str.206, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/cs42l52.c", i32 246, i32 30}
!361 = !{ptr @beep_treble_text, !362, !"beep_treble_text", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/cs42l52.c", i32 245, i32 27}
!363 = !{ptr @beep_bass_enum, !364, !"beep_bass_enum", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/cs42l52.c", i32 241, i32 8}
!365 = !{ptr @.str.207, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/cs42l52.c", i32 238, i32 2}
!367 = !{ptr @.str.208, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/cs42l52.c", i32 238, i32 11}
!369 = !{ptr @.str.209, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/cs42l52.c", i32 238, i32 21}
!371 = !{ptr @.str.210, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cs42l52.c", i32 238, i32 31}
!373 = !{ptr @beep_bass_text, !374, !"beep_bass_text", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/cs42l52.c", i32 237, i32 27}
!375 = !{ptr @limiter_tlv, !376, !"limiter_tlv", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/cs42l52.c", i32 144, i32 14}
!377 = !{ptr @ng_type_enum, !378, !"ng_type_enum", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/cs42l52.c", i32 273, i32 8}
!379 = !{ptr @.str.211, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/cs42l52.c", i32 270, i32 2}
!381 = !{ptr @.str.212, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/cs42l52.c", i32 270, i32 20}
!383 = !{ptr @cs42l52_ng_type_text, !384, !"cs42l52_ng_type_text", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/cs42l52.c", i32 269, i32 27}
!385 = !{ptr @ng_threshold_enum, !386, !"ng_threshold_enum", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/cs42l52.c", i32 258, i32 8}
!387 = !{ptr @.str.213, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/cs42l52.c", i32 254, i32 2}
!389 = !{ptr @.str.214, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/cs42l52.c", i32 254, i32 11}
!391 = !{ptr @.str.215, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/cs42l52.c", i32 254, i32 20}
!393 = !{ptr @.str.216, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/cs42l52.c", i32 254, i32 29}
!395 = !{ptr @.str.217, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/cs42l52.c", i32 255, i32 2}
!397 = !{ptr @.str.218, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/cs42l52.c", i32 255, i32 11}
!399 = !{ptr @.str.219, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/cs42l52.c", i32 255, i32 20}
!401 = !{ptr @.str.220, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/cs42l52.c", i32 255, i32 29}
!403 = !{ptr @ng_threshold_text, !404, !"ng_threshold_text", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/cs42l52.c", i32 253, i32 27}
!405 = !{ptr @ng_delay_enum, !406, !"ng_delay_enum", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/cs42l52.c", i32 265, i32 8}
!407 = !{ptr @.str.221, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/cs42l52.c", i32 263, i32 2}
!409 = !{ptr @.str.222, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/cs42l52.c", i32 263, i32 10}
!411 = !{ptr @.str.223, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/cs42l52.c", i32 263, i32 19}
!413 = !{ptr @.str.224, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/cs42l52.c", i32 263, i32 28}
!415 = !{ptr @cs42l52_ng_delay_text, !416, !"cs42l52_ng_delay_text", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/cs42l52.c", i32 262, i32 27}
!417 = !{ptr @.str.225, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/cs42l52.c", i32 490, i32 2}
!419 = !{ptr @.str.226, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/cs42l52.c", i32 491, i32 2}
!421 = !{ptr @.str.227, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/cs42l52.c", i32 492, i32 2}
!423 = !{ptr @.str.228, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/cs42l52.c", i32 493, i32 2}
!425 = !{ptr @.str.229, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/cs42l52.c", i32 494, i32 2}
!427 = !{ptr @.str.230, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/cs42l52.c", i32 495, i32 2}
!429 = !{ptr @.str.231, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/cs42l52.c", i32 496, i32 2}
!431 = !{ptr @.str.232, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/cs42l52.c", i32 497, i32 2}
!433 = !{ptr @.str.233, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/cs42l52.c", i32 498, i32 2}
!435 = !{ptr @.str.234, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/cs42l52.c", i32 499, i32 2}
!437 = !{ptr @.str.235, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/cs42l52.c", i32 500, i32 2}
!439 = !{ptr @.str.236, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/cs42l52.c", i32 502, i32 2}
!441 = !{ptr @.str.237, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/cs42l52.c", i32 504, i32 2}
!443 = !{ptr @.str.238, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/cs42l52.c", i32 507, i32 2}
!445 = !{ptr @.str.239, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/cs42l52.c", i32 508, i32 2}
!447 = !{ptr @.str.240, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/cs42l52.c", i32 509, i32 2}
!449 = !{ptr @.str.241, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/cs42l52.c", i32 510, i32 2}
!451 = !{ptr @.str.242, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/cs42l52.c", i32 512, i32 2}
!453 = !{ptr @.str.243, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/cs42l52.c", i32 513, i32 2}
!455 = !{ptr @.str.244, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/cs42l52.c", i32 515, i32 2}
!457 = !{ptr @.str.245, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/cs42l52.c", i32 517, i32 2}
!459 = !{ptr @.str.246, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/cs42l52.c", i32 520, i32 2}
!461 = !{ptr @.str.247, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/cs42l52.c", i32 523, i32 2}
!463 = !{ptr @.str.248, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/cs42l52.c", i32 524, i32 2}
!465 = !{ptr @.str.249, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/cs42l52.c", i32 526, i32 2}
!467 = !{ptr @.str.250, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/cs42l52.c", i32 527, i32 2}
!469 = !{ptr @.str.251, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/cs42l52.c", i32 529, i32 2}
!471 = !{ptr @.str.252, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/cs42l52.c", i32 531, i32 2}
!473 = !{ptr @.str.253, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/cs42l52.c", i32 534, i32 2}
!475 = !{ptr @.str.254, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/cs42l52.c", i32 535, i32 2}
!477 = !{ptr @.str.255, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/cs42l52.c", i32 537, i32 2}
!479 = !{ptr @.str.256, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/cs42l52.c", i32 539, i32 2}
!481 = !{ptr @.str.257, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/cs42l52.c", i32 542, i32 2}
!483 = !{ptr @.str.258, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/cs42l52.c", i32 544, i32 2}
!485 = !{ptr @.str.259, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/cs42l52.c", i32 547, i32 2}
!487 = !{ptr @.str.260, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/cs42l52.c", i32 548, i32 2}
!489 = !{ptr @.str.261, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/cs42l52.c", i32 550, i32 2}
!491 = !{ptr @.str.262, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/cs42l52.c", i32 551, i32 2}
!493 = !{ptr @.str.263, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/cs42l52.c", i32 553, i32 2}
!495 = !{ptr @.str.264, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/cs42l52.c", i32 554, i32 2}
!497 = !{ptr @.str.265, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/cs42l52.c", i32 555, i32 2}
!499 = !{ptr @.str.266, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/cs42l52.c", i32 556, i32 2}
!501 = !{ptr @cs42l52_dapm_widgets, !502, !"cs42l52_dapm_widgets", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/cs42l52.c", i32 488, i32 41}
!503 = !{ptr @.str.268, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/cs42l52.c", i32 162, i32 2}
!505 = !{ptr @adca_mux, !506, !"adca_mux", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/cs42l52.c", i32 161, i32 38}
!507 = !{ptr @adca_enum, !508, !"adca_enum", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/cs42l52.c", i32 155, i32 8}
!509 = !{ptr @.str.269, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/cs42l52.c", i32 150, i32 2}
!511 = !{ptr @.str.270, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/cs42l52.c", i32 150, i32 13}
!513 = !{ptr @.str.271, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/cs42l52.c", i32 150, i32 24}
!515 = !{ptr @.str.272, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/cs42l52.c", i32 150, i32 35}
!517 = !{ptr @.str.273, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/cs42l52.c", i32 150, i32 46}
!519 = !{ptr @cs42l52_adca_text, !520, !"cs42l52_adca_text", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/cs42l52.c", i32 149, i32 27}
!521 = !{ptr @.str.274, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/cs42l52.c", i32 165, i32 2}
!523 = !{ptr @adcb_mux, !524, !"adcb_mux", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/cs42l52.c", i32 164, i32 38}
!525 = !{ptr @adcb_enum, !526, !"adcb_enum", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/cs42l52.c", i32 158, i32 8}
!527 = !{ptr @.str.275, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/cs42l52.c", i32 153, i32 2}
!529 = !{ptr @.str.276, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/cs42l52.c", i32 153, i32 13}
!531 = !{ptr @.str.277, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/cs42l52.c", i32 153, i32 24}
!533 = !{ptr @.str.278, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/cs42l52.c", i32 153, i32 35}
!535 = !{ptr @.str.279, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/cs42l52.c", i32 153, i32 46}
!537 = !{ptr @cs42l52_adcb_text, !538, !"cs42l52_adcb_text", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/cs42l52.c", i32 152, i32 27}
!539 = !{ptr @.str.280, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/cs42l52.c", i32 292, i32 2}
!541 = !{ptr @adca_mixer, !542, !"adca_mixer", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/cs42l52.c", i32 291, i32 38}
!543 = !{ptr @adca_swap_enum, !544, !"adca_swap_enum", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/cs42l52.c", i32 285, i32 30}
!545 = !{ptr @.str.281, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/cs42l52.c", i32 278, i32 2}
!547 = !{ptr @.str.282, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/cs42l52.c", i32 278, i32 10}
!549 = !{ptr @.str.283, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/cs42l52.c", i32 278, i32 18}
!551 = !{ptr @left_swap_text, !552, !"left_swap_text", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/cs42l52.c", i32 277, i32 27}
!553 = !{ptr @swap_values, !554, !"swap_values", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/cs42l52.c", i32 283, i32 27}
!555 = !{ptr @adcb_mixer, !556, !"adcb_mixer", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/cs42l52.c", i32 309, i32 38}
!557 = !{ptr @adcb_swap_enum, !558, !"adcb_swap_enum", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/cs42l52.c", i32 303, i32 30}
!559 = !{ptr @right_swap_text, !560, !"right_swap_text", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/cs42l52.c", i32 280, i32 27}
!561 = !{ptr @.str.284, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/cs42l52.c", i32 190, i32 2}
!563 = !{ptr @digital_output_mux, !564, !"digital_output_mux", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/cs42l52.c", i32 189, i32 38}
!565 = !{ptr @digital_output_mux_enum, !566, !"digital_output_mux_enum", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/cs42l52.c", i32 185, i32 8}
!567 = !{ptr @.str.285, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/cs42l52.c", i32 183, i32 56}
!569 = !{ptr @.str.286, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/cs42l52.c", i32 183, i32 63}
!571 = !{ptr @digital_output_mux_text, !572, !"digital_output_mux_text", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/cs42l52.c", i32 183, i32 27}
!573 = !{ptr @.str.287, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/cs42l52.c", i32 323, i32 2}
!575 = !{ptr @passthrul_ctl, !576, !"passthrul_ctl", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/cs42l52.c", i32 322, i32 38}
!577 = !{ptr @passthrur_ctl, !578, !"passthrur_ctl", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/cs42l52.c", i32 325, i32 38}
!579 = !{ptr @pcma_mixer, !580, !"pcma_mixer", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/cs42l52.c", i32 300, i32 38}
!581 = !{ptr @pcma_swap_enum, !582, !"pcma_swap_enum", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/cs42l52.c", i32 294, i32 30}
!583 = !{ptr @pcmb_mixer, !584, !"pcmb_mixer", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/cs42l52.c", i32 318, i32 38}
!585 = !{ptr @pcmb_swap_enum, !586, !"pcmb_swap_enum", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/cs42l52.c", i32 312, i32 30}
!587 = !{ptr @hpl_ctl, !588, !"hpl_ctl", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/cs42l52.c", i32 334, i32 38}
!589 = !{ptr @hpr_ctl, !590, !"hpr_ctl", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/cs42l52.c", i32 337, i32 38}
!591 = !{ptr @spkl_ctl, !592, !"spkl_ctl", i1 false, i1 false}
!592 = !{!"../sound/soc/codecs/cs42l52.c", i32 328, i32 38}
!593 = !{ptr @spkr_ctl, !594, !"spkr_ctl", i1 false, i1 false}
!594 = !{!"../sound/soc/codecs/cs42l52.c", i32 331, i32 38}
!595 = !{ptr @.str.294, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/cs42l52.c", i32 562, i32 3}
!597 = !{ptr @.str.295, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/cs42l52.c", i32 617, i32 29}
!599 = !{ptr @cs42l52_audio_map, !600, !"cs42l52_audio_map", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/cs42l52.c", i32 560, i32 40}
!601 = !{ptr @.str.296, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/cs42l52.c", i32 465, i32 2}
!603 = !{ptr @cs42l52_mica_controls, !604, !"cs42l52_mica_controls", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/cs42l52.c", i32 464, i32 38}
!605 = !{ptr @mica_enum, !606, !"mica_enum", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/cs42l52.c", i32 177, i32 8}
!607 = !{ptr @.str.297, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/soc/codecs/cs42l52.c", i32 175, i32 50}
!609 = !{ptr @.str.298, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/cs42l52.c", i32 175, i32 58}
!611 = !{ptr @cs42l52_mic_text, !612, !"cs42l52_mic_text", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/cs42l52.c", i32 175, i32 27}
!613 = !{ptr @.str.299, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../sound/soc/codecs/cs42l52.c", i32 469, i32 2}
!615 = !{ptr @cs42l52_micb_controls, !616, !"cs42l52_micb_controls", i1 false, i1 false}
!616 = !{!"../sound/soc/codecs/cs42l52.c", i32 468, i32 38}
!617 = !{ptr @micb_enum, !618, !"micb_enum", i1 false, i1 false}
!618 = !{!"../sound/soc/codecs/cs42l52.c", i32 180, i32 8}
!619 = !{ptr @.str.300, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../sound/soc/codecs/cs42l52.c", i32 985, i32 3}
!621 = !{ptr @.str.301, !620, !"<string literal>", i1 false, i1 false}
!622 = !{ptr @cs42l52_init_beep._entry, !620, !"_entry", i1 false, i1 false}
!623 = !{ptr @cs42l52_init_beep._entry_ptr, !620, !"_entry_ptr", i1 false, i1 false}
!624 = !{ptr @cs42l52_init_beep.__key, !625, !"__key", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/cs42l52.c", i32 989, i32 2}
!626 = !{ptr @.str.302, !625, !"<string literal>", i1 false, i1 false}
!627 = !{ptr @.str.303, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/cs42l52.c", i32 992, i32 24}
!629 = !{ptr @.str.305, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../sound/soc/codecs/cs42l52.c", i32 1005, i32 3}
!631 = !{ptr @cs42l52_init_beep._entry.304, !630, !"_entry", i1 false, i1 false}
!632 = !{ptr @cs42l52_init_beep._entry_ptr.306, !630, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.308, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../sound/soc/codecs/cs42l52.c", i32 1010, i32 3}
!635 = !{ptr @cs42l52_init_beep._entry.307, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @cs42l52_init_beep._entry_ptr.309, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.310, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../sound/soc/codecs/cs42l52.c", i32 915, i32 3}
!639 = !{ptr @.str.311, !638, !"<string literal>", i1 false, i1 false}
!640 = !{ptr @.str.312, !638, !"<string literal>", i1 false, i1 false}
!641 = !{ptr @cs42l52_beep_work.__UNIQUE_ID_ddebug294, !638, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!642 = !{ptr @.str.313, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/soc/codecs/cs42l52.c", i32 922, i32 3}
!644 = !{ptr @cs42l52_beep_work.__UNIQUE_ID_ddebug295, !643, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!645 = !{ptr @beep_rates, !646, !"beep_rates", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/cs42l52.c", i32 893, i32 12}
!647 = !{ptr @.str.314, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../sound/soc/codecs/cs42l52.c", i32 941, i32 2}
!649 = !{ptr @.str.315, !648, !"<string literal>", i1 false, i1 false}
!650 = !{ptr @cs42l52_beep_event.__UNIQUE_ID_ddebug296, !648, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!651 = !{ptr @.str.316, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../sound/soc/codecs/cs42l52.c", i32 976, i32 8}
!653 = !{ptr @dev_attr_beep, !652, !"dev_attr_beep", i1 false, i1 false}
!654 = !{ptr @cs42l52_dai, !655, !"cs42l52_dai", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/cs42l52.c", i32 874, i32 34}
!656 = !{ptr @cs42l52_ops, !657, !"cs42l52_ops", i1 false, i1 false}
!657 = !{!"../sound/soc/codecs/cs42l52.c", i32 866, i32 37}
!658 = !{ptr @.str.317, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/soc/codecs/cs42l52.c", i32 721, i32 3}
!660 = !{ptr @.str.318, !659, !"<string literal>", i1 false, i1 false}
!661 = !{ptr @cs42l52_set_sysclk._entry, !659, !"_entry", i1 false, i1 false}
!662 = !{ptr @cs42l52_set_sysclk._entry_ptr, !659, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.319, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../sound/soc/codecs/cs42l52.c", i32 824, i32 3}
!665 = !{ptr @.str.320, !664, !"<string literal>", i1 false, i1 false}
!666 = !{ptr @cs42l52_pcm_hw_params._entry, !664, !"_entry", i1 false, i1 false}
!667 = !{ptr @cs42l52_pcm_hw_params._entry_ptr, !664, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @clk_map_table, !669, !"clk_map_table", i1 false, i1 false}
!669 = !{!"../sound/soc/codecs/cs42l52.c", i32 643, i32 38}
!670 = !{ptr @cs42l52_of_match, !671, !"cs42l52_of_match", i1 false, i1 false}
!671 = !{!"../sound/soc/codecs/cs42l52.c", i32 1210, i32 34}
!672 = !{ptr @cs42l52_id, !673, !"cs42l52_id", i1 false, i1 false}
!673 = !{!"../sound/soc/codecs/cs42l52.c", i32 1217, i32 35}
!674 = !{i32 1, !"wchar_size", i32 2}
!675 = !{i32 1, !"min_enum_size", i32 4}
!676 = !{i32 8, !"branch-target-enforcement", i32 0}
!677 = !{i32 8, !"sign-return-address", i32 0}
!678 = !{i32 8, !"sign-return-address-all", i32 0}
!679 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!680 = !{i32 7, !"uwtable", i32 1}
!681 = !{i32 7, !"frame-pointer", i32 2}
!682 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!683 = !{!"auto-init"}
!684 = !{i8 0, i8 2}
!685 = !{i64 2148989204, i64 2148989209, i64 2148989222, i64 2148989266, i64 2148989300, i64 2148989321}
