; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98088.c_pt.bc'
source_filename = "../sound/soc/codecs/max98088.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.108 = type { i32, i8 }
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
%struct.max98088_priv = type { ptr, i32, ptr, ptr, i8, i32, [2 x %struct.max98088_cdata], i32, ptr, %struct.soc_enum, i8, i8, i32, i32, i32, i32, i32 }
%struct.max98088_cdata = type { i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.max98088_pdata = type { ptr, i32, i8 }
%struct.max98088_eq_cfg = type { ptr, i32, [5 x i16], [5 x i16], [5 x i16], [5 x i16], [5 x i16] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_max98088__299_1799_max98088_i2c_driver_init6 = internal global ptr @max98088_i2c_driver_init, section ".initcall6.init", align 4
@max98088_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98088_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98088_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max98088_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98088_i2c_driver_exit = internal global ptr @max98088_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [54 x i8] c"snd_soc_max98088.description=ALSA SoC MAX98088 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [54 x i8] c"snd_soc_max98088.author=Peter Hsiang, Jesse Marroquin\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [56 x i8] c"snd_soc_max98088.file=sound/soc/codecs/snd-soc-max98088\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [29 x i8] c"snd_soc_max98088.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98088\00", [23 x i8] zeroinitializer }, align 32
@max98088_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98088\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98089\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max98088_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98088\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max98089\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max98088_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98088_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max98088_writeable_register, ptr @max98088_readable_register, ptr @max98088_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98088_reg, i32 187, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max98088:1755:(&max98088_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@soc_component_dev_max98088 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @max98088_snd_controls, i32 34, ptr @max98088_dapm_widgets, i32 40, ptr @max98088_audio_map, i32 92, ptr @max98088_probe, ptr @max98088_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98088_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@max98088_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.238, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98088_dai1_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.90, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.93, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.239, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98088_dai2_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.96, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@max98088_reg = internal constant { [187 x %struct.reg_default], [360 x i8] } { [187 x %struct.reg_default] [%struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 240 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 15 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 163, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 165, i32 0 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 169, i32 0 }, %struct.reg_default { i32 170, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 173, i32 0 }, %struct.reg_default { i32 174, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 0 }, %struct.reg_default { i32 180, i32 0 }, %struct.reg_default { i32 181, i32 0 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 185, i32 0 }, %struct.reg_default { i32 186, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 198, i32 0 }, %struct.reg_default { i32 199, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 201, i32 0 }], [360 x i8] zeroinitializer }, align 32
@max98088_snd_controls = internal constant { [34 x %struct.snd_kcontrol_new], [384 x i8] } { [34 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98088_hp_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98088_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98088_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98088_mic1pre_get, ptr @max98088_mic1pre_set, %union.anon.98 { ptr @max98088_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98088_mic2pre_get, ptr @max98088_mic2pre_set, %union.anon.98 { ptr @max98088_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98088_exmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98088_ex_thresh_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98088_filter_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98088_dai1_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98088_dai1_adc_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }], [384 x i8] zeroinitializer }, align 32
@max98088_audio_map = internal constant { [92 x %struct.snd_soc_dapm_route], [1200 x i8] } { [92 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.135, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.139, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.137, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.141, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.135, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.139, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.137, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.141, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.135, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.139, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.137, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.141, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.135, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.139, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.137, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.141, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.135, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.139, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.137, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.141, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.135, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.139, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.137, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.141, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.143, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.145, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.147, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.149, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.151, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.153, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1200 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@max98088_hp_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6700, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -4000, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1700, i32 200, i32 22, i32 27, i32 1, i32 8, i32 -400, i32 100, i32 28, i32 31, i32 1, i32 8, i32 150, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 57, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@max98088_spk_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6200, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -3500, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1200, i32 200, i32 22, i32 27, i32 1, i32 8, i32 100, i32 100, i32 28, i32 31, i32 1, i32 8, i32 650, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 61, i32 62, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Receiver Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 59, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 61, i32 62, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Receiver Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 53, i32 53, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 54, i32 54, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1 Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@max98088_micboost_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 0, i32 2000, i32 2, i32 2, i32 1, i32 8, i32 3000, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 53, i32 53, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC2 Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 54, i32 54, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INA Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 55, i32 55, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INB Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 56, i32 56, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCL Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCR Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCL Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 51, i32 51, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCR Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 52, i32 52, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73, i32 73, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73, i32 73, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EX Limiter Mode\00", [16 x i8] zeroinitializer }, align 32
@max98088_exmode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 65, i8 0, i8 0, i32 9, i32 127, ptr @max98088_exmode_texts, ptr @max98088_exmode_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EX Limiter Threshold\00", [43 x i8] zeroinitializer }, align 32
@max98088_ex_thresh_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 0, i8 0, i32 8, i32 7, ptr @max98088_ex_thresh, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAI1 Filter Mode\00", [47 x i8] zeroinitializer }, align 32
@max98088_filter_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 7, i8 7, i32 2, i32 1, ptr @max98088_fltr_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI1 DAC Filter\00", [16 x i8] zeroinitializer }, align 32
@max98088_dai1_dac_filter_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 0, i8 0, i32 6, i32 7, ptr @max98088_dai1_fltr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI1 ADC Filter\00", [16 x i8] zeroinitializer }, align 32
@max98088_dai1_adc_filter_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 4, i8 4, i32 6, i32 7, ptr @max98088_dai1_fltr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAI2 DC Block Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Threshold\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 67, i32 67, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Multiband\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Release Time\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 67, i32 67, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PWR Limiter Threshold\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 68, i32 68, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PWR Limiter Weight\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 68, i32 68, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PWR Limiter Time1\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 69, i32 69, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PWR Limiter Time2\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 69, i32 69, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"THD Limiter Threshold\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 70, i32 70, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"THD Limiter Time\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 70, i32 70, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@max98088_exmode_texts = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], [60 x i8] zeroinitializer }, align 32
@max98088_exmode_values = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 67, i32 16, i32 32, i32 48, i32 64, i32 17, i32 34, i32 50], [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"600Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"800Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1000Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"200-400Hz\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"400-600Hz\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"400-800Hz\00", [22 x i8] zeroinitializer }, align 32
@max98088_ex_thresh = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.6\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.8\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.4\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.6\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.2\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.8\00", [28 x i8] zeroinitializer }, align 32
@max98088_fltr_mode = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.82, ptr @.str.83], [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Music\00", [26 x i8] zeroinitializer }, align 32
@max98088_dai1_fltr = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.65, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc=258/fs=16k\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc=500/fs=16k\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc=258/fs=8k\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc=500/fs=8k\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc=200\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACL1\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACR1\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACL2\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aux Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DACR2\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HP Left Out\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Right Out\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK Left Out\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPK Right Out\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REC Left Out\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REC Right Out\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"External MIC\00", [19 x i8] zeroinitializer }, align 32
@max98088_extmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98088_extmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left HP Mixer\00", [18 x i8] zeroinitializer }, align 32
@max98088_left_hp_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right HP Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98088_right_hp_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left SPK Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98088_left_speaker_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right SPK Mixer\00", [16 x i8] zeroinitializer }, align 32
@max98088_right_speaker_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left REC Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98088_left_rec_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right REC Mixer\00", [16 x i8] zeroinitializer }, align 32
@max98088_right_rec_mixer_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left ADC Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98088_left_ADC_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.208 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right ADC Mixer\00", [16 x i8] zeroinitializer }, align 32
@max98088_right_ADC_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.212 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.216 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC1 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC2 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INA1 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INA2 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INB1 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INB2 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RECL\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RECR\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INA1\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INA2\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INB1\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INB2\00", [27 x i8] zeroinitializer }, align 32
@max98088_dapm_widgets = internal constant { [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1792 x i8] } { [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.89, ptr @.str.90, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.91, ptr @.str.90, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.92, ptr @.str.93, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.94, ptr @.str.93, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.95, ptr @.str.96, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.97, ptr @.str.96, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 77, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98088_extmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @max98088_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @max98088_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @max98088_left_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @max98088_right_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @max98088_left_rec_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @max98088_right_rec_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98088_left_ADC_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98088_right_ADC_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 53, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98088_mic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 54, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98088_mic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98088_pga_ina1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98088_pga_ina2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98088_pga_inb1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98088_pga_inb2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 76, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1792 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"External MIC Mux\00", [47 x i8] zeroinitializer }, align 32
@max98088_extmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 72, i8 0, i8 0, i32 3, i32 3, ptr @max98088_extmic_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98088_extmic_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.134, ptr @.str.126, ptr @.str.127], [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left DAC1 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right DAC1 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left DAC2 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right DAC2 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INA1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INA2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INB1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INB2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98088.c\00", [36 x i8] zeroinitializer }, align 32
@max98088_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.217, i32 1692, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read device revision: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max98088_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98088_probe._entry_ptr = internal global ptr @max98088_probe._entry, section ".printk_index", align 4
@max98088_probe._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.219, ptr @.str.217, i32 1695, ptr @.str.224, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %c\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98088_probe._entry_ptr.225 = internal global ptr @max98088_probe._entry.222, section ".printk_index", align 4
@max98088_handle_pdata.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.226, ptr @.str.227, ptr @.str.217, ptr @.str.228, i8 1, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_max98088\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98088_handle_pdata\00", [42 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@eq_mode_name = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.231, ptr @.str.232], [24 x i8] zeroinitializer }, align 32
@max98088_handle_eq_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.217, i32 1624, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add EQ control: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max98088_handle_eq_pdata\00", [39 x i8] zeroinitializer }, align 32
@max98088_handle_eq_pdata._entry_ptr = internal global ptr @max98088_handle_eq_pdata._entry, section ".printk_index", align 4
@.str.231 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EQ1 Mode\00", [23 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EQ2 Mode\00", [23 x i8] zeroinitializer }, align 32
@max98088_get_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.217, i32 1420, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad EQ channel name '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98088_get_channel\00", [43 x i8] zeroinitializer }, align 32
@max98088_get_channel._entry_ptr = internal global ptr @max98088_get_channel._entry, section ".printk_index", align 4
@max98088_setup_eq1.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.226, ptr @.str.235, ptr @.str.217, ptr @.str.236, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.235 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98088_setup_eq1\00", [45 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Selected %s/%dHz for %dHz sample rate\0A\00", [57 x i8] zeroinitializer }, align 32
@max98088_setup_eq2.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.226, ptr @.str.237, ptr @.str.217, ptr @.str.236, i8 1, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98088_setup_eq2\00", [45 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@max98088_dai1_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98088_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98088_dai1_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98088_dai1_mute, ptr null, ptr null, ptr @max98088_dai1_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@max98088_dai2_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98088_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98088_dai2_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98088_dai2_mute, ptr null, ptr null, ptr @max98088_dai2_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@max98088_dai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.217, i32 1128, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid master clock frequency\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98088_dai_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@max98088_dai_set_sysclk._entry_ptr = internal global ptr @max98088_dai_set_sysclk._entry, section ".printk_index", align 4
@max98088_dai_set_sysclk.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.226, ptr @.str.241, ptr @.str.217, ptr @.str.242, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Clock source is %d at %uHz\0A\00", [36 x i8] zeroinitializer }, align 32
@max98088_dai1_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.217, i32 1174, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clock mode unsupported\00", [41 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98088_dai1_set_fmt\00", [42 x i8] zeroinitializer }, align 32
@max98088_dai1_set_fmt._entry_ptr = internal global ptr @max98088_dai1_set_fmt._entry, section ".printk_index", align 4
@max98088_dai1_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.217, i32 1005, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid system clock frequency\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98088_dai1_hw_params\00", [40 x i8] zeroinitializer }, align 32
@max98088_dai1_hw_params._entry_ptr = internal global ptr @max98088_dai1_hw_params._entry, section ".printk_index", align 4
@rate_table = internal constant { [10 x %struct.anon.108], [48 x i8] } { [10 x %struct.anon.108] [%struct.anon.108 { i32 8000, i8 16 }, %struct.anon.108 { i32 11025, i8 32 }, %struct.anon.108 { i32 16000, i8 48 }, %struct.anon.108 { i32 22050, i8 64 }, %struct.anon.108 { i32 24000, i8 80 }, %struct.anon.108 { i32 32000, i8 96 }, %struct.anon.108 { i32 44100, i8 112 }, %struct.anon.108 { i32 48000, i8 -128 }, %struct.anon.108 { i32 88200, i8 -112 }, %struct.anon.108 { i32 96000, i8 -96 }], [48 x i8] zeroinitializer }, align 32
@max98088_dai2_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.247, ptr @.str.217, i32 1245, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98088_dai2_set_fmt\00", [42 x i8] zeroinitializer }, align 32
@max98088_dai2_set_fmt._entry_ptr = internal global ptr @max98088_dai2_set_fmt._entry, section ".printk_index", align 4
@max98088_dai2_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.248, ptr @.str.217, i32 1075, ptr @.str.220, ptr @.str.221 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98088_dai2_hw_params\00", [40 x i8] zeroinitializer }, align 32
@max98088_dai2_hw_params._entry_ptr = internal global ptr @max98088_dai2_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.258 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.262 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"max98088_i2c_driver\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1790, i32 26 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1792, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant [18 x i8] c"max98088_of_match\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1782, i32 34 }
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"max98088_i2c_id\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1774, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [16 x i8] c"max98088_regmap\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 293, i32 35 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1755, i32 27 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1759, i32 43 }
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"soc_component_dev_max98088\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1727, i32 46 }
@___asan_gen_.291 = private unnamed_addr constant [13 x i8] c"max98088_dai\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1380, i32 34 }
@___asan_gen_.294 = private unnamed_addr constant [13 x i8] c"max98088_reg\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 59, i32 33 }
@___asan_gen_.297 = private unnamed_addr constant [22 x i8] c"max98088_snd_controls\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 449, i32 38 }
@___asan_gen_.300 = private unnamed_addr constant [19 x i8] c"max98088_audio_map\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 817, i32 40 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 451, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"max98088_hp_tlv\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 433, i32 14 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 453, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"max98088_spk_tlv\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 441, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 455, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 458, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 460, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 462, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 465, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 466, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 468, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant [22 x i8] c"max98088_micboost_tlv\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 428, i32 14 }
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 472, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 477, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 478, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 480, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 481, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 483, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 484, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 486, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 487, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 489, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant [21 x i8] c"max98088_exmode_enum\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 345, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 490, i32 8 }
@___asan_gen_.393 = private unnamed_addr constant [24 x i8] c"max98088_ex_thresh_enum\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 352, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 492, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant [26 x i8] c"max98088_filter_mode_enum\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 357, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 493, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant [30 x i8] c"max98088_dai1_dac_filter_enum\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 373, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 494, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant [30 x i8] c"max98088_dai1_adc_filter_enum\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 376, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 495, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 498, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 499, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 500, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 501, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 503, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 505, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 506, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 507, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 509, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 510, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [22 x i8] c"max98088_exmode_texts\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 336, i32 20 }
@___asan_gen_.461 = private unnamed_addr constant [23 x i8] c"max98088_exmode_values\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 341, i32 27 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 15 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 24 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 33 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 42 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 51 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 337, i32 61 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 338, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 338, i32 21 }
@___asan_gen_.491 = private unnamed_addr constant [19 x i8] c"max98088_ex_thresh\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 350, i32 20 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 15 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 22 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 29 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 36 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 43 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 50 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 351, i32 57 }
@___asan_gen_.518 = private unnamed_addr constant [19 x i8] c"max98088_fltr_mode\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 356, i32 20 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 356, i32 44 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 356, i32 53 }
@___asan_gen_.527 = private unnamed_addr constant [19 x i8] c"max98088_dai1_fltr\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 370, i32 20 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 371, i32 15 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 371, i32 32 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 372, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 372, i32 24 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 372, i32 40 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 714, i32 8 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 715, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 717, i32 8 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 719, i32 8 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 721, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 723, i32 8 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 726, i32 8 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 728, i32 8 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 731, i32 8 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 733, i32 8 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 736, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 738, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 741, i32 8 }
@___asan_gen_.593 = private unnamed_addr constant [20 x i8] c"max98088_extmic_mux\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 367, i32 38 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 744, i32 8 }
@___asan_gen_.599 = private unnamed_addr constant [32 x i8] c"max98088_left_hp_mixer_controls\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 542, i32 38 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 748, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant [33 x i8] c"max98088_right_hp_mixer_controls\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 556, i32 38 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 752, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant [37 x i8] c"max98088_left_speaker_mixer_controls\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 514, i32 38 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 756, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant [38 x i8] c"max98088_right_speaker_mixer_controls\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 528, i32 38 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 760, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant [33 x i8] c"max98088_left_rec_mixer_controls\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 570, i32 38 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 764, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant [34 x i8] c"max98088_right_rec_mixer_controls\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 584, i32 38 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 768, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant [33 x i8] c"max98088_left_ADC_mixer_controls\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 598, i32 38 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 772, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant [34 x i8] c"max98088_right_ADC_mixer_controls\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 608, i32 38 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 776, i32 8 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 780, i32 8 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 784, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 788, i32 8 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 792, i32 8 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 796, i32 8 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 800, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 802, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 803, i32 8 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 804, i32 8 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 805, i32 8 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 806, i32 8 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 807, i32 8 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 809, i32 8 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 810, i32 8 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 811, i32 8 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 812, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 813, i32 8 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 814, i32 8 }
@___asan_gen_.701 = private unnamed_addr constant [22 x i8] c"max98088_dapm_widgets\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 712, i32 41 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 368, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c"max98088_extmic_enum\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 363, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c"max98088_extmic_text\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 361, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 361, i32 47 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 543, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 544, i32 8 }
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 545, i32 8 }
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 546, i32 8 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 547, i32 8 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 548, i32 8 }
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 549, i32 8 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 550, i32 8 }
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 551, i32 8 }
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 552, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.762 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.766 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.782 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.787 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.793 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.799 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.802 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.803 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.809 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.814 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.817 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 654, i32 6 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1691, i32 16 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1695, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1634, i32 16 }
@___asan_gen_.854 = private unnamed_addr constant [13 x i8] c"eq_mode_name\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1412, i32 20 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1624, i32 16 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1412, i32 38 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1412, i32 50 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1420, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1451, i32 8 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1498, i32 8 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1382, i32 16 }
@___asan_gen_.893 = private unnamed_addr constant [18 x i8] c"max98088_dai1_ops\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1364, i32 37 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1400, i32 16 }
@___asan_gen_.899 = private unnamed_addr constant [18 x i8] c"max98088_dai2_ops\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1372, i32 37 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1128, i32 16 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1139, i32 8 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1174, i32 24 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1005, i32 24 }
@___asan_gen_.932 = private unnamed_addr constant [11 x i8] c"rate_table\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 935, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1245, i32 24 }
@___asan_gen_.941 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.945 = private constant [31 x i8] c"../sound/soc/codecs/max98088.c\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.945, i32 1075, i32 24 }
@llvm.compiler.used = appending global [311 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_max98088_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98088__299_1799_max98088_i2c_driver_init6, ptr @max98088_dai1_hw_params._entry, ptr @max98088_dai1_hw_params._entry_ptr, ptr @max98088_dai1_set_fmt._entry, ptr @max98088_dai1_set_fmt._entry_ptr, ptr @max98088_dai2_hw_params._entry, ptr @max98088_dai2_hw_params._entry_ptr, ptr @max98088_dai2_set_fmt._entry, ptr @max98088_dai2_set_fmt._entry_ptr, ptr @max98088_dai_set_sysclk._entry, ptr @max98088_dai_set_sysclk._entry_ptr, ptr @max98088_get_channel._entry, ptr @max98088_get_channel._entry_ptr, ptr @max98088_handle_eq_pdata._entry, ptr @max98088_handle_eq_pdata._entry_ptr, ptr @max98088_i2c_driver_exit, ptr @max98088_probe._entry, ptr @max98088_probe._entry.222, ptr @max98088_probe._entry_ptr, ptr @max98088_probe._entry_ptr.225, ptr @max98088_i2c_driver, ptr @.str, ptr @max98088_of_match, ptr @max98088_i2c_id, ptr @max98088_i2c_probe._key, ptr @max98088_regmap, ptr @.str.1, ptr @.str.2, ptr @soc_component_dev_max98088, ptr @max98088_dai, ptr @max98088_reg, ptr @max98088_snd_controls, ptr @max98088_audio_map, ptr @.str.3, ptr @max98088_hp_tlv, ptr @.compoundliteral, ptr @.str.4, ptr @max98088_spk_tlv, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @max98088_micboost_tlv, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @max98088_exmode_enum, ptr @.str.39, ptr @max98088_ex_thresh_enum, ptr @.str.40, ptr @max98088_filter_mode_enum, ptr @.str.41, ptr @max98088_dai1_dac_filter_enum, ptr @.str.42, ptr @max98088_dai1_adc_filter_enum, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @max98088_exmode_texts, ptr @max98088_exmode_values, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @max98088_ex_thresh, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @max98088_fltr_mode, ptr @.str.82, ptr @.str.83, ptr @max98088_dai1_fltr, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @max98088_extmic_mux, ptr @.str.105, ptr @max98088_left_hp_mixer_controls, ptr @.str.106, ptr @max98088_right_hp_mixer_controls, ptr @.str.107, ptr @max98088_left_speaker_mixer_controls, ptr @.str.108, ptr @max98088_right_speaker_mixer_controls, ptr @.str.109, ptr @max98088_left_rec_mixer_controls, ptr @.str.110, ptr @max98088_right_rec_mixer_controls, ptr @.str.111, ptr @max98088_left_ADC_mixer_controls, ptr @.str.112, ptr @max98088_right_ADC_mixer_controls, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @max98088_dapm_widgets, ptr @.str.133, ptr @max98088_extmic_enum, ptr @max98088_extmic_text, ptr @.str.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.compoundliteral.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.compoundliteral.192, ptr @.compoundliteral.193, ptr @.compoundliteral.194, ptr @.compoundliteral.195, ptr @.compoundliteral.196, ptr @.compoundliteral.197, ptr @.compoundliteral.198, ptr @.compoundliteral.199, ptr @.compoundliteral.200, ptr @.compoundliteral.201, ptr @.compoundliteral.202, ptr @.compoundliteral.203, ptr @.compoundliteral.204, ptr @.compoundliteral.205, ptr @.compoundliteral.206, ptr @.compoundliteral.207, ptr @.compoundliteral.208, ptr @.compoundliteral.209, ptr @.compoundliteral.210, ptr @.compoundliteral.211, ptr @.compoundliteral.212, ptr @.compoundliteral.213, ptr @.compoundliteral.214, ptr @.compoundliteral.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @eq_mode_name, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @max98088_dai1_ops, ptr @.str.239, ptr @max98088_dai2_ops, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @rate_table, ptr @.str.247, ptr @.str.248], section "llvm.metadata"
@0 = internal global [295 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_max98088 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_reg to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_snd_controls to i32), i32 1632, i32 2016, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_audio_map to i32), i32 4784, i32 5984, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_hp_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_spk_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_micboost_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_exmode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_ex_thresh_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_filter_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai1_dac_filter_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai1_adc_filter_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_exmode_texts to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_exmode_values to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_ex_thresh to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_fltr_mode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai1_fltr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_extmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_left_hp_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_right_hp_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_left_speaker_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_right_speaker_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_left_rec_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_right_rec_mixer_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_left_ADC_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_right_ADC_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dapm_widgets to i32), i32 7200, i32 8992, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_extmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_extmic_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_probe._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_mode_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_handle_eq_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_get_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai1_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai2_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai1_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai1_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai2_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98088_dai2_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98088_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98088_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @max98088_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max98088_regmap, ptr noundef nonnull @max98088_i2c_probe._key, ptr noundef nonnull @.str.1) #10
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %mclk = getelementptr inbounds %struct.max98088_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %mclk, align 4
  %cmp15 = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp15, label %if.end7.cleanup_crit_edge, label %if.end20

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %devtype = getelementptr inbounds %struct.max98088_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %devtype, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.max98088_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pdata, align 4
  %call23 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_max98088, ptr noundef nonnull @max98088_dai, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call23, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98088_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %0)
  %inbounds = icmp ult i32 %0, 199
  ret i1 %inbounds
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98088_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cond = icmp eq i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %reg)
  %inbounds = icmp ult i32 %reg, 202
  %or.cond = or i1 %cond, %inbounds
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98088_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 255, label %entry.return_crit_edge
    i32 0, label %entry.return_crit_edge2
    i32 1, label %entry.return_crit_edge3
    i32 2, label %entry.return_crit_edge4
    i32 3, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  %sysclk = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sysclk, align 4
  %eq_textcnt = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %eq_textcnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %eq_textcnt, align 4
  %dai = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dai, align 4
  %fmt = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 0, i32 1
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fmt, align 4
  %eq_sel = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %eq_sel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %eq_sel, align 4
  %arrayidx2 = getelementptr %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx2, align 4
  %fmt4 = getelementptr %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 1, i32 1
  %12 = ptrtoint ptr %fmt4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %fmt4, align 4
  %eq_sel5 = getelementptr %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 1, i32 2
  %13 = ptrtoint ptr %eq_sel5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %eq_sel5, align 4
  %ina_state = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %ina_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ina_state, align 4
  %inb_state = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %inb_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %inb_state, align 1
  %ex_mode = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 12
  %16 = call ptr @memset(ptr %ex_mode, i32 0, i32 16)
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  br i1 %cmp, label %do.end, label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.218, i32 noundef %call6) #13
  br label %err_access

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw i32 %call6, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.223, i32 noundef %add) #13
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 81, i32 noundef 1) #10
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 15, i32 noundef 0) #10
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 34, i32 noundef 165) #10
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 78, i32 noundef 240) #10
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 80, i32 noundef 15) #10
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 22, i32 noundef 67) #10
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 30, i32 noundef 131) #10
  tail call fastcc void @max98088_handle_pdata(ptr noundef %component)
  br label %err_access

err_access:                                       ; preds = %do.end9, %do.end
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98088_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %eq_texts = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %eq_texts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eq_texts, align 4
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb15
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mclk = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %6) #10
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %sw.epilog

if.else:                                          ; preds = %if.then
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then3.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %dapm.i.i26 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.then11, label %sw.bb8.if.end13_crit_edge

sw.bb8.if.end13_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call12 = tail call i32 @regcache_sync(ptr noundef %12) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb8.if.end13_crit_edge
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 76, i32 noundef 8, i32 noundef 8) #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 76, i32 noundef 8, i32 noundef 0) #10
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void @regcache_mark_dirty(ptr noundef %14) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %if.end13, %if.then3.i, %if.end.i.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.then3, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98088_mic1pre_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %mic1pre = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %mic1pre to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mic1pre, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_mic1pre_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %mic1pre = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %mic1pre to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mic1pre, align 4
  %add = shl i32 %7, 5
  %shl = add i32 %add, 32
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 53, i32 noundef 96, i32 noundef %shl) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98088_mic2pre_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %mic2pre = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %mic2pre to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mic2pre, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_mic2pre_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %mic2pre = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %mic2pre to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mic2pre, align 4
  %add = shl i32 %7, 5
  %shl = add i32 %add, 32
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 54, i32 noundef 96, i32 noundef %shl) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_mic_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %reg = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %8)
  %cmp = icmp eq i32 %8, 53
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %mic1pre = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 14
  %9 = ptrtoint ptr %mic1pre to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mic1pre, align 4
  %add = shl i32 %10, 5
  %shl = add i32 %add, 32
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 53, i32 noundef 96, i32 noundef %shl) #10
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %mic2pre = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %mic2pre to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mic2pre, align 4
  %add5 = shl i32 %12, 5
  %shl6 = add i32 %add5, 32
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %8, i32 noundef 96, i32 noundef %shl6) #10
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg9 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %13 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg9, align 4
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %14, i32 noundef 96, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_pga_ina1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -176
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %ina_state.i = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 10
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %event, label %entry.max98088_line_pga.exit_crit_edge [
    i32 2, label %sw.bb29.i
    i32 8, label %sw.bb38.i
  ]

entry.max98088_line_pga.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %ina_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ina_state.i, align 1
  %or70.i = or i8 %8, 1
  store i8 %or70.i, ptr %ina_state.i, align 1
  %reg.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 4
  %conv33.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv33.i
  %call37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl.i, i32 noundef %shl.i) #10
  br label %max98088_line_pga.exit

sw.bb38.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %ina_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ina_state.i, align 1
  %and.i = and i8 %14, -2
  store i8 %and.i, ptr %ina_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp43.i = icmp eq i8 %and.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %sw.bb38.i.max98088_line_pga.exit_crit_edge

sw.bb38.i.max98088_line_pga.exit_crit_edge:       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

if.then45.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg46.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %15 = ptrtoint ptr %reg46.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg46.i, align 4
  %shift47.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %17 = ptrtoint ptr %shift47.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift47.i, align 4
  %conv48.i = zext i8 %18 to i32
  %shl49.i = shl nuw i32 1, %conv48.i
  %call50.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %16, i32 noundef %shl49.i, i32 noundef 0) #10
  br label %max98088_line_pga.exit

max98088_line_pga.exit:                           ; preds = %if.then45.i, %sw.bb38.i.max98088_line_pga.exit_crit_edge, %sw.bb29.i, %entry.max98088_line_pga.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.max98088_line_pga.exit_crit_edge ], [ 0, %sw.bb38.i.max98088_line_pga.exit_crit_edge ], [ 0, %if.then45.i ], [ 0, %sw.bb29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_pga_ina2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -176
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %ina_state.i = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 10
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %event, label %entry.max98088_line_pga.exit_crit_edge [
    i32 2, label %sw.bb29.i
    i32 8, label %sw.bb38.i
  ]

entry.max98088_line_pga.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %ina_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ina_state.i, align 1
  %or70.i = or i8 %8, 2
  store i8 %or70.i, ptr %ina_state.i, align 1
  %reg.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 4
  %conv33.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv33.i
  %call37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl.i, i32 noundef %shl.i) #10
  br label %max98088_line_pga.exit

sw.bb38.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %ina_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ina_state.i, align 1
  %and.i = and i8 %14, -3
  store i8 %and.i, ptr %ina_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp43.i = icmp eq i8 %and.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %sw.bb38.i.max98088_line_pga.exit_crit_edge

sw.bb38.i.max98088_line_pga.exit_crit_edge:       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

if.then45.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg46.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %15 = ptrtoint ptr %reg46.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg46.i, align 4
  %shift47.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %17 = ptrtoint ptr %shift47.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift47.i, align 4
  %conv48.i = zext i8 %18 to i32
  %shl49.i = shl nuw i32 1, %conv48.i
  %call50.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %16, i32 noundef %shl49.i, i32 noundef 0) #10
  br label %max98088_line_pga.exit

max98088_line_pga.exit:                           ; preds = %if.then45.i, %sw.bb38.i.max98088_line_pga.exit_crit_edge, %sw.bb29.i, %entry.max98088_line_pga.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.max98088_line_pga.exit_crit_edge ], [ 0, %sw.bb38.i.max98088_line_pga.exit_crit_edge ], [ 0, %if.then45.i ], [ 0, %sw.bb29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_pga_inb1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -176
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %inb_state.i = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 11
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %event, label %entry.max98088_line_pga.exit_crit_edge [
    i32 2, label %sw.bb29.i
    i32 8, label %sw.bb38.i
  ]

entry.max98088_line_pga.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %inb_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %inb_state.i, align 1
  %or70.i = or i8 %8, 1
  store i8 %or70.i, ptr %inb_state.i, align 1
  %reg.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 4
  %conv33.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv33.i
  %call37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl.i, i32 noundef %shl.i) #10
  br label %max98088_line_pga.exit

sw.bb38.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %inb_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %inb_state.i, align 1
  %and.i = and i8 %14, -2
  store i8 %and.i, ptr %inb_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp43.i = icmp eq i8 %and.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %sw.bb38.i.max98088_line_pga.exit_crit_edge

sw.bb38.i.max98088_line_pga.exit_crit_edge:       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

if.then45.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg46.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %15 = ptrtoint ptr %reg46.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg46.i, align 4
  %shift47.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %17 = ptrtoint ptr %shift47.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift47.i, align 4
  %conv48.i = zext i8 %18 to i32
  %shl49.i = shl nuw i32 1, %conv48.i
  %call50.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %16, i32 noundef %shl49.i, i32 noundef 0) #10
  br label %max98088_line_pga.exit

max98088_line_pga.exit:                           ; preds = %if.then45.i, %sw.bb38.i.max98088_line_pga.exit_crit_edge, %sw.bb29.i, %entry.max98088_line_pga.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.max98088_line_pga.exit_crit_edge ], [ 0, %sw.bb38.i.max98088_line_pga.exit_crit_edge ], [ 0, %if.then45.i ], [ 0, %sw.bb29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_pga_inb2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -176
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %inb_state.i = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 11
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %event, label %entry.max98088_line_pga.exit_crit_edge [
    i32 2, label %sw.bb29.i
    i32 8, label %sw.bb38.i
  ]

entry.max98088_line_pga.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %inb_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %inb_state.i, align 1
  %or70.i = or i8 %8, 2
  store i8 %or70.i, ptr %inb_state.i, align 1
  %reg.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift.i, align 4
  %conv33.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv33.i
  %call37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl.i, i32 noundef %shl.i) #10
  br label %max98088_line_pga.exit

sw.bb38.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %inb_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %inb_state.i, align 1
  %and.i = and i8 %14, -3
  store i8 %and.i, ptr %inb_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp43.i = icmp eq i8 %and.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %sw.bb38.i.max98088_line_pga.exit_crit_edge

sw.bb38.i.max98088_line_pga.exit_crit_edge:       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_line_pga.exit

if.then45.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg46.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %15 = ptrtoint ptr %reg46.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg46.i, align 4
  %shift47.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %17 = ptrtoint ptr %shift47.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift47.i, align 4
  %conv48.i = zext i8 %18 to i32
  %shl49.i = shl nuw i32 1, %conv48.i
  %call50.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %16, i32 noundef %shl49.i, i32 noundef 0) #10
  br label %max98088_line_pga.exit

max98088_line_pga.exit:                           ; preds = %if.then45.i, %sw.bb38.i.max98088_line_pga.exit_crit_edge, %sw.bb29.i, %entry.max98088_line_pga.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.max98088_line_pga.exit_crit_edge ], [ 0, %sw.bb38.i.max98088_line_pga.exit_crit_edge ], [ 0, %if.then45.i ], [ 0, %sw.bb29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max98088_handle_pdata(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  %controls.i = alloca [2 x %struct.snd_kcontrol_new], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98088_handle_pdata.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98088_handle_pdata, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !395

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98088_handle_pdata.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.228) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %digmic_left_mode = getelementptr inbounds %struct.max98088_pdata, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %digmic_left_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %digmic_left_mode, align 4
  %9 = lshr i8 %bf.load, 1
  %10 = and i8 %9, 48
  %conv22 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool23.not = icmp ne i8 %10, 0
  %cond = zext i1 %tobool23.not to i32
  %digmic = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %digmic to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %digmic, align 4
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 72, i32 noundef %conv22) #10
  %12 = ptrtoint ptr %digmic_left_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load26 = load i8, ptr %digmic_left_mode, align 4
  %13 = and i8 %bf.load26, -128
  %conv32 = zext i8 %13 to i32
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 42, i32 noundef 128, i32 noundef %conv32) #10
  %eq_cfgcnt = getelementptr inbounds %struct.max98088_pdata, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool34.not = icmp eq i32 %15, 0
  br i1 %tobool34.not, label %if.end7.cleanup_crit_edge, label %if.then35

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end7
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata1.i = getelementptr inbounds %struct.max98088_priv, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %controls.i) #10
  %22 = ptrtoint ptr %controls.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %controls.i, align 4
  %device.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %device.i, align 4
  %subdevice.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 2
  %24 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %subdevice.i, align 4
  %name.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 3
  %25 = load ptr, ptr @eq_mode_name, align 4
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %name.i, align 4
  %index.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 4
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %index.i, align 4
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 5
  %28 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %access.i, align 4
  %count.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 6
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %count.i, align 4
  %info.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 7
  %30 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @snd_soc_info_enum_double, ptr %info.i, align 4
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 8
  %31 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @max98088_get_eq_enum, ptr %get.i, align 4
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 9
  %32 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @max98088_put_eq_enum, ptr %put.i, align 4
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 10
  %33 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tlv.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 0, i32 11
  %eq_enum.i = getelementptr inbounds %struct.max98088_priv, ptr %19, i32 0, i32 9
  %34 = ptrtoint ptr %eq_enum.i to i32
  %35 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %private_value.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1
  %36 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %arrayinit.element.i, align 4
  %device3.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 1
  %37 = ptrtoint ptr %device3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %device3.i, align 4
  %subdevice4.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 2
  %38 = ptrtoint ptr %subdevice4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %subdevice4.i, align 4
  %name5.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 3
  %39 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @eq_mode_name, i32 0, i32 1), align 4
  %40 = ptrtoint ptr %name5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %name5.i, align 4
  %index6.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 4
  %41 = ptrtoint ptr %index6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %index6.i, align 4
  %access7.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 5
  %42 = ptrtoint ptr %access7.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %access7.i, align 4
  %count8.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 6
  %43 = ptrtoint ptr %count8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %count8.i, align 4
  %info9.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 7
  %44 = ptrtoint ptr %info9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @snd_soc_info_enum_double, ptr %info9.i, align 4
  %get10.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 8
  %45 = ptrtoint ptr %get10.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @max98088_get_eq_enum, ptr %get10.i, align 4
  %put11.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 9
  %46 = ptrtoint ptr %put11.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @max98088_put_eq_enum, ptr %put11.i, align 4
  %tlv12.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 10
  %47 = ptrtoint ptr %tlv12.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tlv12.i, align 4
  %private_value13.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %controls.i, i32 1, i32 11
  %48 = ptrtoint ptr %private_value13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %34, ptr %private_value13.i, align 4
  %49 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %21, align 4
  %eq_cfgcnt.i = getelementptr inbounds %struct.max98088_pdata, ptr %21, i32 0, i32 1
  %51 = ptrtoint ptr %eq_cfgcnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eq_cfgcnt.i, align 4
  %eq_textcnt.i = getelementptr inbounds %struct.max98088_priv, ptr %19, i32 0, i32 7
  %53 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %eq_textcnt.i, align 4
  %eq_texts.i = getelementptr inbounds %struct.max98088_priv, ptr %19, i32 0, i32 8
  %54 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %eq_texts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp89.not.i = icmp eq i32 %52, 0
  br i1 %cmp89.not.i, label %if.then35.for.end43.i_crit_edge, label %if.then35.for.cond15.preheader.i_crit_edge

if.then35.for.cond15.preheader.i_crit_edge:       ; preds = %if.then35
  br label %for.cond15.preheader.i

if.then35.for.end43.i_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43.i

for.cond15.preheaderthread-pre-split.i:           ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr.i = load i32, ptr %eq_textcnt.i, align 4
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.cond15.preheaderthread-pre-split.i, %if.then35.for.cond15.preheader.i_crit_edge
  %56 = phi i32 [ %.pr.i, %for.cond15.preheaderthread-pre-split.i ], [ 0, %if.then35.for.cond15.preheader.i_crit_edge ]
  %i.090.i = phi i32 [ %inc42.i, %for.cond15.preheaderthread-pre-split.i ], [ 0, %if.then35.for.cond15.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1784.i = icmp sgt i32 %56, 0
  br i1 %cmp1784.i, label %for.body18.lr.ph.i, label %for.cond15.preheader.i.for.end.i_crit_edge

for.cond15.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body18.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %arrayidx.i = getelementptr %struct.max98088_eq_cfg, ptr %50, i32 %i.090.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %59 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eq_texts.i, align 4
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %j.085.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.inc.i.for.body18.i_crit_edge ]
  %arrayidx21.i = getelementptr ptr, ptr %60, i32 %j.085.i
  %61 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx21.i, align 4
  %call22.i = tail call i32 @strcmp(ptr noundef %58, ptr noundef %62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.i, label %for.body18.i.for.end.i_crit_edge, label %for.inc.i

for.body18.i.for.end.i_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body18.i
  %inc.i = add nuw nsw i32 %j.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %56
  br i1 %exitcond.not.i, label %for.inc.i.if.end27.i_crit_edge, label %for.inc.i.for.body18.i_crit_edge

for.inc.i.for.body18.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i

for.inc.i.if.end27.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

for.end.i:                                        ; preds = %for.body18.i.for.end.i_crit_edge, %for.cond15.preheader.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.cond15.preheader.i.for.end.i_crit_edge ], [ %j.085.i, %for.body18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %56)
  %cmp25.not.i = icmp eq i32 %j.0.lcssa.i, %56
  br i1 %cmp25.not.i, label %for.end.i.if.end27.i_crit_edge, label %for.end.i.for.inc41.i_crit_edge

for.end.i.for.inc41.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc41.i

for.end.i.if.end27.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.end.i.if.end27.i_crit_edge, %for.inc.i.if.end27.i_crit_edge
  %63 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %eq_texts.i, align 4
  %add.i = shl i32 %56, 2
  %mul.i = add i32 %add.i, 4
  %call30.i = tail call noalias ptr @krealloc(ptr noundef %64, i32 noundef %mul.i, i32 noundef 3264) #15
  %cmp31.i = icmp eq ptr %call30.i, null
  br i1 %cmp31.i, label %if.end27.i.for.inc41.i_crit_edge, label %if.end33.i

if.end27.i.for.inc41.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc41.i

if.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx34.i = getelementptr %struct.max98088_eq_cfg, ptr %50, i32 %i.090.i
  %65 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx34.i, align 4
  %67 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eq_textcnt.i, align 4
  %arrayidx37.i = getelementptr ptr, ptr %call30.i, i32 %68
  %69 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %arrayidx37.i, align 4
  %70 = load i32, ptr %eq_textcnt.i, align 4
  %inc39.i = add i32 %70, 1
  store i32 %inc39.i, ptr %eq_textcnt.i, align 4
  %71 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call30.i, ptr %eq_texts.i, align 4
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %if.end33.i, %if.end27.i.for.inc41.i_crit_edge, %for.end.i.for.inc41.i_crit_edge
  %inc42.i = add nuw i32 %i.090.i, 1
  %exitcond91.not.i = icmp eq i32 %inc42.i, %52
  br i1 %exitcond91.not.i, label %for.inc41.i.for.end43.i_crit_edge, label %for.cond15.preheaderthread-pre-split.i

for.inc41.i.for.end43.i_crit_edge:                ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.inc41.i.for.end43.i_crit_edge, %if.then35.for.end43.i_crit_edge
  %72 = ptrtoint ptr %eq_texts.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %eq_texts.i, align 4
  %texts.i = getelementptr inbounds %struct.max98088_priv, ptr %19, i32 0, i32 9, i32 5
  %74 = ptrtoint ptr %texts.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %texts.i, align 4
  %75 = ptrtoint ptr %eq_textcnt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %eq_textcnt.i, align 4
  %items.i = getelementptr inbounds %struct.max98088_priv, ptr %19, i32 0, i32 9, i32 3
  %77 = ptrtoint ptr %items.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %items.i, align 4
  %call48.i = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %controls.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.not.i = icmp eq i32 %call48.i, 0
  br i1 %cmp49.not.i, label %for.end43.i.max98088_handle_eq_pdata.exit_crit_edge, label %do.end53.i

for.end43.i.max98088_handle_eq_pdata.exit_crit_edge: ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98088_handle_eq_pdata.exit

do.end53.i:                                       ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.229, i32 noundef %call48.i) #13
  br label %max98088_handle_eq_pdata.exit

max98088_handle_eq_pdata.exit:                    ; preds = %do.end53.i, %for.end43.i.max98088_handle_eq_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %controls.i) #10
  br label %cleanup

cleanup:                                          ; preds = %max98088_handle_eq_pdata.exit, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_get_eq_enum(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call i32 @match_string(ptr noundef nonnull @eq_mode_name, i32 noundef 2, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max98088_get_channel.exit.thread, label %if.end

max98088_get_channel.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.233, ptr noundef %name) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %eq_sel = getelementptr %struct.max98088_priv, ptr %5, i32 0, i32 6, i32 %call.i, i32 2
  %8 = ptrtoint ptr %eq_sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eq_sel, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %max98088_get_channel.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %max98088_get_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_put_eq_enum(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %pdata2 = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call i32 @match_string(ptr noundef nonnull @eq_mode_name, i32 noundef 2, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max98088_get_channel.exit.thread, label %if.end

max98088_get_channel.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.233, ptr noundef %name) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %eq_cfgcnt = getelementptr inbounds %struct.max98088_pdata, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5.not = icmp ult i32 %11, %13
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %eq_sel = getelementptr %struct.max98088_priv, ptr %5, i32 0, i32 6, i32 %call.i, i32 2
  %14 = ptrtoint ptr %eq_sel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %eq_sel, align 4
  %15 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %call.i, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @max98088_setup_eq1(ptr noundef %1)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @max98088_setup_eq2(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %max98088_get_channel.exit.thread
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb ], [ %call.i, %max98088_get_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max98088_setup_eq1(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %dai = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 6
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %eq_textcnt = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %eq_textcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eq_textcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dai, align 4
  %eq_sel = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %eq_sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eq_sel, align 4
  %eq_cfgcnt = getelementptr inbounds %struct.max98088_pdata, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp97.not = icmp eq i32 %13, 0
  br i1 %cmp97.not, label %if.end.do.body_crit_edge, label %for.body.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %eq_texts = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %eq_texts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eq_texts, align 4
  %arrayidx4 = getelementptr ptr, ptr %17, i32 %11
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_val.098 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.max98088_eq_cfg, ptr %15, i32 %i.099
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %19) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %rate9 = getelementptr %struct.max98088_eq_cfg, ptr %15, i32 %i.099, i32 1
  %22 = ptrtoint ptr %rate9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate9, align 4
  %sub = sub i32 %23, %9
  %24 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %best_val.098)
  %cmp12 = icmp slt i32 %24, %best_val.098
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %best_val.098)
  %spec.select96 = select i1 %cmp12, i32 %i.099, i32 %best.0101
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %best_val.1 = phi i32 [ %best_val.098, %for.body.for.inc_crit_edge ], [ %25, %land.lhs.true ]
  %best.1 = phi i32 [ %best.0101, %for.body.for.inc_crit_edge ], [ %spec.select96, %land.lhs.true ]
  %inc = add nuw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge
  %best.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %best.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98088_setup_eq1.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98088_setup_eq1, %if.then32)) #10
          to label %do.end [label %if.then32], !srcloc !395

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %arrayidx34 = getelementptr %struct.max98088_eq_cfg, ptr %29, i32 %best.0.lcssa
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %rate38 = getelementptr %struct.max98088_eq_cfg, ptr %29, i32 %best.0.lcssa, i32 1
  %32 = ptrtoint ptr %rate38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98088_setup_eq1.__UNIQUE_ID_ddebug295, ptr noundef %27, ptr noundef nonnull @.str.236, ptr noundef %31, i32 noundef %33, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %call40 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 73) #10
  %call41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 73, i32 noundef 1, i32 noundef 0) #10
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %band1 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 2
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 0, i32 noundef 0, ptr noundef %band1)
  %band2 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 3
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 0, i32 noundef 1, ptr noundef %band2)
  %band3 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 4
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 0, i32 noundef 2, ptr noundef %band3)
  %band4 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 5
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 0, i32 noundef 3, ptr noundef %band4)
  %band5 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 6
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 0, i32 noundef 4, ptr noundef %band5)
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 73, i32 noundef 1, i32 noundef %call40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max98088_setup_eq2(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %arrayidx = getelementptr %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %eq_textcnt = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %eq_textcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eq_textcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %eq_sel = getelementptr %struct.max98088_priv, ptr %3, i32 0, i32 6, i32 1, i32 2
  %10 = ptrtoint ptr %eq_sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eq_sel, align 4
  %eq_cfgcnt = getelementptr inbounds %struct.max98088_pdata, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %eq_cfgcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eq_cfgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp97.not = icmp eq i32 %13, 0
  br i1 %cmp97.not, label %if.end.do.body_crit_edge, label %for.body.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %eq_texts = getelementptr inbounds %struct.max98088_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %eq_texts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eq_texts, align 4
  %arrayidx4 = getelementptr ptr, ptr %17, i32 %11
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_val.098 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.max98088_eq_cfg, ptr %15, i32 %i.099
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %19) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %rate9 = getelementptr %struct.max98088_eq_cfg, ptr %15, i32 %i.099, i32 1
  %22 = ptrtoint ptr %rate9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate9, align 4
  %sub = sub i32 %23, %9
  %24 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %best_val.098)
  %cmp12 = icmp slt i32 %24, %best_val.098
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %best_val.098)
  %spec.select96 = select i1 %cmp12, i32 %i.099, i32 %best.0101
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %best_val.1 = phi i32 [ %best_val.098, %for.body.for.inc_crit_edge ], [ %25, %land.lhs.true ]
  %best.1 = phi i32 [ %best.0101, %for.body.for.inc_crit_edge ], [ %spec.select96, %land.lhs.true ]
  %inc = add nuw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge
  %best.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %best.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98088_setup_eq2.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98088_setup_eq2, %if.then32)) #10
          to label %do.end [label %if.then32], !srcloc !395

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %arrayidx34 = getelementptr %struct.max98088_eq_cfg, ptr %29, i32 %best.0.lcssa
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %rate38 = getelementptr %struct.max98088_eq_cfg, ptr %29, i32 %best.0.lcssa, i32 1
  %32 = ptrtoint ptr %rate38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98088_setup_eq2.__UNIQUE_ID_ddebug296, ptr noundef %27, ptr noundef nonnull @.str.236, ptr noundef %31, i32 noundef %33, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %call40 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 73) #10
  %call41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 73, i32 noundef 2, i32 noundef 0) #10
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %band1 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 2
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 1, i32 noundef 0, ptr noundef %band1)
  %band2 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 3
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 1, i32 noundef 1, ptr noundef %band2)
  %band3 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 4
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 1, i32 noundef 2, ptr noundef %band3)
  %band4 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 5
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 1, i32 noundef 3, ptr noundef %band4)
  %band5 = getelementptr %struct.max98088_eq_cfg, ptr %35, i32 %11, i32 6
  tail call fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef 1, i32 noundef 4, ptr noundef %band5)
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 73, i32 noundef 2, i32 noundef %call40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m98088_eq_band(ptr noundef %component, i32 noundef %dai, i32 noundef %band, ptr nocapture noundef readonly %coefs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dai)
  %tobool54.not = icmp eq i32 %dai, 0
  %cond = select i1 %tobool54.not, i32 82, i32 132
  %mul = mul i32 %band, 10
  %add = add i32 %cond, %mul
  %inc = or i32 %add, 1
  %0 = ptrtoint ptr %coefs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coefs, align 2
  %2 = lshr i16 %1, 8
  %3 = zext i16 %2 to i32
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %3) #10
  %inc56 = add i32 %add, 2
  %4 = ptrtoint ptr %coefs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %coefs, align 2
  %6 = and i16 %5, 255
  %and59 = zext i16 %6 to i32
  %call60 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc, i32 noundef %and59) #10
  %inc.1 = or i32 %inc56, 1
  %arrayidx.1 = getelementptr i16, ptr %coefs, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  %9 = lshr i16 %8, 8
  %10 = zext i16 %9 to i32
  %call.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56, i32 noundef %10) #10
  %inc56.1 = add i32 %add, 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.1, align 2
  %13 = and i16 %12, 255
  %and59.1 = zext i16 %13 to i32
  %call60.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.1, i32 noundef %and59.1) #10
  %inc.2 = or i32 %inc56.1, 1
  %arrayidx.2 = getelementptr i16, ptr %coefs, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  %16 = lshr i16 %15, 8
  %17 = zext i16 %16 to i32
  %call.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.1, i32 noundef %17) #10
  %inc56.2 = add i32 %add, 6
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %20 = and i16 %19, 255
  %and59.2 = zext i16 %20 to i32
  %call60.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.2, i32 noundef %and59.2) #10
  %inc.3 = or i32 %inc56.2, 1
  %arrayidx.3 = getelementptr i16, ptr %coefs, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.3, align 2
  %23 = lshr i16 %22, 8
  %24 = zext i16 %23 to i32
  %call.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.2, i32 noundef %24) #10
  %inc56.3 = add i32 %add, 8
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.3, align 2
  %27 = and i16 %26, 255
  %and59.3 = zext i16 %27 to i32
  %call60.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.3, i32 noundef %and59.3) #10
  %inc.4 = or i32 %inc56.3, 1
  %arrayidx.4 = getelementptr i16, ptr %coefs, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4, align 2
  %30 = lshr i16 %29, 8
  %31 = zext i16 %30 to i32
  %call.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc56.3, i32 noundef %31) #10
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.4, align 2
  %34 = and i16 %33, 255
  %and59.4 = zext i16 %34 to i32
  %call60.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %inc.4, i32 noundef %and59.4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %sysclk = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %freq) #10
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %call5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %freq.addr.0 = phi i32 [ %freq, %if.end.if.end8_crit_edge ], [ %call5, %if.then3 ]
  %12 = add i32 %freq.addr.0, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %12)
  %13 = icmp ult i32 %12, 10000000
  br i1 %13, label %if.end8.if.end21_crit_edge, label %if.else

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %if.end8
  %14 = add i32 %freq.addr.0, -20000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %14)
  %15 = icmp ult i32 %14, 10000000
  br i1 %15, label %if.else.if.end21_crit_edge, label %do.end

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.240) #13
  br label %cleanup

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %.sink62 = phi i32 [ 16, %if.end8.if.end21_crit_edge ], [ 32, %if.else.if.end21_crit_edge ]
  %.sink = phi i8 [ 1, %if.end8.if.end21_crit_edge ], [ 2, %if.else.if.end21_crit_edge ]
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 16, i32 noundef %.sink62) #10
  %mclk_prescaler18 = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %mclk_prescaler18 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %mclk_prescaler18, align 4
  %call22 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 81) #10
  %and = and i32 %call22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end21.do.body27_crit_edge, label %if.then23

if.end21.do.body27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 81, i32 noundef 128, i32 noundef 0) #10
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 81, i32 noundef 128, i32 noundef 128) #10
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %if.end21.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98088_dai_set_sysclk.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98088_dai_set_sysclk, %if.then32)) #10
          to label %do.end36 [label %if.then32], !srcloc !395

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %19 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98088_dai_set_sysclk.__UNIQUE_ID_ddebug294, ptr noundef %20, ptr noundef nonnull @.str.242, i32 noundef %clk_id, i32 noundef %freq.addr.0) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body27
  %21 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %freq.addr.0, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end36 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai1_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %fmt2 = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fmt)
  %cmp.not = icmp eq i32 %7, %fmt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %fmt2, align 4
  %and = and i32 %fmt, 61440
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %10, label %do.end [
    i32 3, label %sw.bb
    i32 0, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 18, i32 noundef 128) #10
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 19, i32 noundef 0) #10
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.243) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge
  %reg14val.0 = phi i8 [ 0, %sw.bb ], [ -128, %if.then.sw.epilog_crit_edge ]
  %and9 = and i32 %fmt, 15
  %14 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 3, label %sw.epilog.sw.epilog15_crit_edge
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %15 = or i8 %reg14val.0, 16
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb10, %sw.epilog.sw.epilog15_crit_edge
  %reg14val.1 = phi i8 [ %reg14val.0, %sw.epilog.sw.epilog15_crit_edge ], [ %15, %sw.bb10 ]
  %and16 = lshr i32 %fmt, 8
  %16 = and i32 %and16, 15
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %16, label %sw.epilog15.cleanup_crit_edge [
    i32 0, label %sw.epilog15.sw.epilog30_crit_edge
    i32 2, label %sw.bb17
    i32 3, label %sw.bb21
    i32 4, label %sw.bb25
  ]

sw.epilog15.sw.epilog30_crit_edge:                ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog30

sw.epilog15.cleanup_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i8 %reg14val.1, 64
  br label %sw.epilog30

sw.bb21:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  %19 = or i8 %reg14val.1, 32
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  %20 = or i8 %reg14val.1, 96
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb25, %sw.bb21, %sw.bb17, %sw.epilog15.sw.epilog30_crit_edge
  %reg14val.2 = phi i8 [ %20, %sw.bb25 ], [ %19, %sw.bb21 ], [ %18, %sw.bb17 ], [ %reg14val.1, %sw.epilog15.sw.epilog30_crit_edge ]
  %conv31 = zext i8 %reg14val.2 to i32
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 20, i32 noundef 240, i32 noundef %conv31) #10
  %digmic = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 13
  %21 = ptrtoint ptr %digmic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %digmic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 65
  %call38 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 21, i32 noundef %spec.select) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %sw.epilog15.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog15.cleanup_crit_edge ], [ 0, %sw.epilog30 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai1_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 128
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 47, i32 noundef 128, i32 noundef %.) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai1_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %dai2 = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !396
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %13 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %call1.i, label %params_width.exit.cleanup239_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb6
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

params_width.exit.cleanup239_crit_edge:           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

sw.bb6:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %params_width.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb6 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 20, i32 noundef 1, i32 noundef %.sink) #10
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 81, i32 noundef 128, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %7)
  %cmp2.not.i = icmp ugt i32 %7, 8000
  br i1 %cmp2.not.i, label %for.inc.i, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %7)
  %cmp2.not.1.i = icmp ugt i32 %7, 11025
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %7)
  %cmp2.not.2.i = icmp ugt i32 %7, 16000
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end_crit_edge

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %7)
  %cmp2.not.3.i = icmp ugt i32 %7, 22050
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end_crit_edge

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %7)
  %cmp2.not.4.i = icmp ugt i32 %7, 24000
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end_crit_edge

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %7)
  %cmp2.not.5.i = icmp ugt i32 %7, 32000
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end_crit_edge

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %7)
  %cmp2.not.6.i = icmp ugt i32 %7, 44100
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end_crit_edge

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp2.not.7.i = icmp ugt i32 %7, 48000
  br i1 %cmp2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end_crit_edge

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %7)
  %cmp2.not.8.i = icmp ugt i32 %7, 88200
  br i1 %cmp2.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end_crit_edge

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %7)
  %cmp2.not.9.i = icmp ugt i32 %7, 96000
  br i1 %cmp2.not.9.i, label %for.inc.8.i.cleanup239_crit_edge, label %for.inc.8.i.if.end_crit_edge

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.8.i.cleanup239_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

if.end:                                           ; preds = %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %sw.epilog.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ]
  %sr.i = getelementptr [10 x %struct.anon.108], ptr @rate_table, i32 0, i32 %i.09.lcssa.i, i32 1
  %14 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr.i, align 4
  %conv = zext i8 %15 to i32
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 17, i32 noundef 255, i32 noundef %conv) #10
  %16 = ptrtoint ptr %dai2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %dai2, align 4
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 20) #10
  %and = and i32 %call12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end230_crit_edge, label %if.then14

if.end.if.end230_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then14:                                        ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %cleanup.thread, label %if.end17

cleanup.thread:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.245) #13
  br label %cleanup239

if.end17:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp18 = icmp ult i32 %7, 50000
  %mul = select i1 %cmp18, i64 6291456, i64 3145728
  %conv20 = zext i32 %7 to i64
  %mul21 = mul nuw nsw i64 %mul, %conv20
  %mclk_prescaler = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %mclk_prescaler to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mclk_prescaler, align 4
  %conv23 = zext i8 %22 to i32
  %div348 = lshr i32 %conv23, 1
  %add = add i32 %div348, %18
  %div25 = udiv i32 %add, %conv23
  %div27349 = lshr i32 %div25, 1
  %conv28 = zext i32 %div27349 to i64
  %add29 = add nuw nsw i64 %mul21, %conv28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add29)
  %cmp206 = icmp ult i64 %add29, 4294967296
  br i1 %cmp206, label %if.then210, label %if.else216, !prof !397

if.then210:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %conv211 = trunc i64 %add29 to i32
  %div214 = udiv i32 %conv211, %div25
  br label %cleanup

if.else216:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div25, i64 %add29) #17, !srcloc !398
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t365 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else216, %if.then210
  %_tmp.0.off0 = phi i32 [ %div214, %if.then210 ], [ %extract.t365, %if.else216 ]
  %24 = lshr i32 %_tmp.0.off0, 8
  %conv225 = and i32 %24, 127
  %call226 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 18, i32 noundef %conv225) #10
  %conv228 = and i32 %_tmp.0.off0, 255
  %call229 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 19, i32 noundef %conv228) #10
  br label %if.end230

if.end230:                                        ; preds = %cleanup, %if.end.if.end230_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp231 = icmp ult i32 %7, 50000
  %. = select i1 %cmp231, i32 0, i32 8
  %call236 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 24, i32 noundef 8, i32 noundef %.) #10
  %call238 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 81, i32 noundef 128, i32 noundef 128) #10
  br label %cleanup239

cleanup239:                                       ; preds = %if.end230, %cleanup.thread, %for.inc.8.i.cleanup239_crit_edge, %params_width.exit.cleanup239_crit_edge
  %retval.1 = phi i32 [ 0, %if.end230 ], [ -22, %params_width.exit.cleanup239_crit_edge ], [ -22, %for.inc.8.i.cleanup239_crit_edge ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai2_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %fmt2 = getelementptr %struct.max98088_priv, ptr %5, i32 0, i32 6, i32 1, i32 1
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fmt)
  %cmp.not = icmp eq i32 %7, %fmt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %fmt2, align 4
  %and = and i32 %fmt, 61440
  %9 = add nsw i32 %and, -4096
  %10 = lshr exact i32 %9, 12
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %10, label %do.end [
    i32 3, label %sw.bb
    i32 0, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 26, i32 noundef 128) #10
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef 0) #10
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.243) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge
  %reg1Cval.0 = phi i8 [ 0, %sw.bb ], [ -128, %if.then.sw.epilog_crit_edge ]
  %and9 = and i32 %fmt, 15
  %14 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb10
    i32 3, label %sw.epilog.sw.epilog15_crit_edge
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %15 = or i8 %reg1Cval.0, 16
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb10, %sw.epilog.sw.epilog15_crit_edge
  %reg1Cval.1 = phi i8 [ %reg1Cval.0, %sw.epilog.sw.epilog15_crit_edge ], [ %15, %sw.bb10 ]
  %and16 = lshr i32 %fmt, 8
  %16 = and i32 %and16, 15
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %16, label %sw.epilog15.cleanup_crit_edge [
    i32 0, label %sw.epilog15.sw.epilog30_crit_edge
    i32 2, label %sw.bb17
    i32 3, label %sw.bb21
    i32 4, label %sw.bb25
  ]

sw.epilog15.sw.epilog30_crit_edge:                ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog30

sw.epilog15.cleanup_crit_edge:                    ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i8 %reg1Cval.1, 64
  br label %sw.epilog30

sw.bb21:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  %19 = or i8 %reg1Cval.1, 32
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #12
  %20 = or i8 %reg1Cval.1, 96
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb25, %sw.bb21, %sw.bb17, %sw.epilog15.sw.epilog30_crit_edge
  %reg1Cval.2 = phi i8 [ %20, %sw.bb25 ], [ %19, %sw.bb21 ], [ %18, %sw.bb17 ], [ %reg1Cval.1, %sw.epilog15.sw.epilog30_crit_edge ]
  %conv31 = zext i8 %reg1Cval.2 to i32
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 240, i32 noundef %conv31) #10
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 29, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %sw.epilog15.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog15.cleanup_crit_edge ], [ 0, %sw.epilog30 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai2_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 128
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 49, i32 noundef 128, i32 noundef %.) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98088_dai2_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %arrayidx = getelementptr %struct.max98088_priv, ptr %5, i32 0, i32 6, i32 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !396
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %13 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %call1.i, label %params_width.exit.cleanup239_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb6
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

params_width.exit.cleanup239_crit_edge:           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

sw.bb6:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %params_width.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb6 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 1, i32 noundef %.sink) #10
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 81, i32 noundef 128, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %7)
  %cmp2.not.i = icmp ugt i32 %7, 8000
  br i1 %cmp2.not.i, label %for.inc.i, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %7)
  %cmp2.not.1.i = icmp ugt i32 %7, 11025
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %7)
  %cmp2.not.2.i = icmp ugt i32 %7, 16000
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end_crit_edge

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %7)
  %cmp2.not.3.i = icmp ugt i32 %7, 22050
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end_crit_edge

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %7)
  %cmp2.not.4.i = icmp ugt i32 %7, 24000
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end_crit_edge

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %7)
  %cmp2.not.5.i = icmp ugt i32 %7, 32000
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end_crit_edge

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %7)
  %cmp2.not.6.i = icmp ugt i32 %7, 44100
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end_crit_edge

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp2.not.7.i = icmp ugt i32 %7, 48000
  br i1 %cmp2.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end_crit_edge

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %7)
  %cmp2.not.8.i = icmp ugt i32 %7, 88200
  br i1 %cmp2.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end_crit_edge

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %7)
  %cmp2.not.9.i = icmp ugt i32 %7, 96000
  br i1 %cmp2.not.9.i, label %for.inc.8.i.cleanup239_crit_edge, label %for.inc.8.i.if.end_crit_edge

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.8.i.cleanup239_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

if.end:                                           ; preds = %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %sw.epilog.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ]
  %sr.i = getelementptr [10 x %struct.anon.108], ptr @rate_table, i32 0, i32 %i.09.lcssa.i, i32 1
  %14 = ptrtoint ptr %sr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sr.i, align 4
  %conv = zext i8 %15 to i32
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 255, i32 noundef %conv) #10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %arrayidx, align 4
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 28) #10
  %and = and i32 %call12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end230_crit_edge, label %if.then14

if.end.if.end230_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then14:                                        ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %cleanup.thread, label %if.end17

cleanup.thread:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.245) #13
  br label %cleanup239

if.end17:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp18 = icmp ult i32 %7, 50000
  %mul = select i1 %cmp18, i64 6291456, i64 3145728
  %conv20 = zext i32 %7 to i64
  %mul21 = mul nuw nsw i64 %mul, %conv20
  %mclk_prescaler = getelementptr inbounds %struct.max98088_priv, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %mclk_prescaler to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mclk_prescaler, align 4
  %conv23 = zext i8 %22 to i32
  %div348 = lshr i32 %conv23, 1
  %add = add i32 %div348, %18
  %div25 = udiv i32 %add, %conv23
  %div27349 = lshr i32 %div25, 1
  %conv28 = zext i32 %div27349 to i64
  %add29 = add nuw nsw i64 %mul21, %conv28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add29)
  %cmp206 = icmp ult i64 %add29, 4294967296
  br i1 %cmp206, label %if.then210, label %if.else216, !prof !397

if.then210:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %conv211 = trunc i64 %add29 to i32
  %div214 = udiv i32 %conv211, %div25
  br label %cleanup

if.else216:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div25, i64 %add29) #17, !srcloc !398
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t365 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else216, %if.then210
  %_tmp.0.off0 = phi i32 [ %div214, %if.then210 ], [ %extract.t365, %if.else216 ]
  %24 = lshr i32 %_tmp.0.off0, 8
  %conv225 = and i32 %24, 127
  %call226 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 26, i32 noundef %conv225) #10
  %conv228 = and i32 %_tmp.0.off0, 255
  %call229 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef %conv228) #10
  br label %if.end230

if.end230:                                        ; preds = %cleanup, %if.end.if.end230_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %7)
  %cmp231 = icmp ult i32 %7, 50000
  %. = select i1 %cmp231, i32 0, i32 8
  %call236 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 8, i32 noundef %.) #10
  %call238 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 81, i32 noundef 128, i32 noundef 128) #10
  br label %cleanup239

cleanup239:                                       ; preds = %if.end230, %cleanup.thread, %for.inc.8.i.cleanup239_crit_edge, %params_width.exit.cleanup239_crit_edge
  %retval.1 = phi i32 [ 0, %if.end230 ], [ -22, %params_width.exit.cleanup239_crit_edge ], [ -22, %for.inc.8.i.cleanup239_crit_edge ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !174, !176, !177, !179, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !309, !310, !311, !313, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !326, !328, !330, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !346, !348, !350, !352, !354, !355, !356, !357, !359, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !374, !376, !377, !378, !380, !381, !382, !384}
!llvm.module.flags = !{!386, !387, !388, !389, !390, !391, !392, !393}
!llvm.ident = !{!394}

!0 = !{ptr @__initcall__kmod_snd_soc_max98088__299_1799_max98088_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_max98088__299_1799_max98088_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98088.c", i32 1799, i32 1}
!2 = !{ptr @__exitcall_max98088_i2c_driver_exit, !1, !"__exitcall_max98088_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description300, !4, !"__UNIQUE_ID_description300", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/max98088.c", i32 1801, i32 1}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/max98088.c", i32 1802, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/max98088.c", i32 1803, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98088.c", i32 1792, i32 11}
!12 = !{ptr @max98088_i2c_driver, !13, !"max98088_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/max98088.c", i32 1790, i32 26}
!14 = !{ptr @max98088_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/max98088.c", i32 1755, i32 27}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/max98088.c", i32 1759, i32 43}
!19 = !{ptr @max98088_regmap, !20, !"max98088_regmap", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/max98088.c", i32 293, i32 35}
!21 = !{ptr @max98088_reg, !22, !"max98088_reg", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/max98088.c", i32 59, i32 33}
!23 = !{ptr @soc_component_dev_max98088, !24, !"soc_component_dev_max98088", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/max98088.c", i32 1727, i32 46}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/max98088.c", i32 451, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/max98088.c", i32 453, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/max98088.c", i32 455, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/max98088.c", i32 458, i32 8}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/max98088.c", i32 460, i32 8}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/max98088.c", i32 462, i32 8}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/max98088.c", i32 465, i32 8}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/max98088.c", i32 466, i32 8}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/max98088.c", i32 468, i32 8}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/max98088.c", i32 472, i32 8}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/max98088.c", i32 477, i32 8}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/max98088.c", i32 478, i32 8}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/max98088.c", i32 480, i32 8}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/max98088.c", i32 481, i32 8}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/max98088.c", i32 483, i32 8}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/max98088.c", i32 484, i32 8}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/max98088.c", i32 486, i32 8}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/max98088.c", i32 487, i32 8}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/max98088.c", i32 489, i32 8}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/max98088.c", i32 490, i32 8}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/max98088.c", i32 492, i32 8}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/max98088.c", i32 493, i32 8}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/max98088.c", i32 494, i32 8}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/max98088.c", i32 495, i32 8}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/max98088.c", i32 498, i32 8}
!75 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/max98088.c", i32 499, i32 8}
!77 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/max98088.c", i32 500, i32 8}
!79 = !{ptr @.str.51, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/max98088.c", i32 501, i32 8}
!81 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/max98088.c", i32 503, i32 8}
!83 = !{ptr @.str.55, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/max98088.c", i32 505, i32 8}
!85 = !{ptr @.str.57, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/max98088.c", i32 506, i32 8}
!87 = !{ptr @.str.59, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/max98088.c", i32 507, i32 8}
!89 = !{ptr @.str.61, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/max98088.c", i32 509, i32 8}
!91 = !{ptr @.str.63, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/max98088.c", i32 510, i32 8}
!93 = !{ptr @max98088_snd_controls, !94, !"max98088_snd_controls", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/max98088.c", i32 449, i32 38}
!95 = !{ptr @max98088_hp_tlv, !96, !"max98088_hp_tlv", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/max98088.c", i32 433, i32 14}
!97 = !{ptr @max98088_spk_tlv, !98, !"max98088_spk_tlv", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/max98088.c", i32 441, i32 14}
!99 = !{ptr @max98088_micboost_tlv, !100, !"max98088_micboost_tlv", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/max98088.c", i32 428, i32 14}
!101 = !{ptr @max98088_exmode_enum, !102, !"max98088_exmode_enum", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/max98088.c", i32 345, i32 8}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 8}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 15}
!107 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 24}
!109 = !{ptr @.str.68, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 33}
!111 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 42}
!113 = !{ptr @.str.70, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 51}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/max98088.c", i32 337, i32 61}
!117 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/max98088.c", i32 338, i32 8}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/max98088.c", i32 338, i32 21}
!121 = !{ptr @max98088_exmode_texts, !122, !"max98088_exmode_texts", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/max98088.c", i32 336, i32 20}
!123 = !{ptr @max98088_exmode_values, !124, !"max98088_exmode_values", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/max98088.c", i32 341, i32 27}
!125 = !{ptr @max98088_ex_thresh_enum, !126, !"max98088_ex_thresh_enum", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/max98088.c", i32 352, i32 8}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 8}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 15}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 22}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 29}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 36}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 43}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 50}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/max98088.c", i32 351, i32 57}
!143 = !{ptr @max98088_ex_thresh, !144, !"max98088_ex_thresh", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/max98088.c", i32 350, i32 20}
!145 = !{ptr @max98088_filter_mode_enum, !146, !"max98088_filter_mode_enum", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/max98088.c", i32 357, i32 8}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/max98088.c", i32 356, i32 44}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/max98088.c", i32 356, i32 53}
!151 = !{ptr @max98088_fltr_mode, !152, !"max98088_fltr_mode", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/max98088.c", i32 356, i32 20}
!153 = !{ptr @max98088_dai1_dac_filter_enum, !154, !"max98088_dai1_dac_filter_enum", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/max98088.c", i32 373, i32 8}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/max98088.c", i32 371, i32 15}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/max98088.c", i32 371, i32 32}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/max98088.c", i32 372, i32 8}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/max98088.c", i32 372, i32 24}
!163 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/max98088.c", i32 372, i32 40}
!165 = !{ptr @max98088_dai1_fltr, !166, !"max98088_dai1_fltr", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/max98088.c", i32 370, i32 20}
!167 = !{ptr @max98088_dai1_adc_filter_enum, !168, !"max98088_dai1_adc_filter_enum", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/max98088.c", i32 376, i32 8}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/max98088.c", i32 714, i32 8}
!171 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/max98088.c", i32 715, i32 8}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/max98088.c", i32 717, i32 8}
!176 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/max98088.c", i32 719, i32 8}
!179 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/max98088.c", i32 721, i32 8}
!181 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/max98088.c", i32 723, i32 8}
!184 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/max98088.c", i32 726, i32 8}
!186 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/max98088.c", i32 728, i32 8}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/max98088.c", i32 731, i32 8}
!190 = !{ptr @.str.101, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/max98088.c", i32 733, i32 8}
!192 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/max98088.c", i32 736, i32 8}
!194 = !{ptr @.str.103, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/max98088.c", i32 738, i32 8}
!196 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/max98088.c", i32 741, i32 8}
!198 = !{ptr @.str.105, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/max98088.c", i32 744, i32 8}
!200 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/max98088.c", i32 748, i32 8}
!202 = !{ptr @.str.107, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/max98088.c", i32 752, i32 8}
!204 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/max98088.c", i32 756, i32 8}
!206 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/max98088.c", i32 760, i32 8}
!208 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/max98088.c", i32 764, i32 8}
!210 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/max98088.c", i32 768, i32 8}
!212 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/max98088.c", i32 772, i32 8}
!214 = !{ptr @.str.113, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/max98088.c", i32 776, i32 8}
!216 = !{ptr @.str.114, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/max98088.c", i32 780, i32 8}
!218 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/max98088.c", i32 784, i32 8}
!220 = !{ptr @.str.116, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/max98088.c", i32 788, i32 8}
!222 = !{ptr @.str.117, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/max98088.c", i32 792, i32 8}
!224 = !{ptr @.str.118, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/max98088.c", i32 796, i32 8}
!226 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/max98088.c", i32 800, i32 8}
!228 = !{ptr @.str.120, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/max98088.c", i32 802, i32 8}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/max98088.c", i32 803, i32 8}
!232 = !{ptr @.str.122, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/max98088.c", i32 804, i32 8}
!234 = !{ptr @.str.123, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/max98088.c", i32 805, i32 8}
!236 = !{ptr @.str.124, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/max98088.c", i32 806, i32 8}
!238 = !{ptr @.str.125, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/max98088.c", i32 807, i32 8}
!240 = !{ptr @.str.126, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/max98088.c", i32 809, i32 8}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/max98088.c", i32 810, i32 8}
!244 = !{ptr @.str.128, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/max98088.c", i32 811, i32 8}
!246 = !{ptr @.str.129, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/max98088.c", i32 812, i32 8}
!248 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/max98088.c", i32 813, i32 8}
!250 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/max98088.c", i32 814, i32 8}
!252 = !{ptr @max98088_dapm_widgets, !253, !"max98088_dapm_widgets", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/max98088.c", i32 712, i32 41}
!254 = !{ptr @.str.133, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/max98088.c", i32 368, i32 8}
!256 = !{ptr @max98088_extmic_mux, !257, !"max98088_extmic_mux", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/max98088.c", i32 367, i32 38}
!258 = !{ptr @max98088_extmic_enum, !259, !"max98088_extmic_enum", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/max98088.c", i32 363, i32 8}
!260 = !{ptr @.str.134, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/max98088.c", i32 361, i32 47}
!262 = !{ptr @max98088_extmic_text, !263, !"max98088_extmic_text", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/max98088.c", i32 361, i32 20}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/max98088.c", i32 543, i32 8}
!266 = !{ptr @.str.137, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/max98088.c", i32 544, i32 8}
!268 = !{ptr @.str.139, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/max98088.c", i32 545, i32 8}
!270 = !{ptr @.str.141, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/max98088.c", i32 546, i32 8}
!272 = !{ptr @.str.143, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/max98088.c", i32 547, i32 8}
!274 = !{ptr @.str.145, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/max98088.c", i32 548, i32 8}
!276 = !{ptr @.str.147, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/max98088.c", i32 549, i32 8}
!278 = !{ptr @.str.149, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/max98088.c", i32 550, i32 8}
!280 = !{ptr @.str.151, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/max98088.c", i32 551, i32 8}
!282 = !{ptr @.str.153, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/max98088.c", i32 552, i32 8}
!284 = !{ptr @max98088_left_hp_mixer_controls, !285, !"max98088_left_hp_mixer_controls", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/max98088.c", i32 542, i32 38}
!286 = !{ptr @max98088_right_hp_mixer_controls, !287, !"max98088_right_hp_mixer_controls", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/max98088.c", i32 556, i32 38}
!288 = !{ptr @max98088_left_speaker_mixer_controls, !289, !"max98088_left_speaker_mixer_controls", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/max98088.c", i32 514, i32 38}
!290 = !{ptr @max98088_right_speaker_mixer_controls, !291, !"max98088_right_speaker_mixer_controls", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/max98088.c", i32 528, i32 38}
!292 = !{ptr @max98088_left_rec_mixer_controls, !293, !"max98088_left_rec_mixer_controls", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/max98088.c", i32 570, i32 38}
!294 = !{ptr @max98088_right_rec_mixer_controls, !295, !"max98088_right_rec_mixer_controls", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/max98088.c", i32 584, i32 38}
!296 = !{ptr @max98088_left_ADC_mixer_controls, !297, !"max98088_left_ADC_mixer_controls", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/max98088.c", i32 598, i32 38}
!298 = !{ptr @max98088_right_ADC_mixer_controls, !299, !"max98088_right_ADC_mixer_controls", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/max98088.c", i32 608, i32 38}
!300 = !{ptr @.str.217, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/max98088.c", i32 654, i32 6}
!302 = !{ptr @max98088_audio_map, !303, !"max98088_audio_map", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/max98088.c", i32 817, i32 40}
!304 = !{ptr @.str.218, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/max98088.c", i32 1691, i32 16}
!306 = !{ptr @.str.219, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.220, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.221, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @max98088_probe._entry, !305, !"_entry", i1 false, i1 false}
!310 = !{ptr @max98088_probe._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.223, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/max98088.c", i32 1695, i32 8}
!313 = !{ptr @.str.224, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @max98088_probe._entry.222, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @max98088_probe._entry_ptr.225, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.226, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/max98088.c", i32 1634, i32 16}
!318 = !{ptr @.str.227, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.228, !317, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @max98088_handle_pdata.__UNIQUE_ID_ddebug298, !317, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!321 = !{ptr @.str.229, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/max98088.c", i32 1624, i32 16}
!323 = !{ptr @.str.230, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @max98088_handle_eq_pdata._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @max98088_handle_eq_pdata._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.231, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/max98088.c", i32 1412, i32 38}
!328 = !{ptr @.str.232, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/max98088.c", i32 1412, i32 50}
!330 = !{ptr @eq_mode_name, !331, !"eq_mode_name", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/max98088.c", i32 1412, i32 20}
!332 = !{ptr @.str.233, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/max98088.c", i32 1420, i32 3}
!334 = !{ptr @.str.234, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @max98088_get_channel._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @max98088_get_channel._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.235, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/max98088.c", i32 1451, i32 8}
!339 = !{ptr @.str.236, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @max98088_setup_eq1.__UNIQUE_ID_ddebug295, !338, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!341 = !{ptr @.str.237, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/max98088.c", i32 1498, i32 8}
!343 = !{ptr @max98088_setup_eq2.__UNIQUE_ID_ddebug296, !342, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!344 = !{ptr @.str.238, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/max98088.c", i32 1382, i32 16}
!346 = !{ptr @.str.239, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/max98088.c", i32 1400, i32 16}
!348 = !{ptr @max98088_dai, !349, !"max98088_dai", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/max98088.c", i32 1380, i32 34}
!350 = !{ptr @max98088_dai1_ops, !351, !"max98088_dai1_ops", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/max98088.c", i32 1364, i32 37}
!352 = !{ptr @.str.240, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/max98088.c", i32 1128, i32 16}
!354 = !{ptr @.str.241, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @max98088_dai_set_sysclk._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @max98088_dai_set_sysclk._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.242, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/max98088.c", i32 1139, i32 8}
!359 = !{ptr @max98088_dai_set_sysclk.__UNIQUE_ID_ddebug294, !358, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!360 = !{ptr @.str.243, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/max98088.c", i32 1174, i32 24}
!362 = !{ptr @.str.244, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @max98088_dai1_set_fmt._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @max98088_dai1_set_fmt._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.245, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/max98088.c", i32 1005, i32 24}
!367 = !{ptr @.str.246, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @max98088_dai1_hw_params._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @max98088_dai1_hw_params._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @rate_table, !371, !"rate_table", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/max98088.c", i32 935, i32 3}
!372 = !{ptr @max98088_dai2_ops, !373, !"max98088_dai2_ops", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/max98088.c", i32 1372, i32 37}
!374 = !{ptr @.str.247, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/max98088.c", i32 1245, i32 24}
!376 = !{ptr @max98088_dai2_set_fmt._entry, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @max98088_dai2_set_fmt._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.248, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/max98088.c", i32 1075, i32 24}
!380 = !{ptr @max98088_dai2_hw_params._entry, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @max98088_dai2_hw_params._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @max98088_of_match, !383, !"max98088_of_match", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/max98088.c", i32 1782, i32 34}
!384 = !{ptr @max98088_i2c_id, !385, !"max98088_i2c_id", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/max98088.c", i32 1774, i32 35}
!386 = !{i32 1, !"wchar_size", i32 2}
!387 = !{i32 1, !"min_enum_size", i32 4}
!388 = !{i32 8, !"branch-target-enforcement", i32 0}
!389 = !{i32 8, !"sign-return-address", i32 0}
!390 = !{i32 8, !"sign-return-address-all", i32 0}
!391 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!392 = !{i32 7, !"uwtable", i32 1}
!393 = !{i32 7, !"frame-pointer", i32 2}
!394 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!395 = !{i64 2149017669, i64 2149017674, i64 2149017687, i64 2149017731, i64 2149017765, i64 2149017786}
!396 = !{i32 0, i32 33}
!397 = !{!"branch_weights", i32 2000, i32 1}
!398 = !{i64 2148250716, i64 2148250996, i64 2148251330, i64 2148251664}
