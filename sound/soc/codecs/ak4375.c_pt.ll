; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/ak4375.c_pt.bc'
source_filename = "../sound/soc/codecs/ak4375.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.reg_default = type { i32, i32 }
%struct.ak4375_drvdata = type { ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.ak4375_priv = type { ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i32, i32, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@__initcall__kmod_snd_soc_ak4375__299_606_ak4375_i2c_driver_init6 = internal global ptr @ak4375_i2c_driver_init, section ".initcall6.init", align 4
@ak4375_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ak4375_i2c_remove, ptr @ak4375_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak4375_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4375_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ak4375_i2c_driver_exit = internal global ptr @ak4375_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [65 x i8] c"snd_soc_ak4375.author=Vincent Knecht <vincent.knecht@mailoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [50 x i8] c"snd_soc_ak4375.description=ASoC AK4375 DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [52 x i8] c"snd_soc_ak4375.file=sound/soc/codecs/snd-soc-ak4375\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [27 x i8] c"snd_soc_ak4375.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4375\00", [25 x i8] zeroinitializer }, align 32
@ak4375_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4375\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4375_drvdata }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ak4375_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4375_runtime_suspend, ptr @ak4375_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ak4375_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4375_reg_defaults, i32 23, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ak4375:510:(&ak4375_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak4375_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/ak4375.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr = internal global ptr @ak4375_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdn\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get pdn\0A\00", [45 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 542, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to read DEVICEID!\0A\00", [38 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr.11 = internal global ptr @ak4375_i2c_probe._entry.9, section ".printk_index", align 4
@ak4375_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 552, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"found untested AK4331\0A\00", [41 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr.14 = internal global ptr @ak4375_i2c_probe._entry.12, section ".printk_index", align 4
@ak4375_i2c_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_ak4375\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"found AK4375\0A\00", [18 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found AK4375A\0A\00", [17 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found unsupported AK4376/A!\0A\00", [35 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr.20 = internal global ptr @ak4375_i2c_probe._entry.18, section ".printk_index", align 4
@ak4375_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 564, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found unsupported AK4377!\0A\00", [37 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr.23 = internal global ptr @ak4375_i2c_probe._entry.21, section ".printk_index", align 4
@ak4375_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 567, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unrecognized DEVICEID!\0A\00", [40 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr.26 = internal global ptr @ak4375_i2c_probe._entry.24, section ".printk_index", align 4
@ak4375_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ak4375_i2c_probe._entry_ptr.29 = internal global ptr @ak4375_i2c_probe._entry.27, section ".printk_index", align 4
@ak4375_reg_defaults = internal constant { [23 x %struct.reg_default], [40 x i8] } { [23 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 25 }, %struct.reg_default { i32 12, i32 25 }, %struct.reg_default { i32 13, i32 117 }, %struct.reg_default { i32 14, i32 1 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 36, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tvdd\00", [27 x i8] zeroinitializer }, align 32
@ak4375_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 429, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ak4375_power_on\00", [16 x i8] zeroinitializer }, align 32
@ak4375_power_on._entry_ptr = internal global ptr @ak4375_power_on._entry, section ".printk_index", align 4
@ak4375_drvdata = internal constant { %struct.ak4375_drvdata, [24 x i8] } { %struct.ak4375_drvdata { ptr @ak4375_dai, ptr @soc_codec_dev_ak4375 }, [24 x i8] zeroinitializer }, align 32
@ak4375_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.34, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ak4375_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.35, i64 1092, i32 7934, i32 8000, i32 192000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@soc_codec_dev_ak4375 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @ak4375_snd_controls, i32 8, ptr @ak4375_dapm_widgets, i32 6, ptr @ak4375_intercon, i32 7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ak4375-hifi\00", [20 x i8] zeroinitializer }, align 32
@ak4375_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr @ak4375_dai_set_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4375_mute, ptr null, ptr null, ptr @ak4375_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@ak4375_dai_set_pll.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ak4375_dai_set_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"rate=%d mclk=%d f_in=%d f_out=%d PLD=%d PLM=%d MDIV=%d DIV=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@ak4375_mute.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ak4375_mute\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mute=%d val=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@ak4375_snd_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hpg_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4375_ovolcn_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4375_mdacl_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4375_mdacr_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4375_cpmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4375_digfil_enum to i32) }], [96 x i8] zeroinitializer }, align 32
@ak4375_intercon = internal constant { [7 x %struct.snd_soc_dapm_route], [84 x i8] } { [7 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.72, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.74, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.68, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.70, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }], [84 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Digital Output Volume\00", [42 x i8] zeroinitializer }, align 32
@dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1250, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 11, i32 12, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HP-Amp Analog Volume\00", [43 x i8] zeroinitializer }, align 32
@hpg_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4200, i32 20], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DAC Signal Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 3, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Volume Control\00", [41 x i8] zeroinitializer }, align 32
@ak4375_ovolcn_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 7, i8 7, i32 2, i32 1, ptr @ak4375_ovolcn_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DACL Signal Level\00", [46 x i8] zeroinitializer }, align 32
@ak4375_mdacl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 2, i8 2, i32 2, i32 1, ptr @ak4375_mdac_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DACR Signal Level\00", [46 x i8] zeroinitializer }, align 32
@ak4375_mdacr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 6, i8 6, i32 2, i32 1, ptr @ak4375_mdac_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Charge Pump Mode\00", [47 x i8] zeroinitializer }, align 32
@ak4375_cpmode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 2, i8 2, i32 3, i32 3, ptr @ak4375_cpmode_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC Digital Filter Mode\00", [40 x i8] zeroinitializer }, align 32
@ak4375_digfil_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 6, i8 6, i32 4, i32 3, ptr @ak4375_digfil_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ak4375_ovolcn_select_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.50, ptr @.str.51], [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Dependent\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Independent\00", [20 x i8] zeroinitializer }, align 32
@ak4375_mdac_select_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.53], [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x1\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x1/2\00", [27 x i8] zeroinitializer }, align 32
@ak4375_cpmode_select_texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Automatic Switching\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"+-VDD Operation\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"+-1/2VDD Operation\00", [45 x i8] zeroinitializer }, align 32
@ak4375_digfil_select_texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sharp Roll-Off Filter\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Slow Roll-Off Filter\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Short delay Sharp Roll-Off Filter\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Short delay Slow Roll-Off Filter\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDTI\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HPR Mixer\00", [22 x i8] zeroinitializer }, align 32
@ak4375_hpr_mixer_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HPL Mixer\00", [22 x i8] zeroinitializer }, align 32
@ak4375_hpl_mixer_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }], [32 x i8] zeroinitializer }, align 32
@ak4375_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @ak4375_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.62, ptr @.str.35, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @ak4375_hpr_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @ak4375_hpl_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LDACR Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RDACR Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LDACL Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RDACL Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"ak4375_i2c_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 597, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 599, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"ak4375_of_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 591, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"ak4375_pm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 493, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"ak4375_regmap\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 479, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 510, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 524, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 528, i32 59 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 531, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 542, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 552, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 555, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 558, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 561, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 564, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 567, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 577, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"ak4375_reg_defaults\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 105, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 87, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 87, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 429, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"ak4375_drvdata\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 488, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"ak4375_dai\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 401, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant [21 x i8] c"soc_codec_dev_ak4375\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 466, i32 46 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 402, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"ak4375_dai_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 395, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 404, i32 18 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 361, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 373, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"ak4375_snd_controls\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 166, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"ak4375_intercon\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 237, i32 40 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 167, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 120, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 169, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"hpg_tlv\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 126, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 172, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 174, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"ak4375_ovolcn_enum\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 150, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 175, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [18 x i8] c"ak4375_mdacl_enum\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 153, i32 30 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 176, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"ak4375_mdacr_enum\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 156, i32 30 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 177, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"ak4375_cpmode_enum\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 159, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 178, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"ak4375_digfil_enum\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 162, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant [27 x i8] c"ak4375_ovolcn_select_texts\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 128, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 128, i32 60 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 128, i32 73 }
@___asan_gen_.279 = private unnamed_addr constant [25 x i8] c"ak4375_mdac_select_texts\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 129, i32 27 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 129, i32 58 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 129, i32 64 }
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"ak4375_cpmode_select_texts\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 130, i32 27 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 131, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 132, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 133, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"ak4375_digfil_select_texts\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 143, i32 27 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 144, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 145, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 146, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 147, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 222, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 226, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 228, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 229, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 231, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"ak4375_hpr_mixer_controls\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 186, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 233, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [26 x i8] c"ak4375_hpl_mixer_controls\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 181, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"ak4375_dapm_widgets\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 221, i32 41 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 187, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 188, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 182, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [29 x i8] c"../sound/soc/codecs/ak4375.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 183, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_ak4375_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_ak4375__299_606_ak4375_i2c_driver_init6, ptr @ak4375_i2c_driver_exit, ptr @ak4375_i2c_probe._entry, ptr @ak4375_i2c_probe._entry.12, ptr @ak4375_i2c_probe._entry.18, ptr @ak4375_i2c_probe._entry.21, ptr @ak4375_i2c_probe._entry.24, ptr @ak4375_i2c_probe._entry.27, ptr @ak4375_i2c_probe._entry.9, ptr @ak4375_i2c_probe._entry_ptr, ptr @ak4375_i2c_probe._entry_ptr.11, ptr @ak4375_i2c_probe._entry_ptr.14, ptr @ak4375_i2c_probe._entry_ptr.20, ptr @ak4375_i2c_probe._entry_ptr.23, ptr @ak4375_i2c_probe._entry_ptr.26, ptr @ak4375_i2c_probe._entry_ptr.29, ptr @ak4375_power_on._entry, ptr @ak4375_power_on._entry_ptr, ptr @ak4375_i2c_driver, ptr @.str, ptr @ak4375_of_match, ptr @ak4375_pm, ptr @ak4375_i2c_probe._key, ptr @ak4375_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @ak4375_reg_defaults, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ak4375_drvdata, ptr @ak4375_dai, ptr @soc_codec_dev_ak4375, ptr @.str.34, ptr @ak4375_dai_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ak4375_snd_controls, ptr @ak4375_intercon, ptr @.str.40, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.41, ptr @hpg_tlv, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @ak4375_ovolcn_enum, ptr @.str.46, ptr @ak4375_mdacl_enum, ptr @.str.47, ptr @ak4375_mdacr_enum, ptr @.str.48, ptr @ak4375_cpmode_enum, ptr @.str.49, ptr @ak4375_digfil_enum, ptr @ak4375_ovolcn_select_texts, ptr @.str.50, ptr @.str.51, ptr @ak4375_mdac_select_texts, ptr @.str.52, ptr @.str.53, ptr @ak4375_cpmode_select_texts, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @ak4375_digfil_select_texts, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @ak4375_hpr_mixer_controls, ptr @.str.66, ptr @ak4375_hpl_mixer_controls, ptr @ak4375_dapm_widgets, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_reg_defaults to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_ak4375 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_snd_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_intercon to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpg_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_ovolcn_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_mdacl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_mdacr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_cpmode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_digfil_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_ovolcn_select_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_mdac_select_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_cpmode_select_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_digfil_select_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_hpr_mixer_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_hpl_mixer_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4375_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak4375_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ak4375_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ak4375_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_i2c_remove(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %deviceid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deviceid) #5
  %0 = ptrtoint ptr %deviceid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %deviceid, align 4, !annotation !198
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ak4375_regmap, ptr noundef nonnull @ak4375_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.ak4375_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %arrayidx12 = getelementptr %struct.ak4375_priv, ptr %call.i, i32 0, i32 3, i32 0
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.30, ptr %arrayidx12, align 4
  %arrayidx12.1 = getelementptr %struct.ak4375_priv, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.31, ptr %arrayidx12.1, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call15 = tail call i32 @devm_regulator_bulk_get(ptr noundef %8, i32 noundef 2, ptr noundef %arrayidx12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  br i1 %cmp16, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef %call15) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %call21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %pdn_gpiod = getelementptr inbounds %struct.ak4375_priv, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pdn_gpiod to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %pdn_gpiod, align 4
  %cmp.i158 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = ptrtoint ptr %call21 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call.i159 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp.i160 = icmp slt i32 %call.i159, 0
  br i1 %cmp.i160, label %ak4375_power_on.exit.thread, label %if.end33

ak4375_power_on.exit.thread:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %call.i159) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #5
  %17 = ptrtoint ptr %pdn_gpiod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdn_gpiod, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %18, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %20, i1 noundef zeroext true) #5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_read(ptr noundef %22, i32 noundef 21, ptr noundef nonnull %deviceid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_bypass(ptr noundef %26, i1 noundef zeroext false) #5
  %27 = ptrtoint ptr %deviceid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %deviceid, align 4
  %and = lshr i32 %28, 5
  %shr = and i32 %and, 7
  store i32 %shr, ptr %deviceid, align 4
  %29 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end91 [
    i32 7, label %do.end47
    i32 0, label %do.body50
    i32 1, label %do.body62
    i32 2, label %do.end82
    i32 3, label %do.end87
  ]

do.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13) #8
  br label %cleanup

do.body50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ak4375_i2c_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ak4375_i2c_probe, %if.then56)) #5
          to label %sw.epilog [label %if.then56], !srcloc !199

if.then56:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ak4375_i2c_probe.__UNIQUE_ID_ddebug297, ptr noundef %33, ptr noundef nonnull @.str.16) #5
  br label %sw.epilog

do.body62:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ak4375_i2c_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ak4375_i2c_probe, %if.then74)) #5
          to label %sw.epilog [label %if.then74], !srcloc !199

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ak4375_i2c_probe.__UNIQUE_ID_ddebug298, ptr noundef %35, ptr noundef nonnull @.str.17) #5
  br label %sw.epilog

do.end82:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.19) #8
  br label %cleanup

do.end87:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22) #8
  br label %cleanup

do.end91:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.25) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then74, %do.body62, %if.then56, %do.body50
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call.i162 = call i32 @__pm_runtime_set_status(ptr noundef %43, i32 noundef 0) #5
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %45) #5
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %comp_drv = getelementptr inbounds %struct.ak4375_drvdata, ptr %call11, i32 0, i32 1
  %48 = ptrtoint ptr %comp_drv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %comp_drv, align 4
  %50 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call11, align 4
  %call97 = call i32 @devm_snd_soc_register_component(ptr noundef %47, ptr noundef %49, ptr noundef %51, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end102:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.28, i32 noundef %call97) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %sw.epilog.cleanup_crit_edge, %do.end91, %do.end87, %do.end82, %do.end47, %do.end41, %ak4375_power_on.exit.thread, %if.then24, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call15, %do.end ], [ %call28, %if.then24 ], [ %call36, %do.end41 ], [ -22, %do.end91 ], [ -22, %do.end87 ], [ -22, %do.end82 ], [ %call97, %do.end102 ], [ -22, %do.end47 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call.i159, %ak4375_power_on.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deviceid) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_dai_set_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 5) #5
  %6 = trunc i32 %call2 to i8
  %conv4 = and i8 %6, -32
  %conv7 = and i8 %6, -97
  %rate = getelementptr inbounds %struct.ak4375_priv, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 8000, label %entry.if.then_crit_edge
    i32 11025, label %sw.bb10
    i32 16000, label %sw.bb14
    i32 22050, label %sw.bb18
    i32 32000, label %entry.if.then60_crit_edge
    i32 44100, label %sw.bb26
    i32 48000, label %sw.bb30
    i32 88200, label %sw.bb34
    i32 96000, label %sw.bb38
    i32 176400, label %entry.if.else68_crit_edge
    i32 192000, label %sw.bb46
  ]

entry.if.else68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else68

entry.if.then60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = or i8 %conv4, 1
  br label %if.then

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = or i8 %conv4, 4
  br label %if.then

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = or i8 %conv4, 5
  br label %if.then

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else68

if.then:                                          ; preds = %sw.bb18, %sw.bb14, %sw.bb10, %entry.if.then_crit_edge
  %fs.0 = phi i8 [ %12, %sw.bb18 ], [ %11, %sw.bb14 ], [ %10, %sw.bb10 ], [ %conv4, %entry.if.then_crit_edge ]
  %13 = or i8 %conv7, 32
  %mul = shl nuw nsw i32 %8, 9
  %div56 = udiv i32 %freq_out, %mul
  %sub = add nsw i32 %div56, -1
  br label %if.end74

if.then60:                                        ; preds = %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %entry.if.then60_crit_edge
  %.sink = phi i8 [ 14, %sw.bb38 ], [ 13, %sw.bb34 ], [ 10, %sw.bb30 ], [ 9, %sw.bb26 ], [ 8, %entry.if.then60_crit_edge ]
  %14 = or i8 %conv4, %.sink
  %mul65 = shl nuw nsw i32 %8, 8
  %div66 = udiv i32 %freq_out, %mul65
  %sub67 = add nsw i32 %div66, -1
  br label %if.end74

if.else68:                                        ; preds = %sw.bb46, %entry.if.else68_crit_edge
  %.sink162 = phi i8 [ 18, %sw.bb46 ], [ 17, %entry.if.else68_crit_edge ]
  %15 = or i8 %conv4, %.sink162
  %conv71 = or i8 %6, 96
  %mul73 = shl nuw nsw i32 %8, 7
  br label %if.end74

if.end74:                                         ; preds = %if.else68, %if.then60, %if.then
  %fs.0156 = phi i8 [ %fs.0, %if.then ], [ %14, %if.then60 ], [ %15, %if.else68 ]
  %mclk.0 = phi i32 [ %mul, %if.then ], [ %mul65, %if.then60 ], [ %mul73, %if.else68 ]
  %mdiv.0 = phi i32 [ %sub, %if.then ], [ %sub67, %if.then60 ], [ 4, %if.else68 ]
  %div.0 = phi i32 [ 0, %if.then ], [ 0, %if.then60 ], [ 1, %if.else68 ]
  %cm.0 = phi i8 [ %13, %if.then ], [ %conv7, %if.then60 ], [ %conv71, %if.else68 ]
  %conv75 = zext i8 %fs.0156 to i32
  %call76 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 31, i32 noundef %conv75) #5
  %conv77 = zext i8 %cm.0 to i32
  %call78 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 96, i32 noundef %conv77) #5
  %pld = getelementptr inbounds %struct.ak4375_priv, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %pld to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pld, align 4
  %and79 = lshr i32 %17, 8
  %shr = and i32 %and79, 255
  %call80 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 15, i32 noundef %shr) #5
  %18 = ptrtoint ptr %pld to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pld, align 4
  %and82 = and i32 %19, 255
  %call83 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 16, i32 noundef %and82) #5
  %div84 = udiv i32 %freq_out, %freq_in
  %sub85 = add i32 %div84, -1
  %and86 = lshr i32 %sub85, 8
  %shr87 = and i32 %and86, 255
  %call88 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 17, i32 noundef %shr87) #5
  %and89 = and i32 %sub85, 255
  %call90 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 18, i32 noundef %and89) #5
  %call91 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 19, i32 noundef 16, i32 noundef %div.0) #5
  %call92 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 19, i32 noundef 1, i32 noundef 1) #5
  %call93 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 20, i32 noundef %mdiv.0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ak4375_dai_set_pll.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ak4375_dai_set_pll, %if.then97)) #5
          to label %cleanup [label %if.then97], !srcloc !199

if.then97:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %22 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate, align 4
  %24 = ptrtoint ptr %pld to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pld, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ak4375_dai_set_pll.__UNIQUE_ID_ddebug295, ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %23, i32 noundef %mclk.0, i32 noundef %freq_in, i32 noundef %freq_out, i32 noundef %25, i32 noundef %sub85, i32 noundef %mdiv.0, i32 noundef %div.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %if.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %if.end74 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 7) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ak4375_mute.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ak4375_mute, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %conv6 = and i32 %call2, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ak4375_mute.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.39, i32 noundef %mute, i32 noundef %conv6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool7.not = icmp eq i32 %mute, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = trunc i32 %call2 to i8
  %conv10 = and i8 %8, 51
  %mute_save = getelementptr inbounds %struct.ak4375_priv, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %mute_save to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %mute_save, align 4
  %conv13 = and i8 %8, -52
  br label %if.end18

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %mute_save14 = getelementptr inbounds %struct.ak4375_priv, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %mute_save14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mute_save14, align 4
  %12 = trunc i32 %call2 to i8
  %conv17 = or i8 %11, %12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8
  %val.0 = phi i8 [ %conv13, %if.then8 ], [ %conv17, %if.else ]
  %conv19 = zext i8 %val.0 to i32
  %call20 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv19) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %rate = getelementptr inbounds %struct.ak4375_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %7)
  %cmp = icmp ugt i32 %7, 96000
  %spec.select = zext i1 %cmp to i32
  %9 = getelementptr inbounds %struct.ak4375_priv, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 4
  %rem = urem i32 %7, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8 = icmp eq i32 %rem, 0
  %. = select i1 %cmp8, i32 122880000, i32 112896000
  %mul = shl i32 %7, 5
  %11 = zext i1 %cmp to i32
  %div20 = lshr i32 %mul, %11
  %call12 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 0, i32 noundef 0, i32 noundef %div20, i32 noundef %.) #5
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @ak4375_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
    i32 8, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 6500, i32 noundef 7000, i32 noundef 2) #5
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 48, i32 noundef 48) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2, i32 noundef 2) #5
  tail call void @usleep_range_state(i32 noundef 4500, i32 noundef 5000, i32 noundef 2) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 48, i32 noundef 0) #5
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ak4375_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #5
  %pdn_gpiod.i = getelementptr inbounds %struct.ak4375_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdn_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdn_gpiod.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %supplies.i = getelementptr inbounds %struct.ak4375_priv, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4375_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies.i = getelementptr inbounds %struct.ak4375_priv, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ak4375_power_on.exit.thread, label %if.end

ak4375_power_on.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #5
  %pdn_gpiod.i = getelementptr inbounds %struct.ak4375_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdn_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdn_gpiod.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %regmap = getelementptr inbounds %struct.ak4375_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ak4375_power_on.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call.i, %ak4375_power_on.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__initcall__kmod_snd_soc_ak4375__299_606_ak4375_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_ak4375__299_606_ak4375_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/ak4375.c", i32 606, i32 1}
!2 = !{ptr @__exitcall_ak4375_i2c_driver_exit, !1, !"__exitcall_ak4375_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/ak4375.c", i32 608, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/ak4375.c", i32 609, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/ak4375.c", i32 610, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/ak4375.c", i32 599, i32 11}
!12 = !{ptr @ak4375_i2c_driver, !13, !"ak4375_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/ak4375.c", i32 597, i32 26}
!14 = !{ptr @ak4375_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/ak4375.c", i32 510, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/ak4375.c", i32 524, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ak4375_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ak4375_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/ak4375.c", i32 528, i32 59}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/ak4375.c", i32 531, i32 10}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/ak4375.c", i32 542, i32 3}
!31 = !{ptr @ak4375_i2c_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ak4375_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/ak4375.c", i32 552, i32 3}
!35 = !{ptr @ak4375_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ak4375_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/ak4375.c", i32 555, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ak4375_i2c_probe.__UNIQUE_ID_ddebug297, !38, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/ak4375.c", i32 558, i32 3}
!43 = !{ptr @ak4375_i2c_probe.__UNIQUE_ID_ddebug298, !42, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/ak4375.c", i32 561, i32 3}
!46 = !{ptr @ak4375_i2c_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ak4375_i2c_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/ak4375.c", i32 564, i32 3}
!50 = !{ptr @ak4375_i2c_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ak4375_i2c_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/ak4375.c", i32 567, i32 3}
!54 = !{ptr @ak4375_i2c_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ak4375_i2c_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/ak4375.c", i32 577, i32 3}
!58 = !{ptr @ak4375_i2c_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ak4375_i2c_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ak4375_regmap, !61, !"ak4375_regmap", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/ak4375.c", i32 479, i32 35}
!62 = !{ptr @ak4375_reg_defaults, !63, !"ak4375_reg_defaults", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/ak4375.c", i32 105, i32 33}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/ak4375.c", i32 87, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/ak4375.c", i32 87, i32 10}
!68 = distinct !{null, !69, !"supply_names", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/ak4375.c", i32 86, i32 27}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/ak4375.c", i32 429, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ak4375_power_on._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ak4375_power_on._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @ak4375_of_match, !76, !"ak4375_of_match", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/ak4375.c", i32 591, i32 34}
!77 = !{ptr @ak4375_drvdata, !78, !"ak4375_drvdata", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/ak4375.c", i32 488, i32 36}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/ak4375.c", i32 402, i32 10}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/ak4375.c", i32 404, i32 18}
!83 = !{ptr @ak4375_dai, !84, !"ak4375_dai", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/ak4375.c", i32 401, i32 34}
!85 = !{ptr @ak4375_dai_ops, !86, !"ak4375_dai_ops", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/ak4375.c", i32 395, i32 37}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/ak4375.c", i32 361, i32 2}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ak4375_dai_set_pll.__UNIQUE_ID_ddebug295, !88, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/ak4375.c", i32 373, i32 2}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ak4375_mute.__UNIQUE_ID_ddebug296, !92, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!95 = !{ptr @soc_codec_dev_ak4375, !96, !"soc_codec_dev_ak4375", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/ak4375.c", i32 466, i32 46}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/ak4375.c", i32 167, i32 2}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/ak4375.c", i32 169, i32 2}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/ak4375.c", i32 172, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/ak4375.c", i32 174, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/ak4375.c", i32 175, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/ak4375.c", i32 176, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/ak4375.c", i32 177, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/ak4375.c", i32 178, i32 2}
!113 = !{ptr @ak4375_snd_controls, !114, !"ak4375_snd_controls", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/ak4375.c", i32 166, i32 38}
!115 = !{ptr @dac_tlv, !116, !"dac_tlv", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/ak4375.c", i32 120, i32 8}
!117 = !{ptr @hpg_tlv, !118, !"hpg_tlv", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/ak4375.c", i32 126, i32 8}
!119 = !{ptr @ak4375_ovolcn_enum, !120, !"ak4375_ovolcn_enum", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/ak4375.c", i32 150, i32 30}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/ak4375.c", i32 128, i32 60}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/ak4375.c", i32 128, i32 73}
!125 = !{ptr @ak4375_ovolcn_select_texts, !126, !"ak4375_ovolcn_select_texts", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/ak4375.c", i32 128, i32 27}
!127 = !{ptr @ak4375_mdacl_enum, !128, !"ak4375_mdacl_enum", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/ak4375.c", i32 153, i32 30}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/ak4375.c", i32 129, i32 58}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/ak4375.c", i32 129, i32 64}
!133 = !{ptr @ak4375_mdac_select_texts, !134, !"ak4375_mdac_select_texts", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/ak4375.c", i32 129, i32 27}
!135 = !{ptr @ak4375_mdacr_enum, !136, !"ak4375_mdacr_enum", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/ak4375.c", i32 156, i32 30}
!137 = !{ptr @ak4375_cpmode_enum, !138, !"ak4375_cpmode_enum", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/ak4375.c", i32 159, i32 30}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/ak4375.c", i32 131, i32 2}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/ak4375.c", i32 132, i32 2}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/ak4375.c", i32 133, i32 2}
!145 = !{ptr @ak4375_cpmode_select_texts, !146, !"ak4375_cpmode_select_texts", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/ak4375.c", i32 130, i32 27}
!147 = !{ptr @ak4375_digfil_enum, !148, !"ak4375_digfil_enum", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/ak4375.c", i32 162, i32 30}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/ak4375.c", i32 144, i32 2}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/ak4375.c", i32 145, i32 2}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/ak4375.c", i32 146, i32 2}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/ak4375.c", i32 147, i32 2}
!157 = !{ptr @ak4375_digfil_select_texts, !158, !"ak4375_digfil_select_texts", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/ak4375.c", i32 143, i32 27}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/ak4375.c", i32 222, i32 2}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/ak4375.c", i32 226, i32 2}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/ak4375.c", i32 228, i32 2}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/ak4375.c", i32 229, i32 2}
!167 = !{ptr @.str.65, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/ak4375.c", i32 231, i32 2}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/ak4375.c", i32 233, i32 2}
!171 = !{ptr @ak4375_dapm_widgets, !172, !"ak4375_dapm_widgets", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/ak4375.c", i32 221, i32 41}
!173 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/ak4375.c", i32 187, i32 2}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/ak4375.c", i32 188, i32 2}
!177 = !{ptr @ak4375_hpr_mixer_controls, !178, !"ak4375_hpr_mixer_controls", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/ak4375.c", i32 186, i32 38}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/ak4375.c", i32 182, i32 2}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/ak4375.c", i32 183, i32 2}
!183 = !{ptr @ak4375_hpl_mixer_controls, !184, !"ak4375_hpl_mixer_controls", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/ak4375.c", i32 181, i32 38}
!185 = !{ptr @ak4375_intercon, !186, !"ak4375_intercon", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/ak4375.c", i32 237, i32 40}
!187 = !{ptr @ak4375_pm, !188, !"ak4375_pm", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/ak4375.c", i32 493, i32 32}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"auto-init"}
!199 = !{i64 2148773135, i64 2148773140, i64 2148773153, i64 2148773197, i64 2148773231, i64 2148773252}
