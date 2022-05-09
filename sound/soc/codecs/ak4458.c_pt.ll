; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/ak4458.c_pt.bc'
source_filename = "../sound/soc/codecs/ak4458.c"
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
%struct.reg_default = type { i32, i32 }
%struct.ak4458_drvdata = type { ptr, ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.ak4458_priv = type { [2 x %struct.regulator_bulk_data], ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }

@__initcall__kmod_snd_soc_ak4458__297_853_ak4458_i2c_driver_init6 = internal global ptr @ak4458_i2c_driver_init, section ".initcall6.init", align 4
@ak4458_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ak4458_i2c_remove, ptr @ak4458_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak4458_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4458_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ak4458_i2c_driver_exit = internal global ptr @ak4458_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [74 x i8] c"snd_soc_ak4458.author=Junichi Wakasugi <wakasugi.jb@om.asahi-kasei.co.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [58 x i8] c"snd_soc_ak4458.author=Mihai Serban <mihai.serban@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [50 x i8] c"snd_soc_ak4458.description=ASoC AK4458 DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [52 x i8] c"snd_soc_ak4458.file=sound/soc/codecs/snd-soc-ak4458\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [30 x i8] c"snd_soc_ak4458.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4458\00", [25 x i8] zeroinitializer }, align 32
@ak4458_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4458\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4458_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4497\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4497_drvdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ak4458_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4458_runtime_suspend, ptr @ak4458_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ak4458_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ak4458_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4458_reg_defaults, i32 21, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ak4458:783:(&ak4458_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsd-path\00", [23 x i8] zeroinitializer }, align 32
@ak4458_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 811, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak4458_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/ak4458.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ak4458_i2c_probe._entry_ptr = internal global ptr @ak4458_i2c_probe._entry, section ".printk_index", align 4
@ak4458_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 819, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ak4458_i2c_probe._entry_ptr.12 = internal global ptr @ak4458_i2c_probe._entry.10, section ".printk_index", align 4
@ak4458_reg_defaults = internal constant { [21 x %struct.reg_default], [56 x i8] } { [21 x %struct.reg_default] [%struct.reg_default { i32 0, i32 12 }, %struct.reg_default { i32 1, i32 34 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 255 }, %struct.reg_default { i32 4, i32 255 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 3 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 13 }, %struct.reg_default { i32 11, i32 12 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 80 }, %struct.reg_default { i32 15, i32 255 }, %struct.reg_default { i32 16, i32 255 }, %struct.reg_default { i32 17, i32 255 }, %struct.reg_default { i32 18, i32 255 }, %struct.reg_default { i32 19, i32 255 }, %struct.reg_default { i32 20, i32 255 }], [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@ak4458_drvdata = internal constant { %struct.ak4458_drvdata, [20 x i8] } { %struct.ak4458_drvdata { ptr @ak4458_dai, ptr @soc_codec_dev_ak4458, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ak4497_drvdata = internal constant { %struct.ak4458_drvdata, [20 x i8] } { %struct.ak4458_drvdata { ptr @ak4497_dai, ptr @soc_codec_dev_ak4497, i32 1 }, [20 x i8] zeroinitializer }, align 32
@ak4458_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.15, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ak4458_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.16, i64 1970324836975684, i32 -2147483648, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@soc_codec_dev_ak4458 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @ak4458_snd_controls, i32 14, ptr @ak4458_dapm_widgets, i32 9, ptr @ak4458_intercon, i32 8, ptr @ak4458_probe, ptr @ak4458_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ak4458-aif\00", [21 x i8] zeroinitializer }, align 32
@ak4458_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @ak4458_set_dai_fmt, ptr null, ptr @ak4458_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4458_set_dai_mute, ptr @ak4458_startup, ptr null, ptr @ak4458_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@ak4458_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 474, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Clock provider mode unsupported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ak4458_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@ak4458_set_dai_fmt._entry_ptr = internal global ptr @ak4458_set_dai_fmt._entry, section ".printk_index", align 4
@ak4458_set_dai_fmt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.7, i32 488, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Audio format 0x%02X unsupported\0A\00", [63 x i8] zeroinitializer }, align 32
@ak4458_set_dai_fmt._entry_ptr.21 = internal global ptr @ak4458_set_dai_fmt._entry.19, section ".printk_index", align 4
@att_speed = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4080, i32 2040, i32 510, i32 255], [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ak4458_rate_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @ak4458_rates, i32 17, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ak4458_rates = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 352800, i32 384000, i32 705600, i32 768000, i32 1411200, i32 2822400], [60 x i8] zeroinitializer }, align 32
@ak4458_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 385, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSD512 not supported.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak4458_hw_params\00", [47 x i8] zeroinitializer }, align 32
@ak4458_hw_params._entry_ptr = internal global ptr @ak4458_hw_params._entry, section ".printk_index", align 4
@ak4458_hw_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.7, i32 390, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported dsd bclk.\0A\00", [41 x i8] zeroinitializer }, align 32
@ak4458_hw_params._entry_ptr.26 = internal global ptr @ak4458_hw_params._entry.24, section ".printk_index", align 4
@ak4458_snd_controls = internal constant { [14 x %struct.snd_kcontrol_new], [160 x i8] } { [14 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dac1_dem_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dac2_dem_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dac3_dem_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dac4_dem_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @get_digfil, ptr @set_digfil, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_digfil_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dzfb_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_sm_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_fir_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_ats_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dif_enum to i32) }], [160 x i8] zeroinitializer }, align 32
@ak4458_intercon = internal constant { [8 x %struct.snd_soc_dapm_route], [96 x i8] } { [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 3, i32 4, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 15, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC3 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 17, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC4 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 19, i32 20, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AK4458 De-emphasis Response DAC1\00", [63 x i8] zeroinitializer }, align 32
@ak4458_dac1_dem_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 1, i8 1, i32 4, i32 3, ptr @ak4458_dem_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AK4458 De-emphasis Response DAC2\00", [63 x i8] zeroinitializer }, align 32
@ak4458_dac2_dem_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 0, i8 0, i32 4, i32 3, ptr @ak4458_dem_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AK4458 De-emphasis Response DAC3\00", [63 x i8] zeroinitializer }, align 32
@ak4458_dac3_dem_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 4, i8 4, i32 4, i32 3, ptr @ak4458_dem_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AK4458 De-emphasis Response DAC4\00", [63 x i8] zeroinitializer }, align 32
@ak4458_dac4_dem_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 6, i8 6, i32 4, i32 3, ptr @ak4458_dem_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AK4458 Digital Filter Setting\00", [34 x i8] zeroinitializer }, align 32
@ak4458_digfil_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 5, i32 0, ptr @ak4458_digfil_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AK4458 Inverting Enable of DZFB\00", [32 x i8] zeroinitializer }, align 32
@ak4458_dzfb_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 2, i8 2, i32 2, i32 1, ptr @ak4458_dzfb_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AK4458 Sound Mode\00", [46 x i8] zeroinitializer }, align 32
@ak4458_sm_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 3, i32 3, ptr @ak4458_sc_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AK4458 FIR Filter Mode Setting\00", [33 x i8] zeroinitializer }, align 32
@ak4458_fir_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 0, i8 0, i32 8, i32 7, ptr @ak4458_fir_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AK4458 Attenuation transition Time Setting\00", [53 x i8] zeroinitializer }, align 32
@ak4458_ats_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 6, i8 6, i32 4, i32 3, ptr @ak4458_ats_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AK4458 BICK fs Setting\00", [41 x i8] zeroinitializer }, align 32
@ak4458_dif_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 3, i8 3, i32 2, i32 1, ptr @ak4458_dif_select_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ak4458_dem_select_texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@ak4458_digfil_select_texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sharp Roll-Off Filter\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Slow Roll-Off Filter\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Short delay Sharp Roll-Off Filter\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Short delay Slow Roll-Off Filter\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Super Slow Roll-Off Filter\00", [37 x i8] zeroinitializer }, align 32
@ak4458_dzfb_select_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.53, ptr @.str.54], [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@ak4458_sc_select_texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57], [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sound Mode 0\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sound Mode 1\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sound Mode 2\00", [19 x i8] zeroinitializer }, align 32
@ak4458_fir_select_texts = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 0\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 1\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 2\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 3\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 4\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 5\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 6\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 7\00", [25 x i8] zeroinitializer }, align 32
@ak4458_ats_select_texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4080/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2040/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"510/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"255/fs\00", [25 x i8] zeroinitializer }, align 32
@ak4458_dif_select_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"32fs,48fs\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"64fs\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4458 DAC1\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4458 SDTI\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AK4458 AOUTA\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4458 DAC2\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AK4458 AOUTB\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4458 DAC3\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AK4458 AOUTC\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4458 DAC4\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AK4458 AOUTD\00", [19 x i8] zeroinitializer }, align 32
@ak4458_dapm_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.73, ptr @.str.16, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@ak4497_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.82, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ak4458_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.16, i64 1970324836975684, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@soc_codec_dev_ak4497 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @ak4497_snd_controls, i32 6, ptr @ak4497_dapm_widgets, i32 3, ptr @ak4497_intercon, i32 2, ptr @ak4458_probe, ptr @ak4458_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ak4497-aif\00", [21 x i8] zeroinitializer }, align 32
@ak4497_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dac1_dem_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @get_digfil, ptr @set_digfil, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_digfil_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_dzfb_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_sm_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ak4458_ats_enum to i32) }], [64 x i8] zeroinitializer }, align 32
@ak4497_intercon = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 3, i32 4, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AK4497 De-emphasis Response DAC\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AK4497 Digital Filter Setting\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AK4497 Inverting Enable of DZFB\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AK4497 Sound Mode\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AK4497 Attenuation transition Time Setting\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AK4497 DAC\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4497 SDTI\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AK4497 AOUT\00", [20 x i8] zeroinitializer }, align 32
@ak4497_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.91, ptr @.str.16, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@ak4458_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.7, i32 699, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ak4458_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@ak4458_runtime_resume._entry_ptr = internal global ptr @ak4458_runtime_resume._entry, section ".printk_index", align 4
@switch.table.ak4458_hw_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 14, i32 10, i32 12, i32 14, i32 12, i32 14, i32 12], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 2822400, i64 5644800, i64 11289600, i64 22579200]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 128, i64 256, i64 512]
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"ak4458_i2c_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 843, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 845, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"ak4458_of_match\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 836, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [10 x i8] c"ak4458_pm\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 768, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"ak4458_regmap\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 746, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 783, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 792, i32 61 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 797, i32 60 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 803, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 811, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 819, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"ak4458_reg_defaults\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 58, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 27, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 28, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"ak4458_drvdata\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 756, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"ak4497_drvdata\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 762, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"ak4458_dai\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 600, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"soc_codec_dev_ak4458\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 716, i32 46 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 601, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"ak4458_dai_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 591, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 603, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 474, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 487, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [10 x i8] c"att_speed\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 509, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"ak4458_rate_constraints\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 574, i32 48 }
@___asan_gen_.205 = private unnamed_addr constant [13 x i8] c"ak4458_rates\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 566, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 385, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 390, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"ak4458_snd_controls\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 229, i32 38 }
@___asan_gen_.226 = private unnamed_addr constant [16 x i8] c"ak4458_intercon\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 268, i32 40 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 230, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 86, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 232, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 234, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 236, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 238, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [21 x i8] c"ak4458_dac1_dem_enum\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 147, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 239, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [21 x i8] c"ak4458_dac2_dem_enum\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 151, i32 30 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 240, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"ak4458_dac3_dem_enum\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 155, i32 30 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 241, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"ak4458_dac4_dem_enum\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 159, i32 30 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 242, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [19 x i8] c"ak4458_digfil_enum\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 163, i32 30 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 244, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"ak4458_dzfb_enum\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 166, i32 30 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 245, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"ak4458_sm_enum\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 170, i32 30 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 246, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [16 x i8] c"ak4458_fir_enum\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 174, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 247, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"ak4458_ats_enum\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 178, i32 30 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 249, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"ak4458_dif_enum\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 182, i32 30 }
@___asan_gen_.308 = private unnamed_addr constant [24 x i8] c"ak4458_dem_select_texts\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 95, i32 27 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 96, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 96, i32 13 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 96, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 96, i32 29 }
@___asan_gen_.323 = private unnamed_addr constant [27 x i8] c"ak4458_digfil_select_texts\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 107, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 108, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 109, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 110, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 111, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 112, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [25 x i8] c"ak4458_dzfb_select_texts\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 120, i32 27 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 120, i32 57 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 120, i32 62 }
@___asan_gen_.350 = private unnamed_addr constant [23 x i8] c"ak4458_sc_select_texts\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 129, i32 27 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 130, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 130, i32 18 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 130, i32 34 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"ak4458_fir_select_texts\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 134, i32 27 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 135, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 135, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 135, i32 22 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 135, i32 32 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 136, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 136, i32 12 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 136, i32 22 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 136, i32 32 }
@___asan_gen_.389 = private unnamed_addr constant [24 x i8] c"ak4458_ats_select_texts\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 140, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 141, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 141, i32 13 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 141, i32 24 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 141, i32 34 }
@___asan_gen_.404 = private unnamed_addr constant [24 x i8] c"ak4458_dif_select_texts\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 145, i32 27 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 145, i32 56 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 145, i32 69 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 254, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 255, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 256, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 258, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 259, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 261, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 262, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 264, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 265, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c"ak4458_dapm_widgets\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 253, i32 41 }
@___asan_gen_.443 = private unnamed_addr constant [11 x i8] c"ak4497_dai\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 612, i32 34 }
@___asan_gen_.446 = private unnamed_addr constant [21 x i8] c"soc_codec_dev_ak4497\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 731, i32 46 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 613, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c"ak4497_snd_controls\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 283, i32 38 }
@___asan_gen_.455 = private unnamed_addr constant [16 x i8] c"ak4497_intercon\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 303, i32 40 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 284, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 286, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 287, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 289, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 290, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 291, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 297, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 298, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 299, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c"ak4497_dapm_widgets\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 296, i32 41 }
@___asan_gen_.489 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.496 = private constant [29 x i8] c"../sound/soc/codecs/ak4458.c\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 699, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant [30 x i8] c"switch.table.ak4458_hw_params\00", align 1
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_ak4458_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_ak4458__297_853_ak4458_i2c_driver_init6, ptr @ak4458_hw_params._entry, ptr @ak4458_hw_params._entry.24, ptr @ak4458_hw_params._entry_ptr, ptr @ak4458_hw_params._entry_ptr.26, ptr @ak4458_i2c_driver_exit, ptr @ak4458_i2c_probe._entry, ptr @ak4458_i2c_probe._entry.10, ptr @ak4458_i2c_probe._entry_ptr, ptr @ak4458_i2c_probe._entry_ptr.12, ptr @ak4458_runtime_resume._entry, ptr @ak4458_runtime_resume._entry_ptr, ptr @ak4458_set_dai_fmt._entry, ptr @ak4458_set_dai_fmt._entry.19, ptr @ak4458_set_dai_fmt._entry_ptr, ptr @ak4458_set_dai_fmt._entry_ptr.21, ptr @ak4458_i2c_driver, ptr @.str, ptr @ak4458_of_match, ptr @ak4458_pm, ptr @ak4458_i2c_probe._key, ptr @ak4458_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @ak4458_reg_defaults, ptr @.str.13, ptr @.str.14, ptr @ak4458_drvdata, ptr @ak4497_drvdata, ptr @ak4458_dai, ptr @soc_codec_dev_ak4458, ptr @.str.15, ptr @ak4458_dai_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @att_speed, ptr @ak4458_rate_constraints, ptr @ak4458_rates, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @ak4458_snd_controls, ptr @ak4458_intercon, ptr @.str.27, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @ak4458_dac1_dem_enum, ptr @.str.35, ptr @ak4458_dac2_dem_enum, ptr @.str.36, ptr @ak4458_dac3_dem_enum, ptr @.str.37, ptr @ak4458_dac4_dem_enum, ptr @.str.38, ptr @ak4458_digfil_enum, ptr @.str.39, ptr @ak4458_dzfb_enum, ptr @.str.40, ptr @ak4458_sm_enum, ptr @.str.41, ptr @ak4458_fir_enum, ptr @.str.42, ptr @ak4458_ats_enum, ptr @.str.43, ptr @ak4458_dif_enum, ptr @ak4458_dem_select_texts, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @ak4458_digfil_select_texts, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ak4458_dzfb_select_texts, ptr @.str.53, ptr @.str.54, ptr @ak4458_sc_select_texts, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @ak4458_fir_select_texts, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @ak4458_ats_select_texts, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @ak4458_dif_select_texts, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @ak4458_dapm_widgets, ptr @ak4497_dai, ptr @soc_codec_dev_ak4497, ptr @.str.82, ptr @ak4497_snd_controls, ptr @ak4497_intercon, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @ak4497_dapm_widgets, ptr @.str.94, ptr @.str.95, ptr @switch.table.ak4458_hw_params], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_reg_defaults to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_drvdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4497_drvdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_ak4458 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_set_dai_fmt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @att_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_rate_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_rates to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_hw_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_snd_controls to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_intercon to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dac1_dem_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dac2_dem_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dac3_dem_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dac4_dem_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_digfil_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dzfb_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_sm_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_fir_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_ats_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dif_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dem_select_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_digfil_select_texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dzfb_select_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_sc_select_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_fir_select_texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_ats_select_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dif_select_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_dapm_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4497_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_ak4497 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4497_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4497_intercon to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4497_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ak4458_hw_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak4458_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ak4458_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ak4458_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_i2c_remove(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ak4458_regmap, ptr noundef nonnull @ak4458_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.ak4458_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev9 = getelementptr inbounds %struct.ak4458_priv, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev9, align 4
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %drvdata = getelementptr inbounds %struct.ak4458_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %drvdata, align 4
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev9, align 4
  %call13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 3) #6
  %reset_gpiod = getelementptr inbounds %struct.ak4458_priv, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %reset_gpiod, align 4
  %cmp.i91 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9, align 4
  %call21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  %mute_gpiod = getelementptr inbounds %struct.ak4458_priv, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %mute_gpiod to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %mute_gpiod, align 4
  %cmp.i92 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %dsd_path = getelementptr inbounds %struct.ak4458_priv, ptr %call.i, i32 0, i32 11
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef %dsd_path, i32 noundef 1, i32 noundef 0) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.13, ptr %call.i, align 4
  %arrayidx30.1 = getelementptr [2 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.14, ptr %arrayidx30.1, align 4
  %17 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev9, align 4
  %call33 = tail call i32 @devm_regulator_bulk_get(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 4
  br i1 %cmp34.not, label %if.end37, label %do.end

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %call33) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvdata, align 4
  %comp_drv = getelementptr inbounds %struct.ak4458_drvdata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %comp_drv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %comp_drv, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %call41 = tail call i32 @devm_snd_soc_register_component(ptr noundef %20, ptr noundef %24, ptr noundef %26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %call41) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %30, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end46, %do.end, %if.then24, %if.then16, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %8, %if.then16 ], [ %12, %if.then24 ], [ %call33, %do.end ], [ %call41, %do.end46 ], [ 0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond22 = icmp eq i32 %and, 16384
  br i1 %cond22, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and2 = and i32 %fmt, 15
  %6 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2, label %do.end9 [
    i32 1, label %sw.epilog.sw.bb3_crit_edge
    i32 3, label %sw.epilog.sw.bb3_crit_edge36
    i32 2, label %sw.epilog.sw.bb3_crit_edge37
    i32 5, label %sw.epilog.sw.bb3_crit_edge38
    i32 7, label %sw.epilog.sw.bb3_crit_edge39
  ]

sw.epilog.sw.bb3_crit_edge39:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge38:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge37:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge36:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.epilog.sw.bb3_crit_edge, %sw.epilog.sw.bb3_crit_edge36, %sw.epilog.sw.bb3_crit_edge37, %sw.epilog.sw.bb3_crit_edge38, %sw.epilog.sw.bb3_crit_edge39
  %fmt5 = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %fmt5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2, ptr %fmt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and2)
  %cmp = icmp eq i32 %and2, 7
  %cond = select i1 %cmp, i32 128, i32 0
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 2, i32 noundef 128, i32 noundef %cond) #6
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %and2) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call1.i35, i32 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9, %sw.bb3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end ], [ %8, %sw.bb3.cleanup_crit_edge ], [ %9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %slots2 = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %slots2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %slots, ptr %slots2, align 4
  %slot_width3 = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %slot_width3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slot_width, ptr %slot_width3, align 4
  %mul.i = mul i32 %slot_width, %slots
  %8 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %mul.i, label %sw.default.i [
    i32 128, label %entry.ak4458_get_tdm_mode.exit_crit_edge
    i32 256, label %sw.bb1.i
    i32 512, label %sw.bb2.i
  ]

entry.ak4458_get_tdm_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_get_tdm_mode.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_get_tdm_mode.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_get_tdm_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_get_tdm_mode.exit

ak4458_get_tdm_mode.exit:                         ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.ak4458_get_tdm_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 192, %sw.bb2.i ], [ 128, %sw.bb1.i ], [ 64, %entry.ak4458_get_tdm_mode.exit_crit_edge ]
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10, i32 noundef 192, i32 noundef %retval.0.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_set_dai_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
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
  %fs = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 11) #6
  %and = lshr i32 %call2, 6
  %shr = and i32 %and, 3
  %arrayidx = getelementptr [4 x i32], ptr @att_speed, i32 0, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %div = sdiv i32 %7, 1000
  %div3 = sdiv i32 %9, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3)
  %tobool15.not72 = icmp eq i32 %div3, 0
  br i1 %tobool15.not72, label %if.then.cond.end16_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.cond.end16_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end16

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %__ms.073 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div3, %if.then.while.body_crit_edge ]
  %dec = add i32 %__ms.073, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %while.body.cond.end16_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cond.end16_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end16

cond.end16:                                       ; preds = %while.body.cond.end16_crit_edge, %if.then.cond.end16_crit_edge
  %mute_gpiod = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %mute_gpiod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mute_gpiod, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %cond.end16.if.end49_crit_edge, label %if.then18

cond.end16.if.end49_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then18:                                        ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %12, i32 noundef 1) #6
  br label %if.end49

if.else:                                          ; preds = %entry
  %mute_gpiod20 = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %mute_gpiod20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mute_gpiod20, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %if.else.if.end24_crit_edge, label %if.then22

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 0) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else.if.end24_crit_edge
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3)
  %tobool45.not74 = icmp eq i32 %div3, 0
  br i1 %tobool45.not74, label %if.end24.if.end49_crit_edge, label %if.end24.while.body46_crit_edge

if.end24.while.body46_crit_edge:                  ; preds = %if.end24
  br label %while.body46

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

while.body46:                                     ; preds = %while.body46.while.body46_crit_edge, %if.end24.while.body46_crit_edge
  %__ms42.075 = phi i32 [ %dec44, %while.body46.while.body46_crit_edge ], [ %div3, %if.end24.while.body46_crit_edge ]
  %dec44 = add i32 %__ms42.075, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %tobool45.not = icmp eq i32 %dec44, 0
  br i1 %tobool45.not, label %while.body46.if.end49_crit_edge, label %while.body46.while.body46_crit_edge

while.body46.while.body46_crit_edge:              ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body46

while.body46.if.end49_crit_edge:                  ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end49:                                         ; preds = %while.body46.if.end49_crit_edge, %if.end24.if.end49_crit_edge, %if.then18, %cond.end16.if.end49_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @ak4458_rate_constraints) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !277
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_physical_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i.params_physical_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i) #6
  %slot_width = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slot_width, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %call1.i, i32 %12)
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %fs = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fs, align 4
  %arrayidx.i.i97 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i97, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 4
  %channels_max5 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %20, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %channels_max5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels_max5, align 8
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %params_physical_width.exit.sw.epilog20_crit_edge

params_physical_width.exit.sw.epilog20_crit_edge: ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20

for.inc.i.i:                                      ; preds = %params_physical_width.exit
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.1.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog20_crit_edge, label %params_format.exit

for.inc.i.i.sw.epilog20_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20

params_format.exit:                               ; preds = %for.inc.i.i
  %27 = tail call i32 @llvm.cttz.i32(i32 %26, i1 true) #6, !range !277
  %call6.off = add nsw i32 %27, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call6.off)
  %switch = icmp ult i32 %call6.off, 5
  br i1 %switch, label %for.inc.i.i.i107, label %params_format.exit.sw.epilog20_crit_edge

params_format.exit.sw.epilog20_crit_edge:         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20

for.inc.i.i.i107:                                 ; preds = %params_format.exit
  %28 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i106 = icmp eq i32 %29, 0
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true) #6, !range !277
  %add.i.i.i103 = or i32 %30, 32
  %retval.0.i.i.i108 = select i1 %tobool.not.1.i.i.i106, i32 0, i32 %add.i.i.i103
  %call1.i109 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i108) #6
  %mul = mul i32 %call1.i109, %15
  %31 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %mul, label %do.end15 [
    i32 2822400, label %for.inc.i.i.i107.sw.epilog_crit_edge
    i32 5644800, label %sw.bb9
    i32 11289600, label %sw.bb10
    i32 22579200, label %sw.bb11
  ]

for.inc.i.i.i107.sw.epilog_crit_edge:             ; preds = %for.inc.i.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.inc.i.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.inc.i.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.inc.i.i.i107
  %drvdata = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drvdata, align 4
  %type = getelementptr inbounds %struct.ak4458_drvdata, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp12 = icmp eq i32 %35, 1
  br i1 %cmp12, label %sw.bb11.sw.epilog_crit_edge, label %do.end

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22) #9
  br label %cleanup

do.end15:                                         ; preds = %for.inc.i.i.i107
  call void @__sanitizer_cov_trace_pc() #8
  %dev16 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %38 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.25) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11.sw.epilog_crit_edge, %sw.bb10, %sw.bb9, %for.inc.i.i.i107.sw.epilog_crit_edge
  %dsdsel0.0 = phi i32 [ 0, %sw.bb10 ], [ 1, %sw.bb9 ], [ 0, %for.inc.i.i.i107.sw.epilog_crit_edge ], [ 1, %sw.bb11.sw.epilog_crit_edge ]
  %dsdsel1.0 = phi i32 [ 1, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %for.inc.i.i.i107.sw.epilog_crit_edge ], [ 1, %sw.bb11.sw.epilog_crit_edge ]
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 1, i32 noundef %dsdsel0.0) #6
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 9, i32 noundef 1, i32 noundef %dsdsel1.0) #6
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.epilog, %params_format.exit.sw.epilog20_crit_edge, %for.inc.i.i.sw.epilog20_crit_edge, %params_physical_width.exit.sw.epilog20_crit_edge
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 128, i32 noundef 128) #6
  %40 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %13, label %sw.epilog20.cleanup_crit_edge [
    i32 16, label %sw.bb22
    i32 32, label %sw.bb28
  ]

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #8
  %fmt = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 8
  %41 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp23 = icmp eq i32 %42, 1
  %. = select i1 %cmp23, i32 6, i32 0
  br label %sw.epilog38

sw.bb28:                                          ; preds = %sw.epilog20
  %fmt29 = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 8
  %43 = ptrtoint ptr %fmt29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fmt29, align 4
  %switch.tableidx = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 7
  br i1 %45, label %switch.hole_check, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb28
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %46 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %switch.lobit.not = icmp eq i8 %46, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ak4458_hw_params, i32 0, i32 %switch.tableidx
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %switch.lookup, %sw.bb22
  %format.0 = phi i32 [ %., %sw.bb22 ], [ %switch.load, %switch.lookup ]
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef %format.0) #6
  %slots.i = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 9
  %48 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slots.i, align 4
  %50 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slot_width, align 4
  %mul.i = mul i32 %51, %49
  %52 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %mul.i, label %sw.epilog38.land.end_crit_edge [
    i32 128, label %sw.epilog38.land.lhs.true_crit_edge
    i32 256, label %sw.epilog38.land.lhs.true_crit_edge124
    i32 512, label %sw.epilog38.land.lhs.true_crit_edge125
  ]

sw.epilog38.land.lhs.true_crit_edge125:           ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

sw.epilog38.land.lhs.true_crit_edge124:           ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

sw.epilog38.land.lhs.true_crit_edge:              ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

sw.epilog38.land.end_crit_edge:                   ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true:                                    ; preds = %sw.epilog38.land.lhs.true_crit_edge, %sw.epilog38.land.lhs.true_crit_edge124, %sw.epilog38.land.lhs.true_crit_edge125
  %fmt42 = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 8
  %53 = ptrtoint ptr %fmt42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmt42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %54)
  %cmp43 = icmp eq i32 %54, 5
  br i1 %cmp43, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp45 = icmp sgt i32 %18, %22
  %phi.cast96 = select i1 %cmp45, i32 2, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %sw.epilog38.land.end_crit_edge
  %55 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ %phi.cast96, %land.rhs ], [ 0, %sw.epilog38.land.end_crit_edge ]
  %call50 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 11, i32 noundef 2, i32 noundef %55) #6
  %call1.i111 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  %56 = tail call i32 @llvm.smin.i32(i32 %call1.i111, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i111)
  %tobool52.not = icmp sgt i32 %call1.i111, -1
  br i1 %tobool52.not, label %if.end54, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i112 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #6
  %57 = tail call i32 @llvm.smin.i32(i32 %call1.i112, i32 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %land.end.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.epilog20.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end15 ], [ -22, %do.end ], [ -22, %sw.bb28.cleanup_crit_edge ], [ -22, %sw.epilog20.cleanup_crit_edge ], [ %56, %land.end.cleanup_crit_edge ], [ %57, %if.end54 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_probe(ptr noundef %component) #2 align 64 {
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
  %fs = getelementptr inbounds %struct.ak4458_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 48000, ptr %fs, align 4
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %mute_gpiod.i = getelementptr inbounds %struct.ak4458_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %mute_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mute_gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %reset_gpiod.i.i = getelementptr inbounds %struct.ak4458_priv, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %reset_gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpiod.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.ak4458_reset.exit.i_crit_edge, label %if.then.i.i

if.end.i.ak4458_reset.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_reset.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %ak4458_reset.exit.i

ak4458_reset.exit.i:                              ; preds = %if.then.i.i, %if.end.i.ak4458_reset.exit.i_crit_edge
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 128, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ak4458_reset.exit.i.ak4458_init.exit_crit_edge, label %if.end4.i

ak4458_reset.exit.i.ak4458_init.exit_crit_edge:   ; preds = %ak4458_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_init.exit

if.end4.i:                                        ; preds = %ak4458_reset.exit.i
  %drvdata.i = getelementptr inbounds %struct.ak4458_priv, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drvdata.i, align 4
  %type.i = getelementptr inbounds %struct.ak4458_drvdata, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp5.i = icmp eq i32 %15, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end11.i_crit_edge

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  %dsd_path.i = getelementptr inbounds %struct.ak4458_priv, ptr %7, i32 0, i32 11
  %16 = ptrtoint ptr %dsd_path.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dsd_path.i, align 4
  %shl.i = shl i32 %17, 2
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 9, i32 noundef 4, i32 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then6.i.ak4458_init.exit_crit_edge, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i.ak4458_init.exit_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_init.exit

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %if.end4.i.if.end11.i_crit_edge
  %call1.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 1, i32 noundef 1) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #6
  br label %ak4458_init.exit

ak4458_init.exit:                                 ; preds = %if.end11.i, %if.then6.i.ak4458_init.exit_crit_edge, %ak4458_reset.exit.i.ak4458_init.exit_crit_edge
  %retval.0.i = phi i32 [ %18, %if.end11.i ], [ %call2.i, %ak4458_reset.exit.i.ak4458_init.exit_crit_edge ], [ %call7.i, %if.then6.i.ak4458_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ak4458_remove(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %reset_gpiod.i = getelementptr inbounds %struct.ak4458_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ak4458_reset.exit_crit_edge, label %if.then.i

entry.ak4458_reset.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %ak4458_reset.exit

ak4458_reset.exit:                                ; preds = %if.then.i, %entry.ak4458_reset.exit_crit_edge
  ret void
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_digfil(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %digfil = getelementptr inbounds %struct.ak4458_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %digfil to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digfil, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_digfil(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp sgt i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %digfil = getelementptr inbounds %struct.ak4458_priv, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %digfil to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %digfil, align 4
  %and = shl i32 %1, 4
  %shl = and i32 %and, 32
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 1, i32 noundef 32, i32 noundef %shl) #6
  %9 = ptrtoint ptr %digfil to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %digfil, align 4
  %and5 = and i32 %10, 1
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef %and5) #6
  %11 = ptrtoint ptr %digfil to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digfil, align 4
  %and8 = lshr i32 %12, 2
  %13 = and i32 %and8, 1
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 5, i32 noundef 1, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #6
  %reset_gpiod.i = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ak4458_reset.exit_crit_edge, label %if.then.i

entry.ak4458_reset.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %ak4458_reset.exit

ak4458_reset.exit:                                ; preds = %if.then.i, %entry.ak4458_reset.exit_crit_edge
  %mute_gpiod = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %mute_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mute_gpiod, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %ak4458_reset.exit.if.end_crit_edge, label %if.then

ak4458_reset.exit.if.end_crit_edge:               ; preds = %ak4458_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ak4458_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %ak4458_reset.exit.if.end_crit_edge
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4458_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.94, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mute_gpiod = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %mute_gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mute_gpiod, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %reset_gpiod.i = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end5.ak4458_reset.exit23_crit_edge, label %ak4458_reset.exit

if.end5.ak4458_reset.exit23_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_reset.exit23

ak4458_reset.exit:                                ; preds = %if.end5
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %8 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %reset_gpiod.i, align 4
  %tobool.not.i21 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i21, label %ak4458_reset.exit.ak4458_reset.exit23_crit_edge, label %if.then.i22

ak4458_reset.exit.ak4458_reset.exit23_crit_edge:  ; preds = %ak4458_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4458_reset.exit23

if.then.i22:                                      ; preds = %ak4458_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %.pr, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %ak4458_reset.exit23

ak4458_reset.exit23:                              ; preds = %if.then.i22, %ak4458_reset.exit.ak4458_reset.exit23_crit_edge, %if.end5.ak4458_reset.exit23_crit_edge
  %regmap = getelementptr inbounds %struct.ak4458_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %10, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %12) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regcache_sync(ptr noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %ak4458_reset.exit23, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call8, %ak4458_reset.exit23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !266, !267}
!llvm.module.flags = !{!268, !269, !270, !271, !272, !273, !274, !275}
!llvm.ident = !{!276}

!0 = !{ptr @__initcall__kmod_snd_soc_ak4458__297_853_ak4458_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_ak4458__297_853_ak4458_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/ak4458.c", i32 853, i32 1}
!2 = !{ptr @__exitcall_ak4458_i2c_driver_exit, !1, !"__exitcall_ak4458_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/ak4458.c", i32 855, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/ak4458.c", i32 856, i32 1}
!7 = !{ptr @__UNIQUE_ID_description300, !8, !"__UNIQUE_ID_description300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/ak4458.c", i32 857, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/ak4458.c", i32 858, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/ak4458.c", i32 845, i32 11}
!14 = !{ptr @ak4458_i2c_driver, !15, !"ak4458_i2c_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/ak4458.c", i32 843, i32 26}
!16 = !{ptr @ak4458_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/ak4458.c", i32 783, i32 19}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/ak4458.c", i32 792, i32 61}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/ak4458.c", i32 797, i32 60}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/ak4458.c", i32 803, i32 41}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/ak4458.c", i32 811, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ak4458_i2c_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @ak4458_i2c_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/ak4458.c", i32 819, i32 3}
!35 = !{ptr @ak4458_i2c_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ak4458_i2c_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ak4458_regmap, !38, !"ak4458_regmap", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/ak4458.c", i32 746, i32 35}
!39 = !{ptr @ak4458_reg_defaults, !40, !"ak4458_reg_defaults", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/ak4458.c", i32 58, i32 33}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/ak4458.c", i32 27, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/ak4458.c", i32 28, i32 2}
!45 = distinct !{null, !46, !"ak4458_supply_names", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/ak4458.c", i32 26, i32 20}
!47 = !{ptr @ak4458_of_match, !48, !"ak4458_of_match", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/ak4458.c", i32 836, i32 34}
!49 = !{ptr @ak4458_drvdata, !50, !"ak4458_drvdata", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/ak4458.c", i32 756, i32 36}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/ak4458.c", i32 601, i32 10}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/ak4458.c", i32 603, i32 18}
!55 = !{ptr @ak4458_dai, !56, !"ak4458_dai", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/ak4458.c", i32 600, i32 34}
!57 = !{ptr @ak4458_dai_ops, !58, !"ak4458_dai_ops", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/ak4458.c", i32 591, i32 37}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/ak4458.c", i32 474, i32 3}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ak4458_set_dai_fmt._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ak4458_set_dai_fmt._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/ak4458.c", i32 487, i32 3}
!66 = !{ptr @ak4458_set_dai_fmt._entry.19, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ak4458_set_dai_fmt._entry_ptr.21, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @att_speed, !69, !"att_speed", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/ak4458.c", i32 509, i32 18}
!70 = !{ptr @ak4458_rate_constraints, !71, !"ak4458_rate_constraints", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/ak4458.c", i32 574, i32 48}
!72 = !{ptr @ak4458_rates, !73, !"ak4458_rates", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/ak4458.c", i32 566, i32 27}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/ak4458.c", i32 385, i32 5}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ak4458_hw_params._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ak4458_hw_params._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/ak4458.c", i32 390, i32 4}
!81 = !{ptr @ak4458_hw_params._entry.24, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ak4458_hw_params._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @soc_codec_dev_ak4458, !84, !"soc_codec_dev_ak4458", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/ak4458.c", i32 716, i32 46}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/ak4458.c", i32 230, i32 2}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/ak4458.c", i32 232, i32 2}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/ak4458.c", i32 234, i32 2}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/ak4458.c", i32 236, i32 2}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/ak4458.c", i32 238, i32 2}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/ak4458.c", i32 239, i32 2}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/ak4458.c", i32 240, i32 2}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/ak4458.c", i32 241, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/ak4458.c", i32 242, i32 2}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/ak4458.c", i32 244, i32 2}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/ak4458.c", i32 245, i32 2}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/ak4458.c", i32 246, i32 2}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/ak4458.c", i32 247, i32 2}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/ak4458.c", i32 249, i32 2}
!113 = !{ptr @ak4458_snd_controls, !114, !"ak4458_snd_controls", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/ak4458.c", i32 229, i32 38}
!115 = !{ptr @dac_tlv, !116, !"dac_tlv", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/ak4458.c", i32 86, i32 8}
!117 = !{ptr @ak4458_dac1_dem_enum, !118, !"ak4458_dac1_dem_enum", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/ak4458.c", i32 147, i32 30}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/ak4458.c", i32 96, i32 2}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/ak4458.c", i32 96, i32 13}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/ak4458.c", i32 96, i32 20}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/ak4458.c", i32 96, i32 29}
!127 = !{ptr @ak4458_dem_select_texts, !128, !"ak4458_dem_select_texts", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/ak4458.c", i32 95, i32 27}
!129 = !{ptr @ak4458_dac2_dem_enum, !130, !"ak4458_dac2_dem_enum", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/ak4458.c", i32 151, i32 30}
!131 = !{ptr @ak4458_dac3_dem_enum, !132, !"ak4458_dac3_dem_enum", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/ak4458.c", i32 155, i32 30}
!133 = !{ptr @ak4458_dac4_dem_enum, !134, !"ak4458_dac4_dem_enum", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/ak4458.c", i32 159, i32 30}
!135 = !{ptr @ak4458_digfil_enum, !136, !"ak4458_digfil_enum", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/ak4458.c", i32 163, i32 30}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/ak4458.c", i32 108, i32 2}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/ak4458.c", i32 109, i32 2}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/ak4458.c", i32 110, i32 2}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/ak4458.c", i32 111, i32 2}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/ak4458.c", i32 112, i32 2}
!147 = !{ptr @ak4458_digfil_select_texts, !148, !"ak4458_digfil_select_texts", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/ak4458.c", i32 107, i32 27}
!149 = !{ptr @ak4458_dzfb_enum, !150, !"ak4458_dzfb_enum", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/ak4458.c", i32 166, i32 30}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/ak4458.c", i32 120, i32 57}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/ak4458.c", i32 120, i32 62}
!155 = !{ptr @ak4458_dzfb_select_texts, !156, !"ak4458_dzfb_select_texts", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/ak4458.c", i32 120, i32 27}
!157 = !{ptr @ak4458_sm_enum, !158, !"ak4458_sm_enum", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/ak4458.c", i32 170, i32 30}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/ak4458.c", i32 130, i32 2}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/ak4458.c", i32 130, i32 18}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/ak4458.c", i32 130, i32 34}
!165 = !{ptr @ak4458_sc_select_texts, !166, !"ak4458_sc_select_texts", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/ak4458.c", i32 129, i32 27}
!167 = !{ptr @ak4458_fir_enum, !168, !"ak4458_fir_enum", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/ak4458.c", i32 174, i32 30}
!169 = !{ptr @.str.58, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/ak4458.c", i32 135, i32 2}
!171 = !{ptr @.str.59, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/ak4458.c", i32 135, i32 12}
!173 = !{ptr @.str.60, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/ak4458.c", i32 135, i32 22}
!175 = !{ptr @.str.61, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/ak4458.c", i32 135, i32 32}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/ak4458.c", i32 136, i32 2}
!179 = !{ptr @.str.63, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/ak4458.c", i32 136, i32 12}
!181 = !{ptr @.str.64, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/ak4458.c", i32 136, i32 22}
!183 = !{ptr @.str.65, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/ak4458.c", i32 136, i32 32}
!185 = !{ptr @ak4458_fir_select_texts, !186, !"ak4458_fir_select_texts", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/ak4458.c", i32 134, i32 27}
!187 = !{ptr @ak4458_ats_enum, !188, !"ak4458_ats_enum", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/ak4458.c", i32 178, i32 30}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/ak4458.c", i32 141, i32 2}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/ak4458.c", i32 141, i32 13}
!193 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/ak4458.c", i32 141, i32 24}
!195 = !{ptr @.str.69, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/ak4458.c", i32 141, i32 34}
!197 = !{ptr @ak4458_ats_select_texts, !198, !"ak4458_ats_select_texts", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/ak4458.c", i32 140, i32 27}
!199 = !{ptr @ak4458_dif_enum, !200, !"ak4458_dif_enum", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/ak4458.c", i32 182, i32 30}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/ak4458.c", i32 145, i32 56}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/ak4458.c", i32 145, i32 69}
!205 = !{ptr @ak4458_dif_select_texts, !206, !"ak4458_dif_select_texts", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/ak4458.c", i32 145, i32 27}
!207 = !{ptr @.str.72, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/ak4458.c", i32 254, i32 2}
!209 = !{ptr @.str.73, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/ak4458.c", i32 255, i32 2}
!211 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/ak4458.c", i32 256, i32 2}
!213 = !{ptr @.str.75, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/ak4458.c", i32 258, i32 2}
!215 = !{ptr @.str.76, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/ak4458.c", i32 259, i32 2}
!217 = !{ptr @.str.77, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/ak4458.c", i32 261, i32 2}
!219 = !{ptr @.str.78, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/ak4458.c", i32 262, i32 2}
!221 = !{ptr @.str.79, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/ak4458.c", i32 264, i32 2}
!223 = !{ptr @.str.80, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/ak4458.c", i32 265, i32 2}
!225 = !{ptr @ak4458_dapm_widgets, !226, !"ak4458_dapm_widgets", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/ak4458.c", i32 253, i32 41}
!227 = !{ptr @ak4458_intercon, !228, !"ak4458_intercon", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/ak4458.c", i32 268, i32 40}
!229 = !{ptr @ak4497_drvdata, !230, !"ak4497_drvdata", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/ak4458.c", i32 762, i32 36}
!231 = !{ptr @.str.82, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/ak4458.c", i32 613, i32 10}
!233 = !{ptr @ak4497_dai, !234, !"ak4497_dai", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/ak4458.c", i32 612, i32 34}
!235 = !{ptr @soc_codec_dev_ak4497, !236, !"soc_codec_dev_ak4497", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/ak4458.c", i32 731, i32 46}
!237 = !{ptr @.str.83, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/ak4458.c", i32 284, i32 2}
!239 = !{ptr @.str.85, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/ak4458.c", i32 286, i32 2}
!241 = !{ptr @.str.86, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/ak4458.c", i32 287, i32 2}
!243 = !{ptr @.str.87, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/ak4458.c", i32 289, i32 2}
!245 = !{ptr @.str.88, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/ak4458.c", i32 290, i32 2}
!247 = !{ptr @.str.89, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/ak4458.c", i32 291, i32 2}
!249 = !{ptr @ak4497_snd_controls, !250, !"ak4497_snd_controls", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/ak4458.c", i32 283, i32 38}
!251 = !{ptr @.str.90, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/ak4458.c", i32 297, i32 2}
!253 = !{ptr @.str.91, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/ak4458.c", i32 298, i32 2}
!255 = !{ptr @.str.92, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/ak4458.c", i32 299, i32 2}
!257 = !{ptr @ak4497_dapm_widgets, !258, !"ak4497_dapm_widgets", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/ak4458.c", i32 296, i32 41}
!259 = !{ptr @ak4497_intercon, !260, !"ak4497_intercon", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/ak4458.c", i32 303, i32 40}
!261 = !{ptr @ak4458_pm, !262, !"ak4458_pm", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/ak4458.c", i32 768, i32 32}
!263 = !{ptr @.str.94, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/ak4458.c", i32 699, i32 3}
!265 = !{ptr @.str.95, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @ak4458_runtime_resume._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @ak4458_runtime_resume._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{i32 1, !"wchar_size", i32 2}
!269 = !{i32 1, !"min_enum_size", i32 4}
!270 = !{i32 8, !"branch-target-enforcement", i32 0}
!271 = !{i32 8, !"sign-return-address", i32 0}
!272 = !{i32 8, !"sign-return-address-all", i32 0}
!273 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!274 = !{i32 7, !"uwtable", i32 1}
!275 = !{i32 7, !"frame-pointer", i32 2}
!276 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!277 = !{i32 0, i32 33}
