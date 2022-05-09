; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cx2072x.c_pt.bc'
source_filename = "../sound/soc/codecs/cx2072x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.108 = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cx2072x_priv = type { ptr, ptr, i32, ptr, ptr, %struct.snd_soc_jack_gpio, %struct.mutex, i32, i8, i8, i32, i32, i32, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_cx2072x__303_1718_cx2072x_i2c_driver_init6 = internal global ptr @cx2072x_i2c_driver_init, section ".initcall6.init", align 4
@cx2072x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cx2072x_i2c_probe, ptr @cx2072x_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_runtime_pm, ptr null, ptr null }, ptr @cx2072x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cx2072x_i2c_driver_exit = internal global ptr @cx2072x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [54 x i8] c"snd_soc_cx2072x.description=ASoC cx2072x Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [56 x i8] c"snd_soc_cx2072x.author=Simon Ho <simon.ho@conexant.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [54 x i8] c"snd_soc_cx2072x.file=sound/soc/codecs/snd-soc-cx2072x\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [28 x i8] c"snd_soc_cx2072x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx2072x\00", [24 x i8] zeroinitializer }, align 32
@cx2072x_runtime_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_runtime_suspend, ptr @cx2072x_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cx2072x_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cx20721\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"cx20723\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cx2072x_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cx2072x_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 32, ptr null, ptr @cx2072x_readable_register, ptr @cx2072x_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @cx2072x_reg_read, ptr @cx2072x_reg_write, ptr null, i8 0, i32 35388, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_reg_defaults, i32 132, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cx2072x:1642:(&cx2072x_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cx2072x_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cx2072x->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@cx2072x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1657, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get MCLK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx2072x_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cx2072x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx2072x_i2c_probe._entry_ptr = internal global ptr @cx2072x_i2c_probe._entry, section ".printk_index", align 4
@cx2072x_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1664, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"codec version: %08x,%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cx2072x_i2c_probe._entry_ptr.12 = internal global ptr @cx2072x_i2c_probe._entry.9, section ".printk_index", align 4
@soc_codec_driver_cx2072x = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cx2072x_snd_controls, i32 12, ptr @cx2072x_dapm_widgets, i32 51, ptr @cx2072x_intercon, i32 66, ptr @cx2072x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_set_jack, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@soc_codec_cx2072x_dai = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.131, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.66, i64 68, i32 128, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.41, i64 68, i32 128, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.132, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @cx2072x_dsp_dai_probe, ptr null, ptr null, ptr null, ptr @cx2072x_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.133, i64 68, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.134, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.135, i64 68, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@cx2072x_reg_defaults = internal constant { [132 x %struct.reg_default], [256 x i8] } { [132 x %struct.reg_default] [%struct.reg_default { i32 1044, i32 3 }, %struct.reg_default { i32 1056, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1112, i32 0 }, %struct.reg_default { i32 1116, i32 0 }, %struct.reg_default { i32 1120, i32 0 }, %struct.reg_default { i32 1124, i32 0 }, %struct.reg_default { i32 1128, i32 0 }, %struct.reg_default { i32 17352, i32 49 }, %struct.reg_default { i32 16832, i32 74 }, %struct.reg_default { i32 16864, i32 74 }, %struct.reg_default { i32 16404, i32 1075 }, %struct.reg_default { i32 16408, i32 0 }, %struct.reg_default { i32 16432, i32 0 }, %struct.reg_default { i32 18376, i32 49 }, %struct.reg_default { i32 17856, i32 74 }, %struct.reg_default { i32 17888, i32 74 }, %struct.reg_default { i32 17428, i32 1075 }, %struct.reg_default { i32 17432, i32 0 }, %struct.reg_default { i32 20424, i32 49 }, %struct.reg_default { i32 19840, i32 74 }, %struct.reg_default { i32 19872, i32 74 }, %struct.reg_default { i32 19844, i32 74 }, %struct.reg_default { i32 19876, i32 74 }, %struct.reg_default { i32 19848, i32 74 }, %struct.reg_default { i32 19880, i32 74 }, %struct.reg_default { i32 19852, i32 74 }, %struct.reg_default { i32 19884, i32 74 }, %struct.reg_default { i32 19856, i32 74 }, %struct.reg_default { i32 19888, i32 74 }, %struct.reg_default { i32 19860, i32 74 }, %struct.reg_default { i32 19892, i32 74 }, %struct.reg_default { i32 19864, i32 74 }, %struct.reg_default { i32 19896, i32 74 }, %struct.reg_default { i32 19460, i32 0 }, %struct.reg_default { i32 19476, i32 1075 }, %struct.reg_default { i32 19480, i32 0 }, %struct.reg_default { i32 21448, i32 49 }, %struct.reg_default { i32 20864, i32 74 }, %struct.reg_default { i32 20896, i32 74 }, %struct.reg_default { i32 20868, i32 74 }, %struct.reg_default { i32 20900, i32 74 }, %struct.reg_default { i32 20872, i32 74 }, %struct.reg_default { i32 20904, i32 74 }, %struct.reg_default { i32 20484, i32 0 }, %struct.reg_default { i32 20500, i32 1075 }, %struct.reg_default { i32 20504, i32 0 }, %struct.reg_default { i32 22532, i32 0 }, %struct.reg_default { i32 22548, i32 1075 }, %struct.reg_default { i32 22556, i32 192 }, %struct.reg_default { i32 22560, i32 0 }, %struct.reg_default { i32 22564, i32 0 }, %struct.reg_default { i32 22576, i32 2 }, %struct.reg_default { i32 24596, i32 1075 }, %struct.reg_default { i32 24604, i32 0 }, %struct.reg_default { i32 24608, i32 0 }, %struct.reg_default { i32 24612, i32 0 }, %struct.reg_default { i32 24624, i32 2 }, %struct.reg_default { i32 24960, i32 0 }, %struct.reg_default { i32 24992, i32 0 }, %struct.reg_default { i32 26644, i32 1075 }, %struct.reg_default { i32 26652, i32 0 }, %struct.reg_default { i32 27008, i32 0 }, %struct.reg_default { i32 27040, i32 0 }, %struct.reg_default { i32 25620, i32 1075 }, %struct.reg_default { i32 25628, i32 32 }, %struct.reg_default { i32 25632, i32 0 }, %struct.reg_default { i32 25636, i32 0 }, %struct.reg_default { i32 25984, i32 0 }, %struct.reg_default { i32 26016, i32 0 }, %struct.reg_default { i32 29700, i32 0 }, %struct.reg_default { i32 29716, i32 1075 }, %struct.reg_default { i32 29724, i32 64 }, %struct.reg_default { i32 29728, i32 0 }, %struct.reg_default { i32 29732, i32 0 }, %struct.reg_default { i32 29744, i32 2 }, %struct.reg_default { i32 30080, i32 0 }, %struct.reg_default { i32 30112, i32 0 }, %struct.reg_default { i32 30740, i32 1075 }, %struct.reg_default { i32 30748, i32 0 }, %struct.reg_default { i32 30752, i32 0 }, %struct.reg_default { i32 30756, i32 0 }, %struct.reg_default { i32 31104, i32 0 }, %struct.reg_default { i32 31136, i32 0 }, %struct.reg_default { i32 23572, i32 1075 }, %struct.reg_default { i32 23580, i32 64 }, %struct.reg_default { i32 23556, i32 0 }, %struct.reg_default { i32 23600, i32 2 }, %struct.reg_default { i32 34836, i32 1075 }, %struct.reg_default { i32 34844, i32 0 }, %struct.reg_default { i32 34820, i32 0 }, %struct.reg_default { i32 34864, i32 2 }, %struct.reg_default { i32 21524, i32 1075 }, %struct.reg_default { i32 21888, i32 74 }, %struct.reg_default { i32 21920, i32 74 }, %struct.reg_default { i32 21892, i32 74 }, %struct.reg_default { i32 21924, i32 74 }, %struct.reg_default { i32 27920, i32 67134884 }, %struct.reg_default { i32 27924, i32 8060964 }, %struct.reg_default { i32 27928, i32 0 }, %struct.reg_default { i32 28032, i32 2031754 }, %struct.reg_default { i32 28036, i32 10027046 }, %struct.reg_default { i32 28160, i32 65537 }, %struct.reg_default { i32 28164, i32 0 }, %struct.reg_default { i32 28168, i32 0 }, %struct.reg_default { i32 28172, i32 0 }, %struct.reg_default { i32 28176, i32 0 }, %struct.reg_default { i32 28184, i32 0 }, %struct.reg_default { i32 28180, i32 0 }, %struct.reg_default { i32 28936, i32 0 }, %struct.reg_default { i32 28964, i32 4 }, %struct.reg_default { i32 29456, i32 1536 }, %struct.reg_default { i32 29480, i32 520 }, %struct.reg_default { i32 29072, i32 0 }, %struct.reg_default { i32 29076, i32 0 }, %struct.reg_default { i32 29080, i32 1434 }, %struct.reg_default { i32 29084, i32 167 }, %struct.reg_default { i32 29088, i32 23 }, %struct.reg_default { i32 29092, i32 0 }, %struct.reg_default { i32 29096, i32 645 }, %struct.reg_default { i32 29100, i32 0 }, %struct.reg_default { i32 29104, i32 0 }, %struct.reg_default { i32 29108, i32 0 }, %struct.reg_default { i32 29188, i32 578 }, %struct.reg_default { i32 29228, i32 0 }, %struct.reg_default { i32 29232, i32 132 }, %struct.reg_default { i32 29244, i32 119 }, %struct.reg_default { i32 28800, i32 33 }, %struct.reg_default { i32 28804, i32 24 }, %struct.reg_default { i32 28808, i32 36 }, %struct.reg_default { i32 28812, i32 1 }, %struct.reg_default { i32 28816, i32 2 }], [256 x i8] zeroinitializer }, align 32
@cx2072x_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 560, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read register, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx2072x_reg_read\00", [47 x i8] zeroinitializer }, align 32
@cx2072x_reg_read._entry_ptr = internal global ptr @cx2072x_reg_read._entry, section ".printk_index", align 4
@cx2072x_reg_raw_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 507, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I2C write failed, ret = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx2072x_reg_raw_write\00", [42 x i8] zeroinitializer }, align 32
@cx2072x_reg_raw_write._entry_ptr = internal global ptr @cx2072x_reg_raw_write._entry, section ".printk_index", align 4
@cx2072x_snd_controls = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hpf_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }], [128 x i8] zeroinitializer }, align 32
@cx2072x_intercon = internal constant { [66 x %struct.snd_soc_dapm_route], [856 x i8] } { [66 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.94, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.94, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.94, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.94, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.30, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.30, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.30, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.30, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.115, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.117, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.119, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.121, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.94, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.94, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.94, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.94, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.94, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.94, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.94, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.94, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.108, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.110, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.109, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.112, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.111, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.110, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.111, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.94, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.94, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.94, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.94, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }], [856 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PortD Boost Volume\00", [45 x i8] zeroinitializer }, align 32
@boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 26016, i32 25984, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PortC Boost Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 27040, i32 27008, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PortB Boost Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 24992, i32 24960, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PortD ADC1 Volume\00", [46 x i8] zeroinitializer }, align 32
@adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7400, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 74, i32 74, i32 19876, i32 19844, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PortC ADC1 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 74, i32 74, i32 19880, i32 19848, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PortB ADC1 Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 74, i32 74, i32 19872, i32 19840, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7400, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 74, i32 74, i32 16864, i32 16832, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16864, i32 16832, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 74, i32 74, i32 17888, i32 17856, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPF Freq\00", [23 x i8] zeroinitializer }, align 32
@hpf_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 120, i32 0, i32 1, i32 63, i32 1, i32 8, i32 30, i32 30], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28964, i32 28964, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPF Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28964, i32 28964, i32 8, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PortA HP Amp Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22556, i32 22556, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"In AIF\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S DAC1L\00", [22 x i8] zeroinitializer }, align 32
@i2sdac1l_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S DAC1R\00", [22 x i8] zeroinitializer }, align 32
@i2sdac1r_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S DAC2L\00", [22 x i8] zeroinitializer }, align 32
@i2sdac2l_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S DAC2R\00", [22 x i8] zeroinitializer }, align 32
@i2sdac2r_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC2\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PortA Mux\00", [22 x i8] zeroinitializer }, align 32
@porta_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @porta_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PortG Mux\00", [22 x i8] zeroinitializer }, align 32
@portg_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @portg_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PortE Mux\00", [22 x i8] zeroinitializer }, align 32
@porte_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @porte_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PortM Mux\00", [22 x i8] zeroinitializer }, align 32
@portm_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @portm_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortA Power\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortM Power\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortG Power\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AFG Power\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortA Out En\00", [19 x i8] zeroinitializer }, align 32
@portaouten_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortE Out En\00", [19 x i8] zeroinitializer }, align 32
@porteouten_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortG Out En\00", [19 x i8] zeroinitializer }, align 32
@portgouten_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortM Out En\00", [19 x i8] zeroinitializer }, align 32
@portmouten_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTA\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTG\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTE\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTM\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AEC REF\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Out AIF\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S ADC1L\00", [22 x i8] zeroinitializer }, align 32
@i2sadc1l_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S ADC1R\00", [22 x i8] zeroinitializer }, align 32
@i2sadc1r_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S ADC2L\00", [22 x i8] zeroinitializer }, align 32
@i2sadc2l_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S ADC2R\00", [22 x i8] zeroinitializer }, align 32
@i2sadc2r_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC1 Mux\00", [23 x i8] zeroinitializer }, align 32
@adc1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc1in_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC2 Mux\00", [23 x i8] zeroinitializer }, align 32
@adc2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc2in_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortB Power\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortC Power\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortD Power\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortE Power\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Widget15 Power\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Widget15 Mixer\00", [17 x i8] zeroinitializer }, align 32
@wid15_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortB In En\00", [20 x i8] zeroinitializer }, align 32
@portbinen_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortC In En\00", [20 x i8] zeroinitializer }, align 32
@portcinen_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortD In En\00", [20 x i8] zeroinitializer }, align 32
@portdinen_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PortE In En\00", [20 x i8] zeroinitializer }, align 32
@porteinen_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Bias\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PortB Mic Bias\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PortD Mic Bias\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PortE Mic Bias\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTB\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTC\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PORTD\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PORTEIN\00", [24 x i8] zeroinitializer }, align 32
@cx2072x_dapm_widgets = internal constant { [51 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2276 x i8] } { [51 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.40, ptr @.str.41, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sdac1l_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sdac1r_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sdac2l_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sdac2r_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16404, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17428, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @porta_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portg_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @porte_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portm_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22548, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 34836, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23572, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1044, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @afg_power_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portaouten_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @porteouten_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portgouten_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portmouten_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.65, ptr @.str.66, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sadc1l_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sadc1r_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sadc2l_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2sadc2r_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19476, i8 0, i32 255, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20500, i8 0, i32 255, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24596, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26644, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25620, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29716, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21524, i8 0, i32 4095, i32 0, i32 3, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wid15_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portbinen_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portcinen_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @portdinen_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @porteinen_ctl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29100, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24604, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25628, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29724, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2276 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28168, i32 28168, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28168, i32 28168, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28168, i32 28168, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28168, i32 28168, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@porta_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22532, i8 0, i8 0, i32 2, i32 1, ptr @dac_enum_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_enum_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.99], [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@portg_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 23556, i8 0, i8 0, i32 2, i32 1, ptr @dac_enum_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@porte_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29700, i8 0, i8 0, i32 2, i32 1, ptr @dac_enum_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@portm_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34820, i8 0, i8 0, i32 2, i32 1, ptr @dac_enum_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22556, i32 22556, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29724, i32 29724, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23580, i32 23580, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34844, i32 34844, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28164, i32 28164, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28164, i32 28164, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28164, i32 28164, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28164, i32 28164, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@adc1in_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19460, i8 0, i8 0, i32 7, i32 7, ptr @adc1in_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc1in_sel_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortB Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortD Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortC Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Widget15 Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortE Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortF Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PortH Switch\00", [19 x i8] zeroinitializer }, align 32
@adc2in_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20484, i8 0, i8 0, i32 3, i32 3, ptr @adc2in_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc2in_sel_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.114], [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC1L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21920, i32 21920, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC1R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21888, i32 21888, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC2L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21924, i32 21924, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC2R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21892, i32 21892, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24604, i32 24604, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26652, i32 26652, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25628, i32 25628, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29724, i32 29724, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@cx2072x_reg_init = internal constant { [17 x %struct.reg_sequence], [52 x i8] } { [17 x %struct.reg_sequence] [%struct.reg_sequence { i32 29092, i32 128, i32 0 }, %struct.reg_sequence { i32 29480, i32 1631, i32 0 }, %struct.reg_sequence { i32 29096, i32 649, i32 0 }, %struct.reg_sequence { i32 29456, i32 3845, i32 0 }, %struct.reg_sequence { i32 29328, i32 896, i32 0 }, %struct.reg_sequence { i32 29480, i32 2960, i32 0 }, %struct.reg_sequence { i32 28964, i32 1, i32 0 }, %struct.reg_sequence { i32 29068, i32 768, i32 0 }, %struct.reg_sequence { i32 29468, i32 256, i32 0 }, %struct.reg_sequence { i32 25628, i32 32, i32 0 }, %struct.reg_sequence { i32 1112, i32 64, i32 0 }, %struct.reg_sequence { i32 1124, i32 64, i32 0 }, %struct.reg_sequence { i32 1056, i32 128, i32 0 }, %struct.reg_sequence { i32 29232, i32 196, i32 0 }, %struct.reg_sequence { i32 29184, i32 1045, i32 0 }, %struct.reg_sequence { i32 28164, i32 15, i32 0 }, %struct.reg_sequence { i32 28168, i32 15, i32 0 }], [52 x i8] zeroinitializer }, align 32
@cx2072x_jack_gpio = internal constant { %struct.snd_soc_jack_gpio, [32 x i8] } { %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.127, i32 16387, i32 0, i32 150, i8 1, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr @cx2072x_jack_status_check }, [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"headset\00", [24 x i8] zeroinitializer }, align 32
@cx2072x_jack_status_check.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.129, ptr @.str.6, ptr @.str.130, i8 1, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cx2072x\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx2072x_jack_status_check\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CX2072X_HSDETECT type=0x%X,Jack state = %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx2072x-hifi\00", [19 x i8] zeroinitializer }, align 32
@cx2072x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cx2072x_set_dai_sysclk, ptr null, ptr null, ptr @cx2072x_set_dai_bclk_ratio, ptr @cx2072x_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx2072x_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx2072x-dsp\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSP Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx2072x-aec\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AEC Capture\00", [20 x i8] zeroinitializer }, align 32
@cx2072x_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.6, i32 996, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set clk rate failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx2072x_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@cx2072x_set_dai_sysclk._entry_ptr = internal global ptr @cx2072x_set_dai_sysclk._entry, section ".printk_index", align 4
@cx2072x_set_dai_fmt.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.138, ptr @.str.6, ptr @.str.139, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx2072x_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_dai_fmt- %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx2072x_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.6, i32 1018, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported DAI master mode\0A\00", [35 x i8] zeroinitializer }, align 32
@cx2072x_set_dai_fmt._entry_ptr = internal global ptr @cx2072x_set_dai_fmt._entry, section ".printk_index", align 4
@cx2072x_set_dai_fmt._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.138, ptr @.str.6, i32 1030, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported DAI format\0A\00", [40 x i8] zeroinitializer }, align 32
@cx2072x_set_dai_fmt._entry_ptr.143 = internal global ptr @cx2072x_set_dai_fmt._entry.141, section ".printk_index", align 4
@cx2072x_set_dai_fmt._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.138, ptr @.str.6, i32 1043, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported DAI clock inversion\0A\00", [63 x i8] zeroinitializer }, align 32
@cx2072x_set_dai_fmt._entry_ptr.146 = internal global ptr @cx2072x_set_dai_fmt._entry.144, section ".printk_index", align 4
@cx2072x_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.6, i32 931, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Master clock rate is not configured\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx2072x_hw_params\00", [46 x i8] zeroinitializer }, align 32
@cx2072x_hw_params._entry_ptr = internal global ptr @cx2072x_hw_params._entry, section ".printk_index", align 4
@cx2072x_hw_params._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.6, i32 948, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported sample rate %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cx2072x_hw_params._entry_ptr.151 = internal global ptr @cx2072x_hw_params._entry.149, section ".printk_index", align 4
@cx2072x_hw_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.148, ptr @.str.6, ptr @.str.152, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sample size %d bits, frame = %d bits, rate = %d Hz\0A\00", [44 x i8] zeroinitializer }, align 32
@cx2072x_hw_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.148, ptr @.str.6, ptr @.str.153, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enables aec reference\0A\00", [41 x i8] zeroinitializer }, align 32
@cx2072x_config_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.154, ptr @.str.6, i32 616, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx2072x_config_pll\00", [45 x i8] zeroinitializer }, align 32
@cx2072x_config_pll._entry_ptr = internal global ptr @cx2072x_config_pll._entry, section ".printk_index", align 4
@mclk_pre_div = internal constant { [9 x %struct.anon.108], [56 x i8] } { [9 x %struct.anon.108] [%struct.anon.108 { i32 6144000, i32 1 }, %struct.anon.108 { i32 12288000, i32 2 }, %struct.anon.108 { i32 19200000, i32 3 }, %struct.anon.108 { i32 26000000, i32 4 }, %struct.anon.108 { i32 28224000, i32 5 }, %struct.anon.108 { i32 36864000, i32 6 }, %struct.anon.108 { i32 36864000, i32 7 }, %struct.anon.108 { i32 48000000, i32 8 }, %struct.anon.108 { i32 49152000, i32 8 }], [56 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.6, i32 700, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Incorrect frame len %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx2072x_config_i2spcm\00", [42 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr = internal global ptr @cx2072x_config_i2spcm._entry, section ".printk_index", align 4
@cx2072x_config_i2spcm._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.6, i32 705, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Incorrect sample size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr.159 = internal global ptr @cx2072x_config_i2spcm._entry.157, section ".printk_index", align 4
@cx2072x_config_i2spcm.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.156, ptr @.str.6, ptr @.str.160, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"config_i2spcm set_dai_fmt- %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.156, ptr @.str.6, ptr @.str.161, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Sets Master mode\0A\00", [46 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.156, ptr @.str.6, ptr @.str.162, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sets Slave mode\0A\00", [47 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.156, ptr @.str.6, i32 728, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr.164 = internal global ptr @cx2072x_config_i2spcm._entry.163, section ".printk_index", align 4
@cx2072x_config_i2spcm._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.156, ptr @.str.6, i32 751, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr.166 = internal global ptr @cx2072x_config_i2spcm._entry.165, section ".printk_index", align 4
@cx2072x_config_i2spcm._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.156, ptr @.str.6, i32 778, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr.168 = internal global ptr @cx2072x_config_i2spcm._entry.167, section ".printk_index", align 4
@cx2072x_config_i2spcm._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.156, ptr @.str.6, i32 825, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TDM mode is not implemented yet\0A\00", [63 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr.171 = internal global ptr @cx2072x_config_i2spcm._entry.169, section ".printk_index", align 4
@cx2072x_config_i2spcm._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.156, ptr @.str.6, i32 842, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported BCLK %dHz\0A\00", [41 x i8] zeroinitializer }, align 32
@cx2072x_config_i2spcm._entry_ptr.174 = internal global ptr @cx2072x_config_i2spcm._entry.172, section ".printk_index", align 4
@cx2072x_config_i2spcm.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.128, ptr @.str.156, ptr @.str.6, ptr @.str.175, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enables BCLK %dHz output\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.cx2072x_config_i2spcm = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.cx2072x_config_i2spcm.176 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8388780, i32 8388780, i32 8388780, i32 172, i32 172], [44 x i8] zeroinitializer }, align 32
@switch.table.cx2072x_config_i2spcm.177 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1073676289, i32 -1073676289, i32 -2147418113, i32 -1073676289, i32 -2147418113], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [145 x i64] [i64 143, i64 32, i64 220, i64 512, i64 520, i64 1044, i64 1056, i64 1108, i64 1112, i64 1116, i64 1120, i64 1124, i64 1128, i64 16404, i64 16408, i64 16432, i64 16832, i64 16864, i64 17352, i64 17428, i64 17432, i64 17856, i64 17888, i64 18376, i64 19460, i64 19476, i64 19480, i64 19840, i64 19844, i64 19848, i64 19852, i64 19856, i64 19860, i64 19864, i64 19872, i64 19876, i64 19880, i64 19884, i64 19888, i64 19892, i64 19896, i64 20424, i64 20484, i64 20500, i64 20504, i64 20864, i64 20868, i64 20872, i64 20896, i64 20900, i64 20904, i64 21448, i64 21524, i64 21888, i64 21892, i64 21920, i64 21924, i64 22532, i64 22548, i64 22556, i64 22560, i64 22564, i64 22576, i64 23556, i64 23572, i64 23580, i64 23600, i64 24596, i64 24604, i64 24608, i64 24612, i64 24624, i64 24960, i64 24992, i64 25620, i64 25628, i64 25632, i64 25636, i64 25984, i64 26016, i64 26644, i64 26652, i64 27008, i64 27040, i64 27904, i64 27906, i64 27908, i64 27910, i64 27912, i64 27914, i64 27916, i64 27920, i64 27924, i64 27928, i64 28032, i64 28036, i64 28160, i64 28164, i64 28168, i64 28172, i64 28176, i64 28180, i64 28184, i64 28800, i64 28804, i64 28808, i64 28812, i64 28816, i64 28936, i64 28964, i64 29072, i64 29076, i64 29080, i64 29084, i64 29088, i64 29092, i64 29096, i64 29100, i64 29104, i64 29108, i64 29184, i64 29188, i64 29228, i64 29232, i64 29244, i64 29456, i64 29480, i64 29700, i64 29716, i64 29724, i64 29728, i64 29732, i64 29744, i64 30080, i64 30112, i64 30740, i64 30748, i64 30752, i64 30756, i64 31104, i64 31136, i64 34820, i64 34836, i64 34844, i64 34864]
@__sancov_gen_cov_switch_values.178 = internal global [13 x i64] [i64 11, i64 32, i64 512, i64 520, i64 22564, i64 24612, i64 25636, i64 27916, i64 27917, i64 28180, i64 29228, i64 29732, i64 30756]
@__sancov_gen_cov_switch_values.179 = internal global [56 x i64] [i64 54, i64 32, i64 512, i64 520, i64 17352, i64 18376, i64 20424, i64 21448, i64 22564, i64 24612, i64 25636, i64 27904, i64 27906, i64 27908, i64 27910, i64 27912, i64 27914, i64 27916, i64 27924, i64 27928, i64 28032, i64 28036, i64 28160, i64 28164, i64 28168, i64 28172, i64 28176, i64 28180, i64 28184, i64 28800, i64 28804, i64 28808, i64 28812, i64 28816, i64 28936, i64 28964, i64 29068, i64 29072, i64 29076, i64 29080, i64 29084, i64 29088, i64 29092, i64 29096, i64 29100, i64 29104, i64 29108, i64 29184, i64 29188, i64 29228, i64 29232, i64 29244, i64 29456, i64 29480, i64 29732, i64 30756]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.183 = internal global [8 x i64] [i64 6, i64 32, i64 16000, i64 24000, i64 32000, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.184 = internal global [8 x i64] [i64 6, i64 32, i64 16000, i64 24000, i64 32000, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"cx2072x_i2c_driver\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1707, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1709, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"cx2072x_runtime_pm\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1700, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"cx2072x_i2c_id\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1685, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"cx2072x_regmap\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1600, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1641, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1646, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1655, i32 45 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1657, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1664, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [25 x i8] c"soc_codec_driver_cx2072x\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1520, i32 46 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"soc_codec_cx2072x_dai\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1553, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"cx2072x_reg_defaults\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 95, i32 33 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 560, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 507, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [21 x i8] c"cx2072x_snd_controls\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 886, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"cx2072x_intercon\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1276, i32 40 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 887, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [10 x i8] c"boost_tlv\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 64, i32 14 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 889, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 891, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 893, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 62, i32 14 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 895, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 897, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 899, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 63, i32 14 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 901, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 903, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 905, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [8 x i8] c"hpf_tlv\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 71, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 906, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 907, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1185, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1187, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [13 x i8] c"i2sdac1l_ctl\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1087, i32 38 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1188, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [13 x i8] c"i2sdac1r_ctl\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1090, i32 38 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1189, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [13 x i8] c"i2sdac2l_ctl\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1093, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1190, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [13 x i8] c"i2sdac2r_ctl\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1096, i32 38 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1192, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1195, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1198, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [10 x i8] c"porta_mux\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1106, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1199, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [10 x i8] c"portg_mux\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1112, i32 38 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1200, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [10 x i8] c"porte_mux\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1118, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1201, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [10 x i8] c"portm_mux\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1124, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1203, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1206, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1209, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1212, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1216, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [15 x i8] c"portaouten_ctl\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1051, i32 38 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1218, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [15 x i8] c"porteouten_ctl\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1054, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1220, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [15 x i8] c"portgouten_ctl\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1057, i32 38 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1222, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [15 x i8] c"portmouten_ctl\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1060, i32 38 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1225, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1226, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1227, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1228, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1229, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1232, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1234, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [13 x i8] c"i2sadc1l_ctl\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1075, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1235, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [13 x i8] c"i2sadc1r_ctl\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1078, i32 38 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1236, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [13 x i8] c"i2sadc2l_ctl\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1081, i32 38 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1237, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [13 x i8] c"i2sadc2r_ctl\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1084, i32 38 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1239, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1241, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1244, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [9 x i8] c"adc1_mux\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1135, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1245, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [9 x i8] c"adc2_mux\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1145, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1247, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1249, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1251, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1253, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1255, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1258, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [10 x i8] c"wid15_mix\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1148, i32 38 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1260, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [14 x i8] c"portbinen_ctl\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1063, i32 38 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1261, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [14 x i8] c"portcinen_ctl\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1066, i32 38 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1262, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [14 x i8] c"portdinen_ctl\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1069, i32 38 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1263, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [14 x i8] c"porteinen_ctl\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1072, i32 38 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1265, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1266, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1267, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1268, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1269, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1270, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1271, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1272, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c"cx2072x_dapm_widgets\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1183, i32 41 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1088, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [15 x i8] c"porta_dac_enum\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1103, i32 30 }
@___asan_gen_.577 = private unnamed_addr constant [14 x i8] c"dac_enum_text\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1099, i32 27 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1100, i32 17 }
@___asan_gen_.583 = private unnamed_addr constant [15 x i8] c"portg_dac_enum\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1109, i32 30 }
@___asan_gen_.586 = private unnamed_addr constant [15 x i8] c"porte_dac_enum\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1115, i32 30 }
@___asan_gen_.589 = private unnamed_addr constant [15 x i8] c"portm_dac_enum\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1121, i32 30 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [16 x i8] c"adc1in_sel_enum\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1132, i32 30 }
@___asan_gen_.603 = private unnamed_addr constant [16 x i8] c"adc1in_sel_text\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1127, i32 27 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1128, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1128, i32 18 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1128, i32 34 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1128, i32 50 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1129, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1129, i32 18 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1129, i32 34 }
@___asan_gen_.627 = private unnamed_addr constant [16 x i8] c"adc2in_sel_enum\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1142, i32 30 }
@___asan_gen_.630 = private unnamed_addr constant [16 x i8] c"adc2in_sel_text\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1138, i32 27 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1149, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1150, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1151, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1152, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [17 x i8] c"cx2072x_reg_init\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 233, i32 34 }
@___asan_gen_.656 = private unnamed_addr constant [18 x i8] c"cx2072x_jack_gpio\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1452, i32 39 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1453, i32 10 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1447, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1555, i32 11 }
@___asan_gen_.674 = private unnamed_addr constant [16 x i8] c"cx2072x_dai_ops\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1535, i32 37 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1575, i32 11 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1579, i32 19 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1588, i32 11 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1591, i32 19 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 996, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1010, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1018, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1030, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1043, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 931, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 948, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 952, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 961, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 616, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant [13 x i8] c"mclk_pre_div\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 80, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 700, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 705, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 709, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 718, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 724, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 728, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 751, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 778, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 825, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 842, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.798 = private constant [30 x i8] c"../sound/soc/codecs/cx2072x.c\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 845, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant [35 x i8] c"switch.table.cx2072x_config_i2spcm\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [39 x i8] c"switch.table.cx2072x_config_i2spcm.176\00", align 1
@___asan_gen_.802 = private unnamed_addr constant [39 x i8] c"switch.table.cx2072x_config_i2spcm.177\00", align 1
@llvm.compiler.used = appending global [254 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_cx2072x_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cx2072x__303_1718_cx2072x_i2c_driver_init6, ptr @cx2072x_config_i2spcm._entry, ptr @cx2072x_config_i2spcm._entry.157, ptr @cx2072x_config_i2spcm._entry.163, ptr @cx2072x_config_i2spcm._entry.165, ptr @cx2072x_config_i2spcm._entry.167, ptr @cx2072x_config_i2spcm._entry.169, ptr @cx2072x_config_i2spcm._entry.172, ptr @cx2072x_config_i2spcm._entry_ptr, ptr @cx2072x_config_i2spcm._entry_ptr.159, ptr @cx2072x_config_i2spcm._entry_ptr.164, ptr @cx2072x_config_i2spcm._entry_ptr.166, ptr @cx2072x_config_i2spcm._entry_ptr.168, ptr @cx2072x_config_i2spcm._entry_ptr.171, ptr @cx2072x_config_i2spcm._entry_ptr.174, ptr @cx2072x_config_pll._entry, ptr @cx2072x_config_pll._entry_ptr, ptr @cx2072x_hw_params._entry, ptr @cx2072x_hw_params._entry.149, ptr @cx2072x_hw_params._entry_ptr, ptr @cx2072x_hw_params._entry_ptr.151, ptr @cx2072x_i2c_driver_exit, ptr @cx2072x_i2c_probe._entry, ptr @cx2072x_i2c_probe._entry.9, ptr @cx2072x_i2c_probe._entry_ptr, ptr @cx2072x_i2c_probe._entry_ptr.12, ptr @cx2072x_reg_raw_write._entry, ptr @cx2072x_reg_raw_write._entry_ptr, ptr @cx2072x_reg_read._entry, ptr @cx2072x_reg_read._entry_ptr, ptr @cx2072x_set_dai_fmt._entry, ptr @cx2072x_set_dai_fmt._entry.141, ptr @cx2072x_set_dai_fmt._entry.144, ptr @cx2072x_set_dai_fmt._entry_ptr, ptr @cx2072x_set_dai_fmt._entry_ptr.143, ptr @cx2072x_set_dai_fmt._entry_ptr.146, ptr @cx2072x_set_dai_sysclk._entry, ptr @cx2072x_set_dai_sysclk._entry_ptr, ptr @cx2072x_i2c_driver, ptr @.str, ptr @cx2072x_runtime_pm, ptr @cx2072x_i2c_id, ptr @cx2072x_i2c_probe._key, ptr @cx2072x_regmap, ptr @.str.1, ptr @cx2072x_i2c_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @soc_codec_driver_cx2072x, ptr @soc_codec_cx2072x_dai, ptr @cx2072x_reg_defaults, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cx2072x_snd_controls, ptr @cx2072x_intercon, ptr @.str.17, ptr @boost_tlv, ptr @.compoundliteral, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @adc_tlv, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @dac_tlv, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @hpf_tlv, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @i2sdac1l_ctl, ptr @.str.43, ptr @i2sdac1r_ctl, ptr @.str.44, ptr @i2sdac2l_ctl, ptr @.str.45, ptr @i2sdac2r_ctl, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @porta_mux, ptr @.str.49, ptr @portg_mux, ptr @.str.50, ptr @porte_mux, ptr @.str.51, ptr @portm_mux, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @portaouten_ctl, ptr @.str.57, ptr @porteouten_ctl, ptr @.str.58, ptr @portgouten_ctl, ptr @.str.59, ptr @portmouten_ctl, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @i2sadc1l_ctl, ptr @.str.68, ptr @i2sadc1r_ctl, ptr @.str.69, ptr @i2sadc2l_ctl, ptr @.str.70, ptr @i2sadc2r_ctl, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @adc1_mux, ptr @.str.74, ptr @adc2_mux, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @wid15_mix, ptr @.str.81, ptr @portbinen_ctl, ptr @.str.82, ptr @portcinen_ctl, ptr @.str.83, ptr @portdinen_ctl, ptr @.str.84, ptr @porteinen_ctl, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @cx2072x_dapm_widgets, ptr @.str.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @porta_dac_enum, ptr @dac_enum_text, ptr @.str.99, ptr @portg_dac_enum, ptr @porte_dac_enum, ptr @portm_dac_enum, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @adc1in_sel_enum, ptr @adc1in_sel_text, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @adc2in_sel_enum, ptr @adc2in_sel_text, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @cx2072x_reg_init, ptr @cx2072x_jack_gpio, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @cx2072x_dai_ops, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @mclk_pre_div, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @switch.table.cx2072x_config_i2spcm, ptr @switch.table.cx2072x_config_i2spcm.176, ptr @switch.table.cx2072x_config_i2spcm.177], section "llvm.metadata"
@0 = internal global [229 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_runtime_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_driver_cx2072x to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_cx2072x_dai to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_reg_defaults to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_reg_raw_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_snd_controls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_intercon to i32), i32 3432, i32 4288, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sdac1l_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sdac1r_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sdac2l_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sdac2r_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @porta_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portg_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @porte_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portm_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portaouten_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @porteouten_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portgouten_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portmouten_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sadc1l_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sadc1r_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sadc2l_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sadc2r_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid15_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portbinen_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portcinen_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portdinen_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @porteinen_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_dapm_widgets to i32), i32 9180, i32 11456, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @porta_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_enum_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portg_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @porte_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portm_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1in_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1in_sel_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2in_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2in_sel_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_reg_init to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_jack_gpio to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_set_dai_fmt._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_set_dai_fmt._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_hw_params._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_pre_div to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx2072x_config_i2spcm._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx2072x_config_i2spcm to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx2072x_config_i2spcm.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx2072x_config_i2spcm.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cx2072x_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx2072x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @cx2072x_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ven_id = alloca i32, align 4
  %rev_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ven_id) #8
  %0 = ptrtoint ptr %ven_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ven_id, align 4, !annotation !401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev_id) #8
  %1 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rev_id, align 4, !annotation !401
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %i2c, ptr noundef nonnull @cx2072x_regmap, ptr noundef nonnull @cx2072x_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.cx2072x_priv, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cx2072x_i2c_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev10 = getelementptr inbounds %struct.cx2072x_priv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev10, align 4
  %pll_changed = getelementptr inbounds %struct.cx2072x_priv, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %pll_changed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pll_changed, align 4
  %i2spcm_changed = getelementptr inbounds %struct.cx2072x_priv, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %i2spcm_changed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %i2spcm_changed, align 1
  %bclk_ratio = getelementptr inbounds %struct.cx2072x_priv, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bclk_ratio, align 4
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  %mclk = getelementptr inbounds %struct.cx2072x_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %mclk, align 4
  %cmp.i65 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %do.end18, label %if.end22

do.end18:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4) #11
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end22:                                         ; preds = %do.body
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %call24 = call i32 @regmap_read(ptr noundef %16, i32 noundef 512, ptr noundef nonnull %ven_id) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call26 = call i32 @regmap_read(ptr noundef %18, i32 noundef 520, ptr noundef nonnull %rev_id) #8
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 4
  %21 = ptrtoint ptr %ven_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ven_id, align 4
  %23 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rev_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.10, i32 noundef %22, i32 noundef %24) #11
  %25 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev10, align 4
  %call32 = call i32 @devm_snd_soc_register_component(ptr noundef %26, ptr noundef nonnull @soc_codec_driver_cx2072x, ptr noundef nonnull @soc_codec_cx2072x_dai, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end34

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev10, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %28, i1 noundef zeroext true) #8
  %29 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev10, align 4
  call void @pm_runtime_enable(ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end22.cleanup_crit_edge, %do.end18, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %14, %do.end18 ], [ 0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev_id) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ven_id) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_i2c_remove(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cx2072x_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 512, label %entry.return_crit_edge
    i32 520, label %entry.return_crit_edge1
    i32 220, label %entry.return_crit_edge2
    i32 1044, label %entry.return_crit_edge3
    i32 1056, label %entry.return_crit_edge4
    i32 1108, label %entry.return_crit_edge5
    i32 1112, label %entry.return_crit_edge6
    i32 1116, label %entry.return_crit_edge7
    i32 1120, label %entry.return_crit_edge8
    i32 1124, label %entry.return_crit_edge9
    i32 1128, label %entry.return_crit_edge10
    i32 17352, label %entry.return_crit_edge11
    i32 16832, label %entry.return_crit_edge12
    i32 16864, label %entry.return_crit_edge13
    i32 16404, label %entry.return_crit_edge14
    i32 16408, label %entry.return_crit_edge15
    i32 16432, label %entry.return_crit_edge16
    i32 18376, label %entry.return_crit_edge17
    i32 17856, label %entry.return_crit_edge18
    i32 17888, label %entry.return_crit_edge19
    i32 17428, label %entry.return_crit_edge20
    i32 17432, label %entry.return_crit_edge21
    i32 20424, label %entry.return_crit_edge22
    i32 19840, label %entry.return_crit_edge23
    i32 19872, label %entry.return_crit_edge24
    i32 19844, label %entry.return_crit_edge25
    i32 19876, label %entry.return_crit_edge26
    i32 19848, label %entry.return_crit_edge27
    i32 19880, label %entry.return_crit_edge28
    i32 19852, label %entry.return_crit_edge29
    i32 19884, label %entry.return_crit_edge30
    i32 19856, label %entry.return_crit_edge31
    i32 19888, label %entry.return_crit_edge32
    i32 19860, label %entry.return_crit_edge33
    i32 19892, label %entry.return_crit_edge34
    i32 19864, label %entry.return_crit_edge35
    i32 19896, label %entry.return_crit_edge36
    i32 19460, label %entry.return_crit_edge37
    i32 19476, label %entry.return_crit_edge38
    i32 19480, label %entry.return_crit_edge39
    i32 21448, label %entry.return_crit_edge40
    i32 20864, label %entry.return_crit_edge41
    i32 20896, label %entry.return_crit_edge42
    i32 20868, label %entry.return_crit_edge43
    i32 20900, label %entry.return_crit_edge44
    i32 20872, label %entry.return_crit_edge45
    i32 20904, label %entry.return_crit_edge46
    i32 20484, label %entry.return_crit_edge47
    i32 20500, label %entry.return_crit_edge48
    i32 20504, label %entry.return_crit_edge49
    i32 22532, label %entry.return_crit_edge50
    i32 22548, label %entry.return_crit_edge51
    i32 22556, label %entry.return_crit_edge52
    i32 22560, label %entry.return_crit_edge53
    i32 22564, label %entry.return_crit_edge54
    i32 22576, label %entry.return_crit_edge55
    i32 24596, label %entry.return_crit_edge56
    i32 24604, label %entry.return_crit_edge57
    i32 24608, label %entry.return_crit_edge58
    i32 24612, label %entry.return_crit_edge59
    i32 24624, label %entry.return_crit_edge60
    i32 24960, label %entry.return_crit_edge61
    i32 24992, label %entry.return_crit_edge62
    i32 26644, label %entry.return_crit_edge63
    i32 26652, label %entry.return_crit_edge64
    i32 27008, label %entry.return_crit_edge65
    i32 27040, label %entry.return_crit_edge66
    i32 25620, label %entry.return_crit_edge67
    i32 25628, label %entry.return_crit_edge68
    i32 25632, label %entry.return_crit_edge69
    i32 25636, label %entry.return_crit_edge70
    i32 25984, label %entry.return_crit_edge71
    i32 26016, label %entry.return_crit_edge72
    i32 29700, label %entry.return_crit_edge73
    i32 29716, label %entry.return_crit_edge74
    i32 29724, label %entry.return_crit_edge75
    i32 29728, label %entry.return_crit_edge76
    i32 29732, label %entry.return_crit_edge77
    i32 29744, label %entry.return_crit_edge78
    i32 30080, label %entry.return_crit_edge79
    i32 30112, label %entry.return_crit_edge80
    i32 30740, label %entry.return_crit_edge81
    i32 30748, label %entry.return_crit_edge82
    i32 30752, label %entry.return_crit_edge83
    i32 30756, label %entry.return_crit_edge84
    i32 31104, label %entry.return_crit_edge85
    i32 31136, label %entry.return_crit_edge86
    i32 23572, label %entry.return_crit_edge87
    i32 23580, label %entry.return_crit_edge88
    i32 23556, label %entry.return_crit_edge89
    i32 23600, label %entry.return_crit_edge90
    i32 34836, label %entry.return_crit_edge91
    i32 34844, label %entry.return_crit_edge92
    i32 34820, label %entry.return_crit_edge93
    i32 34864, label %entry.return_crit_edge94
    i32 21524, label %entry.return_crit_edge95
    i32 21888, label %entry.return_crit_edge96
    i32 21920, label %entry.return_crit_edge97
    i32 21892, label %entry.return_crit_edge98
    i32 21924, label %entry.return_crit_edge99
    i32 27904, label %entry.return_crit_edge100
    i32 27906, label %entry.return_crit_edge101
    i32 27908, label %entry.return_crit_edge102
    i32 27910, label %entry.return_crit_edge103
    i32 27912, label %entry.return_crit_edge104
    i32 27914, label %entry.return_crit_edge105
    i32 27916, label %entry.return_crit_edge106
    i32 27920, label %entry.return_crit_edge107
    i32 27924, label %entry.return_crit_edge108
    i32 27928, label %entry.return_crit_edge109
    i32 28032, label %entry.return_crit_edge110
    i32 28036, label %entry.return_crit_edge111
    i32 28160, label %entry.return_crit_edge112
    i32 28164, label %entry.return_crit_edge113
    i32 28168, label %entry.return_crit_edge114
    i32 28172, label %entry.return_crit_edge115
    i32 28176, label %entry.return_crit_edge116
    i32 28184, label %entry.return_crit_edge117
    i32 28180, label %entry.return_crit_edge118
    i32 28936, label %entry.return_crit_edge119
    i32 28964, label %entry.return_crit_edge120
    i32 29456, label %entry.return_crit_edge121
    i32 29480, label %entry.return_crit_edge122
    i32 29072, label %entry.return_crit_edge123
    i32 29076, label %entry.return_crit_edge124
    i32 29080, label %entry.return_crit_edge125
    i32 29084, label %entry.return_crit_edge126
    i32 29088, label %entry.return_crit_edge127
    i32 29092, label %entry.return_crit_edge128
    i32 29096, label %entry.return_crit_edge129
    i32 29100, label %entry.return_crit_edge130
    i32 29104, label %entry.return_crit_edge131
    i32 29108, label %entry.return_crit_edge132
    i32 29184, label %entry.return_crit_edge133
    i32 29188, label %entry.return_crit_edge134
    i32 29228, label %entry.return_crit_edge135
    i32 29232, label %entry.return_crit_edge136
    i32 29244, label %entry.return_crit_edge137
    i32 28800, label %entry.return_crit_edge138
    i32 28804, label %entry.return_crit_edge139
    i32 28808, label %entry.return_crit_edge140
    i32 28812, label %entry.return_crit_edge141
    i32 28816, label %entry.return_crit_edge142
  ]

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cx2072x_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %reg, label %sw.default [
    i32 512, label %entry.return_crit_edge
    i32 520, label %entry.return_crit_edge1
    i32 28180, label %entry.return_crit_edge2
    i32 29228, label %entry.return_crit_edge3
    i32 22564, label %entry.return_crit_edge4
    i32 24612, label %entry.return_crit_edge5
    i32 25636, label %entry.return_crit_edge6
    i32 29732, label %entry.return_crit_edge7
    i32 30756, label %entry.return_crit_edge8
    i32 27916, label %entry.return_crit_edge9
    i32 27917, label %entry.return_crit_edge10
  ]

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %recv_buf = alloca i32, align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %send_buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recv_buf) #8
  %0 = ptrtoint ptr %recv_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %recv_buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #8
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %send_buf) #8
  %3 = getelementptr inbounds [2 x i8], ptr %send_buf, i32 0, i32 1
  %call = tail call fastcc i32 @cx2072x_register_size(i32 noundef %reg)
  %shr = lshr i32 %reg, 8
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %send_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %send_buf, align 1
  %conv2 = trunc i32 %reg to i8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %3, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %send_buf, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %arrayidx10 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayidx10, align 4
  %conv12 = trunc i32 %call to i16
  %len14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %len14 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv12, ptr %len14, align 4
  %buf16 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %recv_buf, ptr %buf16, align 4
  %flags18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags18, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call20 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20)
  %cmp.not = icmp eq i32 %call20, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  %spec.select = select i1 %cmp22, i32 %call20, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %recv_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %recv_buf, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %send_buf) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recv_buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %buf.i = alloca [13 x i8], align 1
  %raw_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_value)
  %call = tail call fastcc i32 @cx2072x_register_size(i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 28180, i32 %reg)
  %cmp = icmp eq i32 %reg, 28180
  %shr = lshr i32 %value, 24
  %value.addr.0 = select i1 %cmp, i32 %shr, i32 %value
  %size.0 = select i1 %cmp, i32 1, i32 %call
  %0 = tail call i32 @llvm.bswap.i32(i32 %value.addr.0)
  %1 = ptrtoint ptr %raw_value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %raw_value, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buf.i) #8
  %add.i = add i32 %size.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 13
  %2 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 11)
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !402

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 497, i32 noundef 9, ptr noundef null) #8
  br label %cx2072x_reg_raw_write.exit

if.end22.i:                                       ; preds = %entry
  %reg.addr.0 = select i1 %cmp, i32 28183, i32 %reg
  %4 = getelementptr inbounds [13 x i8], ptr %buf.i, i32 0, i32 1
  %shr.i = lshr i32 %reg.addr.0, 8
  %conv.i = trunc i32 %shr.i to i8
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %buf.i, align 1
  %conv23.i = trunc i32 %reg.addr.0 to i8
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv23.i, ptr %4, align 1
  %7 = call ptr @memcpy(ptr %2, ptr %raw_value, i32 %size.0)
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %buf.i, i32 noundef %add.i, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i)
  %cmp28.not.i = icmp eq i32 %call.i.i, %add.i
  br i1 %cmp28.not.i, label %if.end22.i.cx2072x_reg_raw_write.exit_crit_edge, label %do.end33.i

if.end22.i.cx2072x_reg_raw_write.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx2072x_reg_raw_write.exit

do.end33.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.15, i32 noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp34.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp34.i, i32 %call.i.i, i32 -5
  br label %cx2072x_reg_raw_write.exit

cx2072x_reg_raw_write.exit:                       ; preds = %do.end33.i, %if.end22.i.cx2072x_reg_raw_write.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %spec.select.i, %do.end33.i ], [ 0, %if.end22.i.cx2072x_reg_raw_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_value)
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @cx2072x_register_size(i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %reg, label %sw.default [
    i32 512, label %entry.return_crit_edge
    i32 520, label %entry.return_crit_edge2
    i32 22564, label %entry.return_crit_edge3
    i32 24612, label %entry.return_crit_edge4
    i32 25636, label %entry.return_crit_edge5
    i32 29732, label %entry.return_crit_edge6
    i32 30756, label %entry.return_crit_edge7
    i32 28160, label %entry.return_crit_edge8
    i32 28164, label %entry.return_crit_edge9
    i32 28168, label %entry.return_crit_edge10
    i32 28172, label %entry.return_crit_edge11
    i32 28176, label %entry.return_crit_edge12
    i32 28184, label %entry.return_crit_edge13
    i32 28180, label %entry.return_crit_edge14
    i32 27916, label %entry.return_crit_edge15
    i32 27924, label %entry.return_crit_edge16
    i32 27928, label %entry.return_crit_edge17
    i32 28032, label %entry.return_crit_edge18
    i32 28036, label %entry.return_crit_edge19
    i32 27904, label %entry.sw.bb1_crit_edge
    i32 27906, label %entry.sw.bb1_crit_edge20
    i32 27908, label %entry.sw.bb1_crit_edge21
    i32 27910, label %entry.sw.bb1_crit_edge22
    i32 27912, label %entry.sw.bb1_crit_edge23
    i32 27914, label %entry.sw.bb1_crit_edge24
    i32 17352, label %entry.sw.bb1_crit_edge25
    i32 18376, label %entry.sw.bb1_crit_edge26
    i32 20424, label %entry.sw.bb1_crit_edge27
    i32 21448, label %entry.sw.bb1_crit_edge28
    i32 28936, label %entry.sw.bb1_crit_edge29
    i32 28964, label %entry.sw.bb1_crit_edge30
    i32 29456, label %entry.sw.bb1_crit_edge31
    i32 29480, label %entry.sw.bb1_crit_edge32
    i32 29068, label %entry.sw.bb1_crit_edge33
    i32 29072, label %entry.sw.bb1_crit_edge34
    i32 29076, label %entry.sw.bb1_crit_edge35
    i32 29080, label %entry.sw.bb1_crit_edge36
    i32 29084, label %entry.sw.bb1_crit_edge37
    i32 29088, label %entry.sw.bb1_crit_edge38
    i32 29092, label %entry.sw.bb1_crit_edge39
    i32 29096, label %entry.sw.bb1_crit_edge40
    i32 29100, label %entry.sw.bb1_crit_edge41
    i32 29104, label %entry.sw.bb1_crit_edge42
    i32 29108, label %entry.sw.bb1_crit_edge43
    i32 29184, label %entry.sw.bb1_crit_edge44
    i32 29188, label %entry.sw.bb1_crit_edge45
    i32 29228, label %entry.sw.bb1_crit_edge46
    i32 29232, label %entry.sw.bb1_crit_edge47
    i32 29244, label %entry.sw.bb1_crit_edge48
    i32 28800, label %entry.sw.bb1_crit_edge49
    i32 28804, label %entry.sw.bb1_crit_edge50
    i32 28808, label %entry.sw.bb1_crit_edge51
    i32 28812, label %entry.sw.bb1_crit_edge52
    i32 28816, label %entry.sw.bb1_crit_edge53
  ]

entry.sw.bb1_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28, %entry.sw.bb1_crit_edge29, %entry.sw.bb1_crit_edge30, %entry.sw.bb1_crit_edge31, %entry.sw.bb1_crit_edge32, %entry.sw.bb1_crit_edge33, %entry.sw.bb1_crit_edge34, %entry.sw.bb1_crit_edge35, %entry.sw.bb1_crit_edge36, %entry.sw.bb1_crit_edge37, %entry.sw.bb1_crit_edge38, %entry.sw.bb1_crit_edge39, %entry.sw.bb1_crit_edge40, %entry.sw.bb1_crit_edge41, %entry.sw.bb1_crit_edge42, %entry.sw.bb1_crit_edge43, %entry.sw.bb1_crit_edge44, %entry.sw.bb1_crit_edge45, %entry.sw.bb1_crit_edge46, %entry.sw.bb1_crit_edge47, %entry.sw.bb1_crit_edge48, %entry.sw.bb1_crit_edge49, %entry.sw.bb1_crit_edge50, %entry.sw.bb1_crit_edge51, %entry.sw.bb1_crit_edge52, %entry.sw.bb1_crit_edge53
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19
  %retval.0 = phi i32 [ 1, %sw.default ], [ 2, %sw.bb1 ], [ 4, %entry.return_crit_edge ], [ 4, %entry.return_crit_edge2 ], [ 4, %entry.return_crit_edge3 ], [ 4, %entry.return_crit_edge4 ], [ 4, %entry.return_crit_edge5 ], [ 4, %entry.return_crit_edge6 ], [ 4, %entry.return_crit_edge7 ], [ 4, %entry.return_crit_edge8 ], [ 4, %entry.return_crit_edge9 ], [ 4, %entry.return_crit_edge10 ], [ 4, %entry.return_crit_edge11 ], [ 4, %entry.return_crit_edge12 ], [ 4, %entry.return_crit_edge13 ], [ 4, %entry.return_crit_edge14 ], [ 4, %entry.return_crit_edge15 ], [ 4, %entry.return_crit_edge16 ], [ 4, %entry.return_crit_edge17 ], [ 4, %entry.return_crit_edge18 ], [ 4, %entry.return_crit_edge19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_probe(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %codec, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %codec1 = getelementptr inbounds %struct.cx2072x_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %codec1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %codec, ptr %codec1, align 4
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1044, i32 noundef 0) #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regmap_multi_reg_write(ptr noundef %9, ptr noundef nonnull @cx2072x_reg_init, i32 noundef 17) #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 26652, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 28036, i32 noundef 132, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1044, i32 noundef 3) #8
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call.i24 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_set_jack(ptr noundef %codec, ptr noundef %jack, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %codec, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %jack, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 28180, i32 noundef 0) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 22560, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpiod_dev = getelementptr inbounds %struct.cx2072x_priv, ptr %3, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %gpiod_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_dev, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %jack_gpio = getelementptr inbounds %struct.cx2072x_priv, ptr %3, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %jack_gpio, ptr @cx2072x_jack_gpio, i32 160)
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %gpiod_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %gpiod_dev, align 4
  %data7 = getelementptr inbounds %struct.cx2072x_priv, ptr %3, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %codec, ptr %data7, align 4
  %call9 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull %jack, i32 noundef 1, ptr noundef %jack_gpio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then2.if.end15_crit_edge, label %if.then11

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %gpiod_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %gpiod_dev, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.then2.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i29 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i29, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %codec, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 1128, i32 noundef 31) #8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 28180, i32 noundef 301989888) #8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 22560, i32 noundef 128) #8
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 29244, i32 noundef 115) #8
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %19, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 29104, i32 noundef 768) #8
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %19, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 29188, i32 noundef 0) #8
  %card.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %codec, i32 0, i32 17, i32 4
  %32 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i.i, align 4
  %dapm_mutex.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %33, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i, i32 noundef 1) #8
  %call13.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.91) #8
  %call14.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.85) #8
  %call15.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.87) #8
  %34 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i.i, align 4
  %dapm_mutex.i27.i = getelementptr inbounds %struct.snd_soc_card, ptr %35, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i27.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call9, %if.then11 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_set_bias_level(ptr nocapture noundef readonly %codec, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %codec, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %codec, i32 0, i32 17
  %4 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp = icmp eq i32 %level, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %entry.if.end10.sink.split_crit_edge, label %if.else

entry.if.end10.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp4 = icmp ne i32 %level, 0
  %or.cond15 = select i1 %cmp4, i1 true, i1 %cmp2
  br i1 %or.cond15, label %if.else.if.end10_crit_edge, label %if.else.if.end10.sink.split_crit_edge

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.sink.split

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10.sink.split:                              ; preds = %if.else.if.end10.sink.split_crit_edge, %entry.if.end10.sink.split_crit_edge
  %.sink16 = phi i32 [ 0, %entry.if.end10.sink.split_crit_edge ], [ 3, %if.else.if.end10.sink.split_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1044, i32 noundef %.sink16) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afg_power_ev(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink8 = phi i32 [ 16, %sw.bb3 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 28032, i32 noundef %.sink8, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_jack_status_check(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %jack = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack) #8
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %jack, align 4, !annotation !401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #8
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type, align 4
  %lock = getelementptr inbounds %struct.cx2072x_priv, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 22564, ptr noundef nonnull %jack) #8
  %8 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jack, align 4
  %shr = lshr i32 %9, 24
  store i32 %shr, ptr %jack, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 29228, ptr noundef nonnull %type) #8
  %12 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %13)
  %cmp = icmp eq i32 %13, 128
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %shr4 = lshr i32 %15, 8
  store i32 %shr4, ptr %type, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then.if.end12_crit_edge, label %if.then5

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %17 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool7.not, i32 3, i32 16387
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %state.0 = phi i32 [ 0, %entry.if.end12_crit_edge ], [ %spec.select, %if.then5 ], [ 1, %if.then.if.end12_crit_edge ]
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call14 = call i32 @regmap_write(ptr noundef %19, i32 noundef 28180, i32 noundef 301989888) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_jack_status_check.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_jack_status_check, %if.then20)) #8
          to label %do.end [label %if.then20], !srcloc !403

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_jack_status_check.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.130, i32 noundef %23, i32 noundef %state.0) #8
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack) #8
  ret i32 %state.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx2072x_dsp_dai_probe(ptr nocapture noundef readonly %dai) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %en_aec_ref = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %en_aec_ref to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %en_aec_ref, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mclk, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.136) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_rate = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx2072x_set_dai_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %bclk_ratio = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ratio, ptr %bclk_ratio, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_set_dai_fmt.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_set_dai_fmt, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !403

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_set_dai_fmt.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.139, i32 noundef %fmt) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %trunc, label %do.end7 [
    i16 4096, label %do.end.sw.epilog_crit_edge
    i16 16384, label %do.end.sw.epilog_crit_edge33
  ]

do.end.sw.epilog_crit_edge33:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.140) #11
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge33
  %and8 = and i32 %fmt, 15
  %and8.off = add nsw i32 %and8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8.off)
  %switch = icmp ult i32 %and8.off, 3
  br i1 %switch, label %sw.epilog14, label %do.end13

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.142) #11
  br label %cleanup

sw.epilog14:                                      ; preds = %sw.epilog
  %and15 = lshr i32 %fmt, 8
  %8 = and i32 %and15, 15
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %8, label %do.end20 [
    i32 0, label %sw.epilog14.sw.epilog21_crit_edge
    i32 4, label %sw.epilog14.sw.epilog21_crit_edge34
    i32 3, label %sw.epilog14.sw.epilog21_crit_edge35
    i32 2, label %sw.epilog14.sw.epilog21_crit_edge36
  ]

sw.epilog14.sw.epilog21_crit_edge36:              ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog14.sw.epilog21_crit_edge35:              ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog14.sw.epilog21_crit_edge34:              ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog14.sw.epilog21_crit_edge:                ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

do.end20:                                         ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.145) #11
  br label %cleanup

sw.epilog21:                                      ; preds = %sw.epilog14.sw.epilog21_crit_edge, %sw.epilog14.sw.epilog21_crit_edge34, %sw.epilog14.sw.epilog21_crit_edge35, %sw.epilog14.sw.epilog21_crit_edge36
  %dai_fmt = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %fmt, ptr %dai_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog21, %do.end20, %do.end13, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end13 ], [ -22, %do.end20 ], [ 0, %sw.epilog21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !404
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %params_width.exit.cleanup_crit_edge, label %if.end

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %params_width.exit
  %call4 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mclk_rate = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp eq i32 %14, 0
  br i1 %cmp8, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.147) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %bclk_ratio = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bclk_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %spec.select = select i1 %tobool.not, i32 %call4, i32 %16
  %17 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %7, label %do.end16 [
    i32 48000, label %if.end10.do.body17_crit_edge
    i32 32000, label %if.end10.do.body17_crit_edge99
    i32 24000, label %if.end10.do.body17_crit_edge100
    i32 16000, label %if.end10.do.body17_crit_edge101
    i32 96000, label %if.end10.do.body17_crit_edge102
    i32 192000, label %if.end10.do.body17_crit_edge103
  ]

if.end10.do.body17_crit_edge103:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end10.do.body17_crit_edge102:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end10.do.body17_crit_edge101:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end10.do.body17_crit_edge100:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end10.do.body17_crit_edge99:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end10.do.body17_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.150, i32 noundef %7) #11
  br label %cleanup

do.body17:                                        ; preds = %if.end10.do.body17_crit_edge, %if.end10.do.body17_crit_edge99, %if.end10.do.body17_crit_edge100, %if.end10.do.body17_crit_edge101, %if.end10.do.body17_crit_edge102, %if.end10.do.body17_crit_edge103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_hw_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_hw_params, %if.then22)) #8
          to label %do.end25 [label %if.then22], !srcloc !403

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_hw_params.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.152, i32 noundef %call1.i, i32 noundef %spec.select, i32 noundef %7) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body17
  %frame_size26 = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 11
  %18 = ptrtoint ptr %frame_size26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %frame_size26, align 4
  %sample_size27 = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %sample_size27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call1.i, ptr %sample_size27, align 4
  %sample_rate28 = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 12
  %20 = ptrtoint ptr %sample_rate28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %sample_rate28, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp29 = icmp eq i32 %22, 2
  br i1 %cmp29, label %if.then30, label %do.end25.if.end49_crit_edge

do.end25.if.end49_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then30:                                        ; preds = %do.end25
  %en_aec_ref = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 14
  %23 = ptrtoint ptr %en_aec_ref to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %en_aec_ref, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_hw_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_hw_params, %if.then43)) #8
          to label %do.end47 [label %if.then43], !srcloc !403

if.then43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_hw_params.__UNIQUE_ID_ddebug300, ptr noundef %25, ptr noundef nonnull @.str.153) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %if.then30
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 19460, i32 noundef 3) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %do.end25.if.end49_crit_edge
  %pll_changed = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 8
  %28 = ptrtoint ptr %pll_changed to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll_changed, align 4, !range !405
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool50.not = icmp eq i8 %29, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  %30 = ptrtoint ptr %sample_rate28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample_rate28, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %31, label %do.end.i [
    i32 48000, label %if.then51.sw.epilog.i_crit_edge
    i32 32000, label %if.then51.sw.epilog.i_crit_edge104
    i32 24000, label %if.then51.sw.epilog.i_crit_edge105
    i32 16000, label %if.then51.sw.epilog.i_crit_edge106
    i32 96000, label %sw.bb3.i
    i32 192000, label %sw.bb4.i
  ]

if.then51.sw.epilog.i_crit_edge106:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then51.sw.epilog.i_crit_edge105:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then51.sw.epilog.i_crit_edge104:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then51.sw.epilog.i_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.150, i32 noundef %31) #11
  br label %cx2072x_config_pll.exit

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %if.then51.sw.epilog.i_crit_edge, %if.then51.sw.epilog.i_crit_edge104, %if.then51.sw.epilog.i_crit_edge105, %if.then51.sw.epilog.i_crit_edge106
  %pt_sample_per_sync.0.i = phi i32 [ 0, %sw.bb4.i ], [ 16, %sw.bb3.i ], [ 32, %if.then51.sw.epilog.i_crit_edge ], [ 32, %if.then51.sw.epilog.i_crit_edge104 ], [ 32, %if.then51.sw.epilog.i_crit_edge105 ], [ 32, %if.then51.sw.epilog.i_crit_edge106 ]
  %pt_clock_per_sample.0.i = phi i32 [ 24, %sw.bb4.i ], [ 48, %sw.bb3.i ], [ 96, %if.then51.sw.epilog.i_crit_edge ], [ 96, %if.then51.sw.epilog.i_crit_edge104 ], [ 96, %if.then51.sw.epilog.i_crit_edge105 ], [ 96, %if.then51.sw.epilog.i_crit_edge106 ]
  %35 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %36)
  %cmp2.not.i.i = icmp ugt i32 %36, 6144000
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %sw.epilog.i.if.then.i.i_crit_edge

sw.epilog.i.if.then.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.7.i.i.if.then.i.i_crit_edge, %for.inc.6.i.i.if.then.i.i_crit_edge, %for.inc.4.i.i.if.then.i.i_crit_edge, %for.inc.3.i.i.if.then.i.i_crit_edge, %for.inc.2.i.i.if.then.i.i_crit_edge, %for.inc.1.i.i.if.then.i.i_crit_edge, %for.inc.i.i.if.then.i.i_crit_edge, %sw.epilog.i.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.i.if.then.i.i_crit_edge ], [ 1, %for.inc.i.i.if.then.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.then.i.i_crit_edge ], [ 3, %for.inc.2.i.i.if.then.i.i_crit_edge ], [ 4, %for.inc.3.i.i.if.then.i.i_crit_edge ], [ 5, %for.inc.4.i.i.if.then.i.i_crit_edge ], [ 7, %for.inc.6.i.i.if.then.i.i_crit_edge ], [ 8, %for.inc.7.i.i.if.then.i.i_crit_edge ]
  %div4.i.i = getelementptr [9 x %struct.anon.108], ptr @mclk_pre_div, i32 0, i32 %i.09.lcssa.i.i, i32 1
  %37 = ptrtoint ptr %div4.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %div4.i.i, align 4
  br label %get_div_from_mclk.exit.i

for.inc.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %36)
  %cmp2.not.1.i.i = icmp ugt i32 %36, 12288000
  br i1 %cmp2.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %36)
  %cmp2.not.2.i.i = icmp ugt i32 %36, 19200000
  br i1 %cmp2.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then.i.i_crit_edge

for.inc.1.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %36)
  %cmp2.not.3.i.i = icmp ugt i32 %36, 26000000
  br i1 %cmp2.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.then.i.i_crit_edge

for.inc.2.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28224000, i32 %36)
  %cmp2.not.4.i.i = icmp ugt i32 %36, 28224000
  br i1 %cmp2.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.then.i.i_crit_edge

for.inc.3.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %36)
  %cmp2.not.5.i.i = icmp ugt i32 %36, 36864000
  br i1 %cmp2.not.5.i.i, label %for.inc.6.i.i, label %for.inc.4.i.i.if.then.i.i_crit_edge

for.inc.4.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000000, i32 %36)
  %cmp2.not.7.i.i = icmp ugt i32 %36, 48000000
  br i1 %cmp2.not.7.i.i, label %for.inc.7.i.i, label %for.inc.6.i.i.if.then.i.i_crit_edge

for.inc.6.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %36)
  %cmp2.not.8.i.i = icmp ugt i32 %36, 49152000
  br i1 %cmp2.not.8.i.i, label %for.inc.7.i.i.get_div_from_mclk.exit.i_crit_edge, label %for.inc.7.i.i.if.then.i.i_crit_edge

for.inc.7.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.7.i.i.get_div_from_mclk.exit.i_crit_edge: ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_div_from_mclk.exit.i

get_div_from_mclk.exit.i:                         ; preds = %for.inc.7.i.i.get_div_from_mclk.exit.i_crit_edge, %if.then.i.i
  %div.0.i.i = phi i32 [ %38, %if.then.i.i ], [ 8, %for.inc.7.i.i.get_div_from_mclk.exit.i_crit_edge ]
  %div.i = udiv i32 %36, %div.0.i.i
  %mul.i = mul nuw nsw i32 %31, 3072
  %div6.i = udiv i32 %mul.i, %div.i
  %mul7.i = mul i32 %div6.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul7.i)
  %tobool.not.i = icmp eq i32 %mul.i, %mul7.i
  br i1 %tobool.not.i, label %if.end202.thread.i, label %if.end202.i

if.end202.thread.i:                               ; preds = %get_div_from_mclk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub2039.i = shl i32 %div.0.i.i, 9
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %or20610.i = add i32 %sub2039.i, -448
  %call20711.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 29072, i32 noundef %or20610.i) #8
  br label %if.then210.i

if.end202.i:                                      ; preds = %get_div_from_mclk.exit.i
  %sub.i = sub i32 %mul.i, %mul7.i
  %mul8.i = mul i32 %sub.i, 1000
  %div9.i = udiv i32 %mul8.i, %div.i
  %add.i = add i32 %div9.i, 4000
  %conv.i = zext i32 %add.i to i64
  %mul10.i = mul nuw nsw i64 %conv.i, 1048572
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7905747460161236407, i64 %mul10.i, i32 0) #12, !srcloc !406
  %asmresult.i.i = extractvalue { i64, i32 } %41, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %41, 1
  %42 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7905747460161236407, i64 %mul10.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !407
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %mul8.i)
  %phi.cmp.i = icmp ugt i32 %div.i, %mul8.i
  %sub203.i = shl i32 %div.0.i.i, 9
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %or206.i = add i32 %sub203.i, -448
  %call207.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 29072, i32 noundef %or206.i) #8
  br i1 %phi.cmp.i, label %if.end202.i.if.then210.i_crit_edge, label %if.else213.i

if.end202.i.if.then210.i_crit_edge:               ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then210.i

if.then210.i:                                     ; preds = %if.end202.i.if.then210.i_crit_edge, %if.end202.thread.i
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %call212.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 29084, i32 noundef 256) #8
  %dec.c5.i = add nsw i32 %div6.i, -1
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %call224.c6.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 29088, i32 noundef %dec.c5.i) #8
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %call229.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 28800, i32 noundef 0) #8
  br label %cx2072x_config_pll.exit

if.else213.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult10.i.i = extractvalue { i64, i32 } %42, 0
  %extract3.i = lshr i64 %asmresult10.i.i, 2
  %extract.t4.i = trunc i64 %extract3.i to i32
  %add200.i = add i32 %extract.t4.i, 499
  %div201.i = udiv i32 %add200.i, 1000
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %and215.i = and i32 %div201.i, 4095
  %call216.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 29080, i32 noundef %and215.i) #8
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 4
  %shr218.i = lshr i32 %div201.i, 12
  %conv220.i = and i32 %shr218.i, 255
  %call221.i = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 29084, i32 noundef %conv220.i) #8
  %dec.c.i = add nsw i32 %div6.i, -1
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  %call224.c.i = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 29088, i32 noundef %dec.c.i) #8
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 4
  %call234.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 28800, i32 noundef %pt_sample_per_sync.0.i) #8
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %call236.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 28804, i32 noundef %pt_clock_per_sample.0.i) #8
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %mul238.i = mul nuw nsw i32 %pt_clock_per_sample.0.i, 3
  %div2391.i = lshr exact i32 %mul238.i, 1
  %call240.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 28808, i32 noundef %div2391.i) #8
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %call242.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 28812, i32 noundef 1) #8
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 4
  %call244.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 28816, i32 noundef 2) #8
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 28800, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cx2072x_config_pll.exit

cx2072x_config_pll.exit:                          ; preds = %if.else213.i, %if.then210.i, %do.end.i
  %69 = ptrtoint ptr %pll_changed to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %pll_changed, align 4
  br label %if.end54

if.end54:                                         ; preds = %cx2072x_config_pll.exit, %if.end49.if.end54_crit_edge
  %i2spcm_changed = getelementptr inbounds %struct.cx2072x_priv, ptr %5, i32 0, i32 9
  %70 = ptrtoint ptr %i2spcm_changed to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i2spcm_changed, align 1, !range !405
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool55.not = icmp eq i8 %71, 0
  br i1 %tobool55.not, label %if.end54.cleanup_crit_edge, label %if.then56

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cx2072x_config_i2spcm(ptr noundef %5)
  %72 = ptrtoint ptr %i2spcm_changed to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %i2spcm_changed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end54.cleanup_crit_edge, %do.end16, %do.end, %if.end.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ %call1.i, %params_width.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx2072x_config_i2spcm(ptr nocapture noundef readonly %cx2072x) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cx2072x_priv, ptr %cx2072x, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %frame_size = getelementptr inbounds %struct.cx2072x_priv, ptr %cx2072x, i32 0, i32 11
  %2 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_size, align 4
  %sample_size2 = getelementptr inbounds %struct.cx2072x_priv, ptr %cx2072x, i32 0, i32 10
  %4 = ptrtoint ptr %sample_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample_size2, align 4
  %dai_fmt = getelementptr inbounds %struct.cx2072x_priv, ptr %cx2072x, i32 0, i32 13
  %6 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dai_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.155, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp slt i32 %5, 1
  br i1 %cmp3, label %do.end7, label %do.body9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.158, i32 noundef %5) #11
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_config_i2spcm, %if.then12)) #8
          to label %do.end15 [label %if.then12], !srcloc !403

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.160, i32 noundef %7) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body9
  %8 = trunc i32 %7 to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %trunc, label %do.end60 [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb35
  ]

sw.bb:                                            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_config_i2spcm, %if.then31)) #8
          to label %sw.epilog [label %if.then31], !srcloc !403

if.then31:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.161) #8
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_config_i2spcm, %if.then54)) #8
          to label %sw.epilog [label %if.then54], !srcloc !403

if.then54:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.162) #8
  br label %sw.epilog

do.end60:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.140) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then54, %sw.bb35, %if.then31, %sw.bb
  %reg3.sroa.0.0 = phi i32 [ -12, %if.then54 ], [ -4, %if.then31 ], [ -4, %sw.bb ], [ -12, %sw.bb35 ]
  %and61 = and i32 %7, 15
  %switch.tableidx = add nsw i32 %and61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %do.end71

do.end71:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.142) #11
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cx2072x_config_i2spcm, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pulse_len.04045 = lshr i32 %3, 1
  %and73 = lshr i32 %7, 8
  %12 = and i32 %and73, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.hole_check, label %switch.lookup.do.end93_crit_edge

switch.lookup.do.end93_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

do.end93:                                         ; preds = %switch.hole_check.do.end93_crit_edge, %switch.lookup.do.end93_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.145) #11
  br label %cleanup

switch.hole_check:                                ; preds = %switch.lookup
  %switch.maskindex = trunc i32 %12 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end93_crit_edge, label %switch.lookup53

switch.hole_check.do.end93_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

switch.lookup53:                                  ; preds = %switch.hole_check
  %switch.gep54 = getelementptr inbounds [5 x i32], ptr @switch.table.cx2072x_config_i2spcm.176, i32 0, i32 %12
  %15 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load55 = load i32, ptr %switch.gep54, align 4
  %switch.gep56 = getelementptr inbounds [5 x i32], ptr @switch.table.cx2072x_config_i2spcm.177, i32 0, i32 %12
  %16 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load57 = load i32, ptr %switch.gep56, align 4
  %div1044146 = lshr i32 %3, 4
  %mul = shl nuw nsw i32 %div1044146, 3
  %sub = add nuw nsw i32 %pulse_len.04045, 127
  %bf.value111 = and i32 %sub, 127
  %bf.shl112 = shl nuw nsw i32 %bf.value111, 23
  %17 = shl i32 %3, 15
  %18 = add i32 %17, 8126464
  %bf.shl119 = and i32 %18, 8126464
  %19 = shl i32 %5, 13
  %20 = add i32 %19, 196608
  %bf.shl126 = and i32 %20, 196608
  %bf.lshr = lshr i32 %switch.load57, 16
  %bf.clear130 = and i32 %bf.lshr, 16384
  %is_frame_inv.0.masked = and i32 %switch.load57, -1073709056
  %bf.clear120.masked.masked = or i32 %is_frame_inv.0.masked, %bf.shl112
  %bf.clear127.masked = or i32 %bf.clear120.masked.masked, %bf.shl119
  %bf.clear134 = or i32 %bf.clear127.masked, %bf.shl126
  %bf.set135 = or i32 %bf.clear134, %bf.clear130
  %bf.shl139 = shl nuw nsw i32 %bf.value111, 7
  %bf.value118 = lshr i32 %18, 16
  %bf.clear144 = and i32 %bf.value118, 124
  %bf.value125 = lshr i32 %20, 16
  %bf.clear152 = and i32 %bf.value125, 3
  %bf.clear148.masked = or i32 %bf.set135, %bf.shl139
  %bf.clear155 = or i32 %bf.clear148.masked, %bf.clear144
  %bf.set156 = or i32 %bf.clear155, %bf.clear152
  %en_aec_ref = getelementptr inbounds %struct.cx2072x_priv, ptr %cx2072x, i32 0, i32 14
  %21 = ptrtoint ptr %en_aec_ref to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %en_aec_ref, align 4, !range !405
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool169.not = icmp eq i8 %22, 0
  %bf.set168 = select i1 %tobool169.not, i32 %switch.load, i32 0
  %bf.value193 = shl i32 %div1044146, 16
  %bf.shl194 = and i32 %bf.value193, 2031616
  %reg3.sroa.0.0.masked51 = and i32 %reg3.sroa.0.0, -67043332
  %bf.clear195 = or i32 %reg3.sroa.0.0.masked51, %bf.shl194
  %bf.set196 = or i32 %bf.clear195, %bf.set168
  %bf.clear204 = or i32 %switch.load, %reg3.sroa.0.0.masked51
  %bf.set210 = select i1 %tobool169.not, i32 %bf.shl194, i32 0
  %reg3.sroa.0.1 = or i32 %bf.clear204, %bf.set210
  %bf.value213 = and i32 %mul, 248
  %bf.shl214 = shl nuw nsw i32 %bf.value213, 16
  %bf.value218 = and i32 %pulse_len.04045, 7
  %bf.shl219 = shl nuw nsw i32 %bf.value218, 24
  %bf.set216 = or i32 %bf.shl214, %bf.shl219
  %bf.set221 = or i32 %bf.set216, %bf.value213
  %bf.shl228 = shl nuw nsw i32 %bf.value218, 8
  %bf.set225 = or i32 %bf.set221, %bf.shl228
  %bf.set230 = or i32 %bf.set225, -134154240
  %sample_rate = getelementptr inbounds %struct.cx2072x_priv, ptr %cx2072x, i32 0, i32 12
  %23 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sample_rate, align 4
  %mul241 = mul i32 %24, %3
  %25 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cx2072x, align 4
  %call245 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 28176, i32 noundef 0) #8
  %27 = and i32 %reg3.sroa.0.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool249.not = icmp eq i32 %27, 0
  br i1 %tobool249.not, label %switch.lookup53.if.end478_crit_edge, label %if.then434

switch.lookup53.if.end478_crit_edge:              ; preds = %switch.lookup53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end478

if.then434:                                       ; preds = %switch.lookup53
  %mul241.frozen = freeze i32 %mul241
  %div438 = udiv i32 147456000, %mul241.frozen
  %28 = mul i32 %div438, %mul241.frozen
  %rem436.decomposed = sub i32 147456000, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem436.decomposed)
  %tobool446.not = icmp eq i32 %rem436.decomposed, 0
  br i1 %tobool446.not, label %do.body452, label %do.end450

do.end450:                                        ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.173, i32 noundef %mul241) #11
  br label %cleanup

do.body452:                                       ; preds = %if.then434
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx2072x_config_i2spcm, %if.then464)) #8
          to label %do.end467 [label %if.then464], !srcloc !403

if.then464:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.175, i32 noundef %mul241) #8
  br label %do.end467

do.end467:                                        ; preds = %if.then464, %do.body452
  %sub469 = shl nuw nsw i32 %div438, 1
  %bf.value471 = add nuw nsw i32 %sub469, 254
  %bf.set477 = or i32 %bf.value471, -255
  br label %if.end478

if.end478:                                        ; preds = %do.end467, %switch.lookup53.if.end478_crit_edge
  %reg5.sroa.0.0 = phi i32 [ %bf.set477, %do.end467 ], [ -2, %switch.lookup53.if.end478_crit_edge ]
  %29 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cx2072x, align 4
  %call480 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 28160, i32 noundef %bf.set156) #8
  %31 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cx2072x, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 28164, i32 noundef -64, i32 noundef %bf.set196, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %33 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cx2072x, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 28168, i32 noundef -64, i32 noundef %reg3.sroa.0.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cx2072x, align 4
  %call486 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 28172, i32 noundef 0) #8
  %37 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cx2072x, align 4
  %call488 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 28184, i32 noundef %bf.set230) #8
  %39 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cx2072x, align 4
  %call490 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 28176, i32 noundef %reg5.sroa.0.0) #8
  %41 = ptrtoint ptr %cx2072x to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cx2072x, align 4
  %call492 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 28036, i32 noundef %switch.load55) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end478, %do.end450, %do.end93, %do.end71, %do.end60, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mclk = getelementptr inbounds %struct.cx2072x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx2072x_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mclk = getelementptr inbounds %struct.cx2072x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 229)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 229)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !292, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338, !340, !341, !343, !344, !346, !347, !348, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !367, !368, !370, !371, !373, !374, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !390}
!llvm.module.flags = !{!392, !393, !394, !395, !396, !397, !398, !399}
!llvm.ident = !{!400}

!0 = !{ptr @__initcall__kmod_snd_soc_cx2072x__303_1718_cx2072x_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cx2072x__303_1718_cx2072x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cx2072x.c", i32 1718, i32 1}
!2 = !{ptr @__exitcall_cx2072x_i2c_driver_exit, !1, !"__exitcall_cx2072x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cx2072x.c", i32 1720, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cx2072x.c", i32 1721, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cx2072x.c", i32 1722, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cx2072x.c", i32 1709, i32 11}
!12 = !{ptr @cx2072x_i2c_driver, !13, !"cx2072x_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cx2072x.c", i32 1707, i32 26}
!14 = !{ptr @cx2072x_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cx2072x.c", i32 1641, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cx2072x_i2c_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cx2072x.c", i32 1646, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/cx2072x.c", i32 1655, i32 45}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/cx2072x.c", i32 1657, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cx2072x_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @cx2072x_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/cx2072x.c", i32 1664, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cx2072x_i2c_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx2072x_i2c_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @cx2072x_regmap, !36, !"cx2072x_regmap", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cx2072x.c", i32 1600, i32 35}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/cx2072x.c", i32 560, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cx2072x_reg_read._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cx2072x_reg_read._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/cx2072x.c", i32 507, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cx2072x_reg_raw_write._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cx2072x_reg_raw_write._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @cx2072x_reg_defaults, !48, !"cx2072x_reg_defaults", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/cx2072x.c", i32 95, i32 33}
!49 = !{ptr @soc_codec_driver_cx2072x, !50, !"soc_codec_driver_cx2072x", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/cx2072x.c", i32 1520, i32 46}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/cx2072x.c", i32 887, i32 2}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/cx2072x.c", i32 889, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/cx2072x.c", i32 891, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/cx2072x.c", i32 893, i32 2}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/cx2072x.c", i32 895, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/cx2072x.c", i32 897, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/cx2072x.c", i32 899, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/cx2072x.c", i32 901, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/cx2072x.c", i32 903, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/cx2072x.c", i32 905, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/cx2072x.c", i32 906, i32 2}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/cx2072x.c", i32 907, i32 2}
!75 = !{ptr @cx2072x_snd_controls, !76, !"cx2072x_snd_controls", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/cx2072x.c", i32 886, i32 38}
!77 = !{ptr @boost_tlv, !78, !"boost_tlv", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/cx2072x.c", i32 64, i32 14}
!79 = !{ptr @adc_tlv, !80, !"adc_tlv", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/cx2072x.c", i32 62, i32 14}
!81 = !{ptr @dac_tlv, !82, !"dac_tlv", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/cx2072x.c", i32 63, i32 14}
!83 = !{ptr @hpf_tlv, !84, !"hpf_tlv", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/cx2072x.c", i32 71, i32 14}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/cx2072x.c", i32 1185, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cx2072x.c", i32 1187, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/cx2072x.c", i32 1188, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/cx2072x.c", i32 1189, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/cx2072x.c", i32 1190, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/cx2072x.c", i32 1192, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/cx2072x.c", i32 1195, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cx2072x.c", i32 1198, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cx2072x.c", i32 1199, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cx2072x.c", i32 1200, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cx2072x.c", i32 1201, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/cx2072x.c", i32 1203, i32 2}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/cx2072x.c", i32 1206, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/cx2072x.c", i32 1209, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/cx2072x.c", i32 1212, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/cx2072x.c", i32 1216, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/cx2072x.c", i32 1218, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/cx2072x.c", i32 1220, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/cx2072x.c", i32 1222, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/cx2072x.c", i32 1225, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/cx2072x.c", i32 1226, i32 2}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/cx2072x.c", i32 1227, i32 2}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/cx2072x.c", i32 1228, i32 2}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/cx2072x.c", i32 1229, i32 2}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/cx2072x.c", i32 1232, i32 2}
!136 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cx2072x.c", i32 1234, i32 2}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/cx2072x.c", i32 1235, i32 2}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/cx2072x.c", i32 1236, i32 2}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/cx2072x.c", i32 1237, i32 2}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/cx2072x.c", i32 1239, i32 2}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cx2072x.c", i32 1241, i32 2}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/cx2072x.c", i32 1244, i32 2}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/cx2072x.c", i32 1245, i32 2}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cx2072x.c", i32 1247, i32 2}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cx2072x.c", i32 1249, i32 2}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/cx2072x.c", i32 1251, i32 2}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cx2072x.c", i32 1253, i32 2}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cx2072x.c", i32 1255, i32 2}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/cx2072x.c", i32 1258, i32 2}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cx2072x.c", i32 1260, i32 2}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cx2072x.c", i32 1261, i32 2}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/cx2072x.c", i32 1262, i32 2}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/cx2072x.c", i32 1263, i32 2}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cx2072x.c", i32 1265, i32 2}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cx2072x.c", i32 1266, i32 2}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cx2072x.c", i32 1267, i32 2}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/cx2072x.c", i32 1268, i32 2}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/cx2072x.c", i32 1269, i32 2}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cx2072x.c", i32 1270, i32 2}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cx2072x.c", i32 1271, i32 2}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cx2072x.c", i32 1272, i32 2}
!189 = !{ptr @cx2072x_dapm_widgets, !190, !"cx2072x_dapm_widgets", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/cx2072x.c", i32 1183, i32 41}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/cx2072x.c", i32 1088, i32 2}
!193 = !{ptr @i2sdac1l_ctl, !194, !"i2sdac1l_ctl", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/cx2072x.c", i32 1087, i32 38}
!195 = !{ptr @i2sdac1r_ctl, !196, !"i2sdac1r_ctl", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cx2072x.c", i32 1090, i32 38}
!197 = !{ptr @i2sdac2l_ctl, !198, !"i2sdac2l_ctl", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cx2072x.c", i32 1093, i32 38}
!199 = !{ptr @i2sdac2r_ctl, !200, !"i2sdac2r_ctl", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cx2072x.c", i32 1096, i32 38}
!201 = !{ptr @porta_mux, !202, !"porta_mux", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/cx2072x.c", i32 1106, i32 38}
!203 = !{ptr @porta_dac_enum, !204, !"porta_dac_enum", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cx2072x.c", i32 1103, i32 30}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/cx2072x.c", i32 1100, i32 17}
!207 = !{ptr @dac_enum_text, !208, !"dac_enum_text", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/cx2072x.c", i32 1099, i32 27}
!209 = !{ptr @portg_mux, !210, !"portg_mux", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cx2072x.c", i32 1112, i32 38}
!211 = !{ptr @portg_dac_enum, !212, !"portg_dac_enum", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cx2072x.c", i32 1109, i32 30}
!213 = !{ptr @porte_mux, !214, !"porte_mux", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cx2072x.c", i32 1118, i32 38}
!215 = !{ptr @porte_dac_enum, !216, !"porte_dac_enum", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cx2072x.c", i32 1115, i32 30}
!217 = !{ptr @portm_mux, !218, !"portm_mux", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cx2072x.c", i32 1124, i32 38}
!219 = !{ptr @portm_dac_enum, !220, !"portm_dac_enum", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cx2072x.c", i32 1121, i32 30}
!221 = !{ptr @portaouten_ctl, !222, !"portaouten_ctl", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cx2072x.c", i32 1051, i32 38}
!223 = !{ptr @porteouten_ctl, !224, !"porteouten_ctl", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cx2072x.c", i32 1054, i32 38}
!225 = !{ptr @portgouten_ctl, !226, !"portgouten_ctl", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cx2072x.c", i32 1057, i32 38}
!227 = !{ptr @portmouten_ctl, !228, !"portmouten_ctl", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cx2072x.c", i32 1060, i32 38}
!229 = !{ptr @i2sadc1l_ctl, !230, !"i2sadc1l_ctl", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cx2072x.c", i32 1075, i32 38}
!231 = !{ptr @i2sadc1r_ctl, !232, !"i2sadc1r_ctl", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cx2072x.c", i32 1078, i32 38}
!233 = !{ptr @i2sadc2l_ctl, !234, !"i2sadc2l_ctl", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cx2072x.c", i32 1081, i32 38}
!235 = !{ptr @i2sadc2r_ctl, !236, !"i2sadc2r_ctl", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cx2072x.c", i32 1084, i32 38}
!237 = !{ptr @adc1_mux, !238, !"adc1_mux", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cx2072x.c", i32 1135, i32 38}
!239 = !{ptr @adc1in_sel_enum, !240, !"adc1in_sel_enum", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cx2072x.c", i32 1132, i32 30}
!241 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cx2072x.c", i32 1128, i32 2}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cx2072x.c", i32 1128, i32 18}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cx2072x.c", i32 1128, i32 34}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cx2072x.c", i32 1128, i32 50}
!249 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cx2072x.c", i32 1129, i32 2}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cx2072x.c", i32 1129, i32 18}
!253 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cx2072x.c", i32 1129, i32 34}
!255 = !{ptr @adc1in_sel_text, !256, !"adc1in_sel_text", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cx2072x.c", i32 1127, i32 27}
!257 = !{ptr @adc2_mux, !258, !"adc2_mux", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cx2072x.c", i32 1145, i32 38}
!259 = !{ptr @adc2in_sel_enum, !260, !"adc2in_sel_enum", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cx2072x.c", i32 1142, i32 30}
!261 = !{ptr @adc2in_sel_text, !262, !"adc2in_sel_text", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cx2072x.c", i32 1138, i32 27}
!263 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cx2072x.c", i32 1149, i32 2}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cx2072x.c", i32 1150, i32 2}
!267 = !{ptr @.str.119, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cx2072x.c", i32 1151, i32 2}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cx2072x.c", i32 1152, i32 2}
!271 = !{ptr @wid15_mix, !272, !"wid15_mix", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cx2072x.c", i32 1148, i32 38}
!273 = !{ptr @portbinen_ctl, !274, !"portbinen_ctl", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/cx2072x.c", i32 1063, i32 38}
!275 = !{ptr @portcinen_ctl, !276, !"portcinen_ctl", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/cx2072x.c", i32 1066, i32 38}
!277 = !{ptr @portdinen_ctl, !278, !"portdinen_ctl", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/cx2072x.c", i32 1069, i32 38}
!279 = !{ptr @porteinen_ctl, !280, !"porteinen_ctl", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/cx2072x.c", i32 1072, i32 38}
!281 = !{ptr @cx2072x_intercon, !282, !"cx2072x_intercon", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/cx2072x.c", i32 1276, i32 40}
!283 = !{ptr @cx2072x_reg_init, !284, !"cx2072x_reg_init", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/cx2072x.c", i32 233, i32 34}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/cx2072x.c", i32 1453, i32 10}
!287 = !{ptr @cx2072x_jack_gpio, !288, !"cx2072x_jack_gpio", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/cx2072x.c", i32 1452, i32 39}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/cx2072x.c", i32 1447, i32 2}
!291 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @cx2072x_jack_status_check.__UNIQUE_ID_ddebug302, !290, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!294 = !{ptr @.str.131, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/cx2072x.c", i32 1555, i32 11}
!296 = !{ptr @.str.132, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/cx2072x.c", i32 1575, i32 11}
!298 = !{ptr @.str.133, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/cx2072x.c", i32 1579, i32 19}
!300 = !{ptr @.str.134, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/cx2072x.c", i32 1588, i32 11}
!302 = !{ptr @.str.135, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/cx2072x.c", i32 1591, i32 19}
!304 = !{ptr @soc_codec_cx2072x_dai, !305, !"soc_codec_cx2072x_dai", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/cx2072x.c", i32 1553, i32 34}
!306 = !{ptr @cx2072x_dai_ops, !307, !"cx2072x_dai_ops", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/cx2072x.c", i32 1535, i32 37}
!308 = !{ptr @.str.136, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/cx2072x.c", i32 996, i32 3}
!310 = !{ptr @.str.137, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @cx2072x_set_dai_sysclk._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @cx2072x_set_dai_sysclk._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.138, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/cx2072x.c", i32 1010, i32 2}
!315 = !{ptr @.str.139, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @cx2072x_set_dai_fmt.__UNIQUE_ID_ddebug301, !314, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!317 = !{ptr @.str.140, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/cx2072x.c", i32 1018, i32 3}
!319 = !{ptr @cx2072x_set_dai_fmt._entry, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @cx2072x_set_dai_fmt._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.142, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/cx2072x.c", i32 1030, i32 3}
!323 = !{ptr @cx2072x_set_dai_fmt._entry.141, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @cx2072x_set_dai_fmt._entry_ptr.143, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/cx2072x.c", i32 1043, i32 3}
!327 = !{ptr @cx2072x_set_dai_fmt._entry.144, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @cx2072x_set_dai_fmt._entry_ptr.146, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/cx2072x.c", i32 931, i32 3}
!331 = !{ptr @.str.148, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @cx2072x_hw_params._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @cx2072x_hw_params._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.150, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/cx2072x.c", i32 948, i32 3}
!336 = !{ptr @cx2072x_hw_params._entry.149, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @cx2072x_hw_params._entry_ptr.151, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.152, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/cx2072x.c", i32 952, i32 2}
!340 = !{ptr @cx2072x_hw_params.__UNIQUE_ID_ddebug299, !339, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/cx2072x.c", i32 961, i32 3}
!343 = !{ptr @cx2072x_hw_params.__UNIQUE_ID_ddebug300, !342, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!344 = !{ptr @.str.154, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/cx2072x.c", i32 616, i32 3}
!346 = !{ptr @cx2072x_config_pll._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @cx2072x_config_pll._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @mclk_pre_div, !349, !"mclk_pre_div", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/cx2072x.c", i32 80, i32 3}
!350 = !{ptr @.str.155, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/cx2072x.c", i32 700, i32 3}
!352 = !{ptr @.str.156, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @cx2072x_config_i2spcm._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @cx2072x_config_i2spcm._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.158, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/cx2072x.c", i32 705, i32 3}
!357 = !{ptr @cx2072x_config_i2spcm._entry.157, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @cx2072x_config_i2spcm._entry_ptr.159, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.160, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/cx2072x.c", i32 709, i32 2}
!361 = !{ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug295, !360, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!362 = !{ptr @.str.161, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/cx2072x.c", i32 718, i32 3}
!364 = !{ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug296, !363, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!365 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/cx2072x.c", i32 724, i32 3}
!367 = !{ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug297, !366, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!368 = !{ptr @cx2072x_config_i2spcm._entry.163, !369, !"_entry", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/cx2072x.c", i32 728, i32 3}
!370 = !{ptr @cx2072x_config_i2spcm._entry_ptr.164, !369, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @cx2072x_config_i2spcm._entry.165, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cx2072x.c", i32 751, i32 3}
!373 = !{ptr @cx2072x_config_i2spcm._entry_ptr.166, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @cx2072x_config_i2spcm._entry.167, !375, !"_entry", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/cx2072x.c", i32 778, i32 3}
!376 = !{ptr @cx2072x_config_i2spcm._entry_ptr.168, !375, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.170, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/cx2072x.c", i32 825, i32 3}
!379 = !{ptr @cx2072x_config_i2spcm._entry.169, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @cx2072x_config_i2spcm._entry_ptr.171, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.173, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/cx2072x.c", i32 842, i32 4}
!383 = !{ptr @cx2072x_config_i2spcm._entry.172, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @cx2072x_config_i2spcm._entry_ptr.174, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.175, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/cx2072x.c", i32 845, i32 3}
!387 = !{ptr @cx2072x_config_i2spcm.__UNIQUE_ID_ddebug298, !386, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!388 = !{ptr @cx2072x_runtime_pm, !389, !"cx2072x_runtime_pm", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/cx2072x.c", i32 1700, i32 32}
!390 = !{ptr @cx2072x_i2c_id, !391, !"cx2072x_i2c_id", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/cx2072x.c", i32 1685, i32 35}
!392 = !{i32 1, !"wchar_size", i32 2}
!393 = !{i32 1, !"min_enum_size", i32 4}
!394 = !{i32 8, !"branch-target-enforcement", i32 0}
!395 = !{i32 8, !"sign-return-address", i32 0}
!396 = !{i32 8, !"sign-return-address-all", i32 0}
!397 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!398 = !{i32 7, !"uwtable", i32 1}
!399 = !{i32 7, !"frame-pointer", i32 2}
!400 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!401 = !{!"auto-init"}
!402 = !{!"branch_weights", i32 1, i32 2000}
!403 = !{i64 2148998229, i64 2148998234, i64 2148998247, i64 2148998291, i64 2148998325, i64 2148998346}
!404 = !{i32 0, i32 33}
!405 = !{i8 0, i8 2}
!406 = !{i64 1537872, i64 1537899, i64 1537921, i64 1537949}
!407 = !{i64 1538280, i64 1538307, i64 1538340, i64 1538361, i64 1538388, i64 1538414}
