; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98390.c_pt.bc'
source_filename = "../sound/soc/codecs/max98390.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max98390_priv = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_max98390__300_1128_max98390_i2c_driver_init6 = internal global ptr @max98390_i2c_driver_init, section ".initcall6.init", align 4
@max98390_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98390_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98390_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98390_pm, ptr null, ptr null }, ptr @max98390_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98390_i2c_driver_exit = internal global ptr @max98390_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [54 x i8] c"snd_soc_max98390.description=ALSA SoC MAX98390 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [67 x i8] c"snd_soc_max98390.author=Steve Lee <steves.lee@maximintegrated.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [56 x i8] c"snd_soc_max98390.file=sound/soc/codecs/snd-soc-max98390\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [29 x i8] c"snd_soc_max98390.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98390\00", [23 x i8] zeroinitializer }, align 32
@max98390_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98390\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max98390_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max98390_suspend, ptr @max98390_resume, ptr @max98390_suspend, ptr @max98390_resume, ptr @max98390_suspend, ptr @max98390_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max98390_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98390\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1030, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C check functionality failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98390_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98390.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr = internal global ptr @max98390_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maxim,temperature_calib\00", [40 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1045, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"no optional property 'temperature_calib' found, default:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr.10 = internal global ptr @max98390_i2c_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"maxim,r0_calib\00", [17 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1051, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"no optional property 'r0_calib' found, default:\0A\00", [47 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr.14 = internal global ptr @max98390_i2c_probe._entry.12, section ".printk_index", align 4
@max98390_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1057, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: r0_calib: 0x%x,temperature_calib: 0x%x\00", [53 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr.17 = internal global ptr @max98390_i2c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"maxim,dsm_param_name\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98390_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr @max98390_readable_register, ptr @max98390_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 9471, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98390_reg_defaults, i32 134, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max98390:1068:(&max98390_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1072, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr.23 = internal global ptr @max98390_i2c_probe._entry.21, section ".printk_index", align 4
@max98390_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1082, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ret=%d, Failed to read: 0x%02X\0A\00", [32 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr.26 = internal global ptr @max98390_i2c_probe._entry.24, section ".printk_index", align 4
@max98390_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1085, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAX98390 revisionID: 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@max98390_i2c_probe._entry_ptr.29 = internal global ptr @max98390_i2c_probe._entry.27, section ".printk_index", align 4
@soc_codec_dev_max98390 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @max98390_snd_controls, i32 11, ptr @max98390_dapm_widgets, i32 3, ptr @max98390_audio_map, i32 4, ptr @max98390_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@max98390_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.169, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98390_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.170, i64 1092, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.151, i64 1092, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,vmon-slot-no\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,imon-slot-no\00", [45 x i8] zeroinitializer }, align 32
@max98390_reg_defaults = internal global { [134 x %struct.reg_default], [272 x i8] } { [134 x %struct.reg_default] [%struct.reg_default { i32 8203, i32 240 }, %struct.reg_default { i32 8204, i32 0 }, %struct.reg_default { i32 8205, i32 0 }, %struct.reg_default { i32 8206, i32 0 }, %struct.reg_default { i32 8207, i32 0 }, %struct.reg_default { i32 8208, i32 0 }, %struct.reg_default { i32 8209, i32 1 }, %struct.reg_default { i32 8210, i32 109 }, %struct.reg_default { i32 8212, i32 3 }, %struct.reg_default { i32 8213, i32 0 }, %struct.reg_default { i32 8214, i32 0 }, %struct.reg_default { i32 8215, i32 117 }, %struct.reg_default { i32 8216, i32 140 }, %struct.reg_default { i32 8217, i32 8 }, %struct.reg_default { i32 8218, i32 85 }, %struct.reg_default { i32 8219, i32 0 }, %struct.reg_default { i32 8220, i32 0 }, %struct.reg_default { i32 8221, i32 0 }, %struct.reg_default { i32 8222, i32 0 }, %struct.reg_default { i32 8223, i32 255 }, %struct.reg_default { i32 8224, i32 255 }, %struct.reg_default { i32 8225, i32 0 }, %struct.reg_default { i32 8226, i32 0 }, %struct.reg_default { i32 8227, i32 0 }, %struct.reg_default { i32 8228, i32 192 }, %struct.reg_default { i32 8229, i32 28 }, %struct.reg_default { i32 8230, i32 68 }, %struct.reg_default { i32 8231, i32 8 }, %struct.reg_default { i32 8236, i32 0 }, %struct.reg_default { i32 8237, i32 0 }, %struct.reg_default { i32 8238, i32 0 }, %struct.reg_default { i32 8239, i32 0 }, %struct.reg_default { i32 8240, i32 0 }, %struct.reg_default { i32 8241, i32 0 }, %struct.reg_default { i32 8242, i32 0 }, %struct.reg_default { i32 8243, i32 0 }, %struct.reg_default { i32 8249, i32 15 }, %struct.reg_default { i32 8250, i32 129 }, %struct.reg_default { i32 8251, i32 0 }, %struct.reg_default { i32 8252, i32 0 }, %struct.reg_default { i32 8254, i32 133 }, %struct.reg_default { i32 8255, i32 3 }, %struct.reg_default { i32 8256, i32 15 }, %struct.reg_default { i32 8257, i32 28 }, %struct.reg_default { i32 8258, i32 1 }, %struct.reg_default { i32 8259, i32 64 }, %struct.reg_default { i32 8260, i32 7 }, %struct.reg_default { i32 8261, i32 0 }, %struct.reg_default { i32 8262, i32 35 }, %struct.reg_default { i32 8263, i32 0 }, %struct.reg_default { i32 8264, i32 0 }, %struct.reg_default { i32 8265, i32 0 }, %struct.reg_default { i32 8266, i32 0 }, %struct.reg_default { i32 8267, i32 0 }, %struct.reg_default { i32 8268, i32 0 }, %struct.reg_default { i32 8272, i32 44 }, %struct.reg_default { i32 8277, i32 0 }, %struct.reg_default { i32 8278, i32 0 }, %struct.reg_default { i32 8279, i32 0 }, %struct.reg_default { i32 8280, i32 0 }, %struct.reg_default { i32 8281, i32 0 }, %struct.reg_default { i32 8282, i32 0 }, %struct.reg_default { i32 8283, i32 0 }, %struct.reg_default { i32 8284, i32 0 }, %struct.reg_default { i32 8285, i32 0 }, %struct.reg_default { i32 8286, i32 31 }, %struct.reg_default { i32 8287, i32 0 }, %struct.reg_default { i32 8288, i32 0 }, %struct.reg_default { i32 8289, i32 0 }, %struct.reg_default { i32 8290, i32 0 }, %struct.reg_default { i32 8291, i32 0 }, %struct.reg_default { i32 8292, i32 0 }, %struct.reg_default { i32 8293, i32 0 }, %struct.reg_default { i32 8294, i32 0 }, %struct.reg_default { i32 8295, i32 0 }, %struct.reg_default { i32 8296, i32 0 }, %struct.reg_default { i32 8297, i32 0 }, %struct.reg_default { i32 8298, i32 0 }, %struct.reg_default { i32 8299, i32 0 }, %struct.reg_default { i32 8300, i32 0 }, %struct.reg_default { i32 8301, i32 0 }, %struct.reg_default { i32 8302, i32 0 }, %struct.reg_default { i32 8303, i32 0 }, %struct.reg_default { i32 8304, i32 0 }, %struct.reg_default { i32 8306, i32 0 }, %struct.reg_default { i32 8307, i32 0 }, %struct.reg_default { i32 8308, i32 0 }, %struct.reg_default { i32 8309, i32 0 }, %struct.reg_default { i32 8310, i32 15 }, %struct.reg_default { i32 8311, i32 128 }, %struct.reg_default { i32 8312, i32 7 }, %struct.reg_default { i32 8313, i32 7 }, %struct.reg_default { i32 8314, i32 1 }, %struct.reg_default { i32 8316, i32 73 }, %struct.reg_default { i32 8317, i32 43 }, %struct.reg_default { i32 8318, i32 8 }, %struct.reg_default { i32 8319, i32 0 }, %struct.reg_default { i32 8320, i32 3 }, %struct.reg_default { i32 8321, i32 0 }, %struct.reg_default { i32 8322, i32 7 }, %struct.reg_default { i32 8324, i32 0 }, %struct.reg_default { i32 9088, i32 0 }, %struct.reg_default { i32 9089, i32 0 }, %struct.reg_default { i32 9090, i32 0 }, %struct.reg_default { i32 9091, i32 0 }, %struct.reg_default { i32 9092, i32 0 }, %struct.reg_default { i32 9093, i32 0 }, %struct.reg_default { i32 9094, i32 0 }, %struct.reg_default { i32 9095, i32 0 }, %struct.reg_default { i32 9096, i32 0 }, %struct.reg_default { i32 9097, i32 0 }, %struct.reg_default { i32 9099, i32 0 }, %struct.reg_default { i32 9101, i32 0 }, %struct.reg_default { i32 9102, i32 0 }, %struct.reg_default { i32 9103, i32 0 }, %struct.reg_default { i32 9104, i32 0 }, %struct.reg_default { i32 9105, i32 0 }, %struct.reg_default { i32 9106, i32 0 }, %struct.reg_default { i32 9107, i32 0 }, %struct.reg_default { i32 9108, i32 0 }, %struct.reg_default { i32 9109, i32 0 }, %struct.reg_default { i32 9110, i32 0 }, %struct.reg_default { i32 9111, i32 0 }, %struct.reg_default { i32 9112, i32 0 }, %struct.reg_default { i32 9113, i32 0 }, %struct.reg_default { i32 9114, i32 0 }, %struct.reg_default { i32 9115, i32 0 }, %struct.reg_default { i32 9141, i32 0 }, %struct.reg_default { i32 9142, i32 8 }, %struct.reg_default { i32 9145, i32 32 }, %struct.reg_default { i32 9146, i32 160 }, %struct.reg_default { i32 9184, i32 0 }, %struct.reg_default { i32 9185, i32 0 }, %struct.reg_default { i32 9215, i32 0 }], [272 x i8] zeroinitializer }, align 32
@max98390_snd_controls = internal constant { [11 x %struct.snd_kcontrol_new], [144 x i8] } { [11 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98390_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98390_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98390_boost_voltage to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98390_current_limit to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98390_ref_rdc_get, ptr @max98390_ref_rdc_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98390_ambient_temp_get, ptr @max98390_ambient_temp_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98390_adaptive_rdc_get, ptr @max98390_adaptive_rdc_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98390_dsm_calib_get, ptr @max98390_dsm_calib_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }], [144 x i8] zeroinitializer }, align 32
@max98390_audio_map = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.156, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.157, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.158, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Volume\00", [17 x i8] zeroinitializer }, align 32
@max98390_digital_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8000, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 184, i32 184, i32 9146, i32 9146, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@max98390_spk_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 300, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 8253, i32 8253, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ramp Up Bypass Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8249, i32 8249, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Ramp Down Bypass Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8249, i32 8249, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boost Clock Phase\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 8258, i32 8258, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Boost Output Voltage\00", [43 x i8] zeroinitializer }, align 32
@max98390_boost_voltage = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8257, i8 0, i8 0, i32 29, i32 31, ptr @max98390_boost_voltage_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Current Limit\00", [18 x i8] zeroinitializer }, align 32
@max98390_current_limit = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8259, i8 0, i8 0, i32 65, i32 127, ptr @max98390_current_limit_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSM Rdc\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16777215, i32 16777215, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSM Ambient Temp\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSM Adaptive Rdc\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSM Calibration\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@max98390_boost_voltage_text = internal constant { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6.5V\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6.625V\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6.75V\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6.875V\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7V\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7.125V\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"7.25V\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7.375V\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7.5V\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7.625V\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"7.75V\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7.875V\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8V\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.125V\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8.25V\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.375V\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8.5V\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.625V\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8.75V\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.875V\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9V\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.125V\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9.25V\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.375V\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9.5V\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.625V\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9.75V\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9.875V\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"10V\00", [28 x i8] zeroinitializer }, align 32
@max98390_current_limit_text = internal constant { [65 x ptr], [92 x i8] } { [65 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [92 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.00A\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.50A\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.00A\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.05A\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.10A\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.15A\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.20A\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.25A\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.30A\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.35A\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.40A\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.45A\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.50A\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.55A\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.60A\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.65A\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.70A\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.75A\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.80A\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.85A\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.90A\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.95A\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.00A\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.05A\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.10A\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.15A\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.20A\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.25A\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.30A\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.35A\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.40A\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.45A\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.50A\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.55A\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.60A\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.65A\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.70A\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.75A\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.80A\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.85A\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.90A\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.95A\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.00A\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.05A\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.10A\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.15A\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.20A\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.25A\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.30A\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.35A\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.40A\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.45A\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.50A\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.55A\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.60A\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.65A\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.70A\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.75A\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.80A\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.85A\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.90A\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.95A\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.00A\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.05A\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4.10A\00", [26 x i8] zeroinitializer }, align 32
@max98390_adaptive_rdc_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 607, ptr @.str.147, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Put adaptive rdc not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max98390_adaptive_rdc_put\00", [38 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max98390_adaptive_rdc_put._entry_ptr = internal global ptr @max98390_adaptive_rdc_put._entry, section ".printk_index", align 4
@max98390_dsm_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.3, i32 848, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"rdc resistance about %d.%02d ohm, reg=0x%X temp reg=0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max98390_dsm_calibrate\00", [41 x i8] zeroinitializer }, align 32
@max98390_dsm_calibrate._entry_ptr = internal global ptr @max98390_dsm_calibrate._entry, section ".printk_index", align 4
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Amp Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAI Sel Mux\00", [20 x i8] zeroinitializer }, align 32
@max98390_dai_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.155, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dai_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BE_OUT\00", [25 x i8] zeroinitializer }, align 32
@max98390_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.150, ptr @.str.151, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98390_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98390_dai_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAI Sel\00", [24 x i8] zeroinitializer }, align 32
@dai_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8225, i8 0, i8 0, i32 3, i32 3, ptr @max98390_switch_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98390_switch_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.156, ptr @.str.157, ptr @.str.158], [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LeftRight\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsm_param.bin\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsmparam.bin\00", [19 x i8] zeroinitializer }, align 32
@max98390_dsm_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.163, ptr @.str.164, ptr @.str.3, ptr @.str.165, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_max98390\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max98390_dsm_init\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max98390: param fw size %zd\0A\00", [35 x i8] zeroinitializer }, align 32
@max98390_dsm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"param fw is invalid.\0A\00", [42 x i8] zeroinitializer }, align 32
@max98390_dsm_init._entry_ptr = internal global ptr @max98390_dsm_init._entry, section ".printk_index", align 4
@max98390_dsm_init._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max98390_dsm_init._entry_ptr.168 = internal global ptr @max98390_dsm_init._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max98390-aif1\00", [18 x i8] zeroinitializer }, align 32
@max98390_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98390_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98390_dai_set_fmt, ptr null, ptr @max98390_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98390_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@max98390_dai_set_fmt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.163, ptr @.str.171, ptr @.str.3, ptr @.str.172, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98390_dai_set_fmt\00", [43 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: fmt 0x%08X\0A\00", [16 x i8] zeroinitializer }, align 32
@max98390_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAI clock mode unsupported\0A\00", [36 x i8] zeroinitializer }, align 32
@max98390_dai_set_fmt._entry_ptr = internal global ptr @max98390_dai_set_fmt._entry, section ".printk_index", align 4
@max98390_dai_set_fmt._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.171, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAI invert mode unsupported\0A\00", [35 x i8] zeroinitializer }, align 32
@max98390_dai_set_fmt._entry_ptr.176 = internal global ptr @max98390_dai_set_fmt._entry.174, section ".printk_index", align 4
@max98390_dai_tdm_slot.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.163, ptr @.str.177, ptr @.str.3, ptr @.str.178, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98390_dai_tdm_slot\00", [42 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tdm mode : %d\0A\00", [17 x i8] zeroinitializer }, align 32
@max98390_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BCLK %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@max98390_dai_tdm_slot._entry_ptr = internal global ptr @max98390_dai_tdm_slot._entry, section ".printk_index", align 4
@max98390_dai_tdm_slot._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.177, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"format unsupported %d\0A\00", [41 x i8] zeroinitializer }, align 32
@max98390_dai_tdm_slot._entry_ptr.182 = internal global ptr @max98390_dai_tdm_slot._entry.180, section ".printk_index", align 4
@max98390_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.183, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max98390_dai_hw_params\00", [41 x i8] zeroinitializer }, align 32
@max98390_dai_hw_params._entry_ptr = internal global ptr @max98390_dai_hw_params._entry, section ".printk_index", align 4
@max98390_dai_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.163, ptr @.str.183, ptr @.str.3, ptr @.str.184, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"format supported %d\00", [44 x i8] zeroinitializer }, align 32
@max98390_dai_hw_params._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.183, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rate %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@max98390_dai_hw_params._entry_ptr.187 = internal global ptr @max98390_dai_hw_params._entry.185, section ".printk_index", align 4
@max98390_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to find proper clock rate.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98390_set_clock\00", [45 x i8] zeroinitializer }, align 32
@max98390_set_clock._entry_ptr = internal global ptr @max98390_set_clock._entry, section ".printk_index", align 4
@max98390_set_clock._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.189, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max98390_set_clock._entry_ptr.191 = internal global ptr @max98390_set_clock._entry.190, section ".printk_index", align 4
@max98390_suspend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.163, ptr @.str.192, ptr @.str.3, ptr @.str.193, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max98390_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:Enter\0A\00", [22 x i8] zeroinitializer }, align 32
@max98390_resume.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.163, ptr @.str.194, ptr @.str.3, ptr @.str.193, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max98390_resume\00", [16 x i8] zeroinitializer }, align 32
@switch.table.max98390_dai_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 8, i32 32, i32 24], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [85 x i64] [i64 83, i64 32, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 8203, i64 8204, i64 8205, i64 8209, i64 8210, i64 8211, i64 8212, i64 8213, i64 8215, i64 8216, i64 8217, i64 8218, i64 8219, i64 8220, i64 8221, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227, i64 8228, i64 8229, i64 8230, i64 8231, i64 8232, i64 8233, i64 8234, i64 8235, i64 8236, i64 8237, i64 8238, i64 8239, i64 8240, i64 8241, i64 8242, i64 8243, i64 8244, i64 8245, i64 8246, i64 8247, i64 8248, i64 8249, i64 8250, i64 8251, i64 8252, i64 8253, i64 8254, i64 8255, i64 8256, i64 8257, i64 8258, i64 8259, i64 8260, i64 8261, i64 8262, i64 8263, i64 8264, i64 8265, i64 8266, i64 8267, i64 8268, i64 8269, i64 8270, i64 8271, i64 8272, i64 8273, i64 8274, i64 8275, i64 8276, i64 8277, i64 8278]
@__sancov_gen_cov_switch_values.195 = internal global [55 x i64] [i64 53, i64 32, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 8203, i64 8204, i64 8205, i64 8269, i64 8270, i64 8271, i64 8273, i64 8274, i64 8275, i64 8276, i64 8305, i64 8315, i64 9116, i64 9117, i64 9118, i64 9119, i64 9120, i64 9121, i64 9122, i64 9123, i64 9124, i64 9125, i64 9126, i64 9127, i64 9128, i64 9129, i64 9130, i64 9131, i64 9132, i64 9133, i64 9134, i64 9135, i64 9136, i64 9137, i64 9138, i64 9139, i64 9140, i64 9141, i64 9200, i64 9201, i64 9202, i64 9203]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.199 = internal global [12 x i64] [i64 10, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 320, i64 384, i64 512]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.202 = internal global [11 x i64] [i64 9, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.203 = internal global [12 x i64] [i64 10, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 320, i64 384, i64 512]
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"max98390_i2c_driver\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1117, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1119, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"max98390_of_match\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1102, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"max98390_pm\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 971, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"max98390_i2c_id\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1094, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1030, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1041, i32 44 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1044, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1047, i32 44 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1050, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1054, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1059, i32 47 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1062, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"max98390_regmap\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 989, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1068, i32 21 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1071, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1080, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1085, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [23 x i8] c"soc_codec_dev_max98390\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 975, i32 46 }
@___asan_gen_.300 = private unnamed_addr constant [13 x i8] c"max98390_dai\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 733, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1006, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1011, i32 37 }
@___asan_gen_.309 = private unnamed_addr constant [22 x i8] c"max98390_reg_defaults\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 27, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant [22 x i8] c"max98390_snd_controls\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 646, i32 38 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"max98390_audio_map\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 688, i32 40 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 647, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [21 x i8] c"max98390_digital_tlv\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 519, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 650, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"max98390_spk_tlv\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 518, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 653, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 655, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 657, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 659, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [23 x i8] c"max98390_boost_voltage\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 514, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 660, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [23 x i8] c"max98390_current_limit\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 533, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 661, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 663, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 665, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 667, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [28 x i8] c"max98390_boost_voltage_text\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 507, i32 27 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 20 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 39 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 45 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 55 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 508, i32 64 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 20 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 29 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 39 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 45 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 55 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 509, i32 64 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 20 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 29 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 39 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 45 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 55 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 510, i32 64 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 511, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 511, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 511, i32 20 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 511, i32 29 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 511, i32 39 }
@___asan_gen_.462 = private unnamed_addr constant [28 x i8] c"max98390_current_limit_text\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 521, i32 27 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 11 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 20 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 29 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 38 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 47 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 56 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 522, i32 65 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 11 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 20 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 29 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 38 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 47 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 56 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 523, i32 65 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 11 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 20 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 29 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 38 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 47 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 56 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 524, i32 65 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 11 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 20 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 29 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 38 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 47 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 56 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 525, i32 65 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 11 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 20 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 29 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 38 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 47 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 56 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 526, i32 65 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 11 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 20 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 29 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 38 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 47 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 56 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 65 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 11 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 20 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 29 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 38 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 47 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 56 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 528, i32 65 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 11 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 20 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 29 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 38 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 47 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 56 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 529, i32 65 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 530, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 607, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 847, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 680, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 683, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant [22 x i8] c"max98390_dai_controls\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 676, i32 38 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 685, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [22 x i8] c"max98390_dapm_widgets\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 679, i32 41 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 677, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [13 x i8] c"dai_sel_enum\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 671, i32 30 }
@___asan_gen_.705 = private unnamed_addr constant [21 x i8] c"max98390_switch_text\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 504, i32 27 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 505, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 505, i32 10 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 505, i32 19 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 773, i32 22 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 776, i32 40 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 783, i32 32 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 790, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 794, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 805, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 735, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant [17 x i8] c"max98390_dai_ops\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 468, i32 37 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 744, i32 19 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 175, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 186, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 202, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 401, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 407, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 429, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 327, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 336, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 369, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 276, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 290, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 950, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.823 = private constant [31 x i8] c"../sound/soc/codecs/max98390.c\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 962, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant [34 x i8] c"switch.table.max98390_dai_set_fmt\00", align 1
@llvm.compiler.used = appending global [240 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_max98390_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98390__300_1128_max98390_i2c_driver_init6, ptr @max98390_adaptive_rdc_put._entry, ptr @max98390_adaptive_rdc_put._entry_ptr, ptr @max98390_dai_hw_params._entry, ptr @max98390_dai_hw_params._entry.185, ptr @max98390_dai_hw_params._entry_ptr, ptr @max98390_dai_hw_params._entry_ptr.187, ptr @max98390_dai_set_fmt._entry, ptr @max98390_dai_set_fmt._entry.174, ptr @max98390_dai_set_fmt._entry_ptr, ptr @max98390_dai_set_fmt._entry_ptr.176, ptr @max98390_dai_tdm_slot._entry, ptr @max98390_dai_tdm_slot._entry.180, ptr @max98390_dai_tdm_slot._entry_ptr, ptr @max98390_dai_tdm_slot._entry_ptr.182, ptr @max98390_dsm_calibrate._entry, ptr @max98390_dsm_calibrate._entry_ptr, ptr @max98390_dsm_init._entry, ptr @max98390_dsm_init._entry.167, ptr @max98390_dsm_init._entry_ptr, ptr @max98390_dsm_init._entry_ptr.168, ptr @max98390_i2c_driver_exit, ptr @max98390_i2c_probe._entry, ptr @max98390_i2c_probe._entry.12, ptr @max98390_i2c_probe._entry.15, ptr @max98390_i2c_probe._entry.21, ptr @max98390_i2c_probe._entry.24, ptr @max98390_i2c_probe._entry.27, ptr @max98390_i2c_probe._entry.7, ptr @max98390_i2c_probe._entry_ptr, ptr @max98390_i2c_probe._entry_ptr.10, ptr @max98390_i2c_probe._entry_ptr.14, ptr @max98390_i2c_probe._entry_ptr.17, ptr @max98390_i2c_probe._entry_ptr.23, ptr @max98390_i2c_probe._entry_ptr.26, ptr @max98390_i2c_probe._entry_ptr.29, ptr @max98390_set_clock._entry, ptr @max98390_set_clock._entry.190, ptr @max98390_set_clock._entry_ptr, ptr @max98390_set_clock._entry_ptr.191, ptr @max98390_i2c_driver, ptr @.str, ptr @max98390_of_match, ptr @max98390_pm, ptr @max98390_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @max98390_i2c_probe._key, ptr @max98390_regmap, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @soc_codec_dev_max98390, ptr @max98390_dai, ptr @.str.30, ptr @.str.31, ptr @max98390_reg_defaults, ptr @max98390_snd_controls, ptr @max98390_audio_map, ptr @.str.32, ptr @max98390_digital_tlv, ptr @.compoundliteral, ptr @.str.33, ptr @max98390_spk_tlv, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @max98390_boost_voltage, ptr @.str.42, ptr @max98390_current_limit, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @max98390_boost_voltage_text, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @max98390_current_limit_text, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @max98390_dai_controls, ptr @.str.153, ptr @max98390_dapm_widgets, ptr @.str.155, ptr @dai_sel_enum, ptr @max98390_switch_text, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.169, ptr @max98390_dai_ops, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @switch.table.max98390_dai_set_fmt], section "llvm.metadata"
@0 = internal global [214 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_max98390 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_reg_defaults to i32), i32 1072, i32 1344, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_snd_controls to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_audio_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_spk_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_boost_voltage to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_current_limit to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_boost_voltage_text to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_current_limit_text to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_adaptive_rdc_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dsm_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_switch_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dsm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dsm_init._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_set_fmt._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_tdm_slot._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_dai_hw_params._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_set_clock._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max98390_dai_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98390_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98390_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @max98390_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %1 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #10
  %and.i = and i32 %call.i.i, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1966080, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1966080
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 36, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %ambient_temp_value = getelementptr inbounds %struct.max98390_priv, ptr %call.i, i32 0, i32 7
  %call.i103 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.6, ptr noundef %ambient_temp_value, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool9.not = icmp eq i32 %call.i103, 0
  br i1 %tobool9.not, label %if.end6.if.end15_crit_edge, label %do.end13

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.8) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end6.if.end15_crit_edge
  %ref_rdc_value = getelementptr inbounds %struct.max98390_priv, ptr %call.i, i32 0, i32 6
  %call.i104 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.11, ptr noundef %ref_rdc_value, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool18.not = icmp eq i32 %call.i104, 0
  br i1 %tobool18.not, label %if.end15.do.end27_crit_edge, label %do.end22

if.end15.do.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.13) #13
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %if.end15.do.end27_crit_edge
  %8 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_rdc_value, align 4
  %10 = ptrtoint ptr %ambient_temp_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ambient_temp_value, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef %11) #13
  %dsm_param_name = getelementptr inbounds %struct.max98390_priv, ptr %call.i, i32 0, i32 8
  %call32 = tail call i32 @device_property_read_string(ptr noundef %dev2, ptr noundef nonnull @.str.18, ptr noundef %dsm_param_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end27.if.end36_crit_edge, label %if.then34

do.end27.if.end36_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dsm_param_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.19, ptr %dsm_param_name, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %do.end27.if.end36_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i, align 4, !annotation !425
  %call.i.i105 = call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.30, ptr noundef nonnull %value.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.not.i = icmp eq i32 %call.i.i105, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end36.if.end.i_crit_edge

if.end36.if.end.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  %and.i106 = and i32 %15, 15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end36.if.end.i_crit_edge
  %.sink.i = phi i32 [ %and.i106, %if.then.i ], [ 0, %if.end36.if.end.i_crit_edge ]
  %16 = getelementptr inbounds %struct.max98390_priv, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 4
  %call.i14.i = call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.31, ptr noundef nonnull %value.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool4.not.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.max98390_slot_config.exit_crit_edge

if.end.i.max98390_slot_config.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98390_slot_config.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i, align 4
  %and6.i = and i32 %19, 15
  br label %max98390_slot_config.exit

max98390_slot_config.exit:                        ; preds = %if.then5.i, %if.end.i.max98390_slot_config.exit_crit_edge
  %.sink15.i = phi i32 [ %and6.i, %if.then5.i ], [ 1, %if.end.i.max98390_slot_config.exit_crit_edge ]
  %20 = getelementptr inbounds %struct.max98390_priv, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink15.i, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  %call37 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max98390_regmap, ptr noundef nonnull @max98390_i2c_probe._key, ptr noundef nonnull @.str.20) #10
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call37, ptr %call.i, align 4
  %cmp.i107 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then40, label %if.end47

if.then40:                                        ; preds = %max98390_slot_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.22, i32 noundef %23) #13
  br label %cleanup

if.end47:                                         ; preds = %max98390_slot_config.exit
  %call49 = call i32 @regmap_read(ptr noundef %call37, i32 noundef 9471, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end59, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25, i32 noundef %call49, i32 noundef 9471) #13
  br label %cleanup

do.end59:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.28, i32 noundef %25) #13
  %call62 = call i32 @devm_snd_soc_register_component(ptr noundef %dev2, ptr noundef nonnull @soc_codec_dev_max98390, ptr noundef nonnull @max98390_dai, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end54, %if.then40, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %23, %if.then40 ], [ %call49, %do.end54 ], [ %call62, %do.end59 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98390_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.caserange5 [
    i32 8215, label %entry.return_crit_edge
    i32 8216, label %entry.return_crit_edge7
    i32 8217, label %entry.return_crit_edge8
    i32 8218, label %entry.return_crit_edge9
    i32 8219, label %entry.return_crit_edge10
    i32 8220, label %entry.return_crit_edge11
    i32 8221, label %entry.return_crit_edge12
    i32 8222, label %entry.return_crit_edge13
    i32 8223, label %entry.return_crit_edge14
    i32 8224, label %entry.return_crit_edge15
    i32 8225, label %entry.return_crit_edge16
    i32 8226, label %entry.return_crit_edge17
    i32 8227, label %entry.return_crit_edge18
    i32 8228, label %entry.return_crit_edge19
    i32 8229, label %entry.return_crit_edge20
    i32 8230, label %entry.return_crit_edge21
    i32 8231, label %entry.return_crit_edge22
    i32 8232, label %entry.return_crit_edge23
    i32 8233, label %entry.return_crit_edge24
    i32 8234, label %entry.return_crit_edge25
    i32 8235, label %entry.return_crit_edge26
    i32 8236, label %entry.return_crit_edge27
    i32 8237, label %entry.return_crit_edge28
    i32 8238, label %entry.return_crit_edge29
    i32 8239, label %entry.return_crit_edge30
    i32 8240, label %entry.return_crit_edge31
    i32 8241, label %entry.return_crit_edge32
    i32 8242, label %entry.return_crit_edge33
    i32 8243, label %entry.return_crit_edge34
    i32 8244, label %entry.return_crit_edge35
    i32 8245, label %entry.return_crit_edge36
    i32 8246, label %entry.return_crit_edge37
    i32 8247, label %entry.return_crit_edge38
    i32 8248, label %entry.return_crit_edge39
    i32 8249, label %entry.return_crit_edge40
    i32 8250, label %entry.return_crit_edge41
    i32 8251, label %entry.return_crit_edge42
    i32 8252, label %entry.return_crit_edge43
    i32 8253, label %entry.return_crit_edge44
    i32 8254, label %entry.return_crit_edge45
    i32 8255, label %entry.return_crit_edge46
    i32 8256, label %entry.return_crit_edge47
    i32 8257, label %entry.return_crit_edge48
    i32 8258, label %entry.return_crit_edge49
    i32 8259, label %entry.return_crit_edge50
    i32 8260, label %entry.return_crit_edge51
    i32 8261, label %entry.return_crit_edge52
    i32 8262, label %entry.return_crit_edge53
    i32 8263, label %entry.return_crit_edge54
    i32 8264, label %entry.return_crit_edge55
    i32 8265, label %entry.return_crit_edge56
    i32 8266, label %entry.return_crit_edge57
    i32 8267, label %entry.return_crit_edge58
    i32 8268, label %entry.return_crit_edge59
    i32 8269, label %entry.return_crit_edge60
    i32 8270, label %entry.return_crit_edge61
    i32 8271, label %entry.return_crit_edge62
    i32 8272, label %entry.return_crit_edge63
    i32 8273, label %entry.return_crit_edge64
    i32 8274, label %entry.return_crit_edge65
    i32 8275, label %entry.return_crit_edge66
    i32 8276, label %entry.return_crit_edge67
    i32 8277, label %entry.return_crit_edge68
    i32 8278, label %entry.return_crit_edge69
    i32 8209, label %entry.return_crit_edge70
    i32 8210, label %entry.return_crit_edge71
    i32 8211, label %entry.return_crit_edge72
    i32 8212, label %entry.return_crit_edge73
    i32 8213, label %entry.return_crit_edge74
    i32 8192, label %entry.return_crit_edge75
    i32 8193, label %entry.return_crit_edge76
    i32 8194, label %entry.return_crit_edge77
    i32 8195, label %entry.return_crit_edge78
    i32 8196, label %entry.return_crit_edge79
    i32 8197, label %entry.return_crit_edge80
    i32 8198, label %entry.return_crit_edge81
    i32 8199, label %entry.return_crit_edge82
    i32 8200, label %entry.return_crit_edge83
    i32 8201, label %entry.return_crit_edge84
    i32 8202, label %entry.return_crit_edge85
    i32 8203, label %entry.return_crit_edge86
    i32 8204, label %entry.return_crit_edge87
    i32 8205, label %entry.return_crit_edge88
  ]

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.caserange5:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = add i32 %reg, -8280
  call void @__sanitizer_cov_trace_const_cmp4(i32 862, i32 %1)
  %inbounds6 = icmp ult i32 %1, 862
  %2 = add i32 %reg, -9145
  call void @__sanitizer_cov_trace_const_cmp4(i32 327, i32 %2)
  %inbounds = icmp ult i32 %2, 327
  %or.cond = or i1 %inbounds6, %inbounds
  br label %return

return:                                           ; preds = %sw.caserange5, %entry.return_crit_edge, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ %or.cond, %sw.caserange5 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98390_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %reg, label %sw.caserange [
    i32 8305, label %entry.return_crit_edge
    i32 8315, label %entry.return_crit_edge7
    i32 9200, label %entry.return_crit_edge8
    i32 9201, label %entry.return_crit_edge9
    i32 9202, label %entry.return_crit_edge10
    i32 9203, label %entry.return_crit_edge11
    i32 9116, label %entry.return_crit_edge12
    i32 9117, label %entry.return_crit_edge13
    i32 9118, label %entry.return_crit_edge14
    i32 9119, label %entry.return_crit_edge15
    i32 9120, label %entry.return_crit_edge16
    i32 9121, label %entry.return_crit_edge17
    i32 9122, label %entry.return_crit_edge18
    i32 9123, label %entry.return_crit_edge19
    i32 9124, label %entry.return_crit_edge20
    i32 9125, label %entry.return_crit_edge21
    i32 9126, label %entry.return_crit_edge22
    i32 9127, label %entry.return_crit_edge23
    i32 9128, label %entry.return_crit_edge24
    i32 9129, label %entry.return_crit_edge25
    i32 9130, label %entry.return_crit_edge26
    i32 9131, label %entry.return_crit_edge27
    i32 9132, label %entry.return_crit_edge28
    i32 9133, label %entry.return_crit_edge29
    i32 9134, label %entry.return_crit_edge30
    i32 9135, label %entry.return_crit_edge31
    i32 9136, label %entry.return_crit_edge32
    i32 9137, label %entry.return_crit_edge33
    i32 9138, label %entry.return_crit_edge34
    i32 9139, label %entry.return_crit_edge35
    i32 9140, label %entry.return_crit_edge36
    i32 9141, label %entry.return_crit_edge37
    i32 8273, label %entry.return_crit_edge38
    i32 8274, label %entry.return_crit_edge39
    i32 8275, label %entry.return_crit_edge40
    i32 8276, label %entry.return_crit_edge41
    i32 8269, label %entry.return_crit_edge42
    i32 8270, label %entry.return_crit_edge43
    i32 8271, label %entry.return_crit_edge44
    i32 8192, label %entry.return_crit_edge45
    i32 8193, label %entry.return_crit_edge46
    i32 8194, label %entry.return_crit_edge47
    i32 8195, label %entry.return_crit_edge48
    i32 8196, label %entry.return_crit_edge49
    i32 8197, label %entry.return_crit_edge50
    i32 8198, label %entry.return_crit_edge51
    i32 8199, label %entry.return_crit_edge52
    i32 8200, label %entry.return_crit_edge53
    i32 8201, label %entry.return_crit_edge54
    i32 8202, label %entry.return_crit_edge55
    i32 8203, label %entry.return_crit_edge56
    i32 8204, label %entry.return_crit_edge57
    i32 8205, label %entry.return_crit_edge58
  ]

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.caserange:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = add i32 %reg, -8449
  call void @__sanitizer_cov_trace_const_cmp4(i32 535, i32 %1)
  %inbounds = icmp ult i32 %1, 535
  br label %return

return:                                           ; preds = %sw.caserange, %entry.return_crit_edge, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ %inbounds, %sw.caserange ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_probe(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8192, i32 noundef 1) #10
  tail call void @msleep(i32 noundef 20) #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8210, i32 noundef 111) #10
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 8212, i32 noundef 0) #10
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 8272, i32 noundef 0) #10
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 8219, i32 noundef 3) #10
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 8310, i32 noundef 14) #10
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %9, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 8316, i32 noundef 70) #10
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 8321, i32 noundef 3) #10
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 4
  %i_l_slot.i = getelementptr inbounds %struct.max98390_priv, ptr %9, i32 0, i32 5
  %26 = ptrtoint ptr %i_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_l_slot.i, align 4
  %shl.i = shl i32 %27, 4
  %v_l_slot.i = getelementptr inbounds %struct.max98390_priv, ptr %9, i32 0, i32 4
  %28 = ptrtoint ptr %v_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v_l_slot.i, align 4
  %or.i = or i32 %shl.i, %29
  %and.i = and i32 %or.i, 255
  %call15.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 8226, i32 noundef %and.i) #10
  %30 = ptrtoint ptr %v_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v_l_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %cmp.i = icmp ult i32 %31, 8
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %9, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl19.i = shl nuw nsw i32 1, %31
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 8223, i32 noundef %shl19.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %9, align 4
  %36 = ptrtoint ptr %v_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %v_l_slot.i, align 4
  %shl23.i = shl nuw i32 1, %37
  %call.i100.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 8221, i32 noundef %shl23.i, i32 noundef %shl23.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %31, -8
  %shl29.i = shl nuw i32 1, %sub.i
  %call.i101.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 8224, i32 noundef %shl29.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 4
  %40 = ptrtoint ptr %v_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v_l_slot.i, align 4
  %sub33.i = add i32 %41, -8
  %shl34.i = shl nuw i32 1, %sub33.i
  %call.i102.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 8222, i32 noundef %shl34.i, i32 noundef %shl34.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %42 = ptrtoint ptr %i_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_l_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %43)
  %cmp40.i = icmp ult i32 %43, 8
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 4
  br i1 %cmp40.i, label %if.then41.i, label %if.else52.i

if.then41.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl44.i = shl nuw nsw i32 1, %43
  %call.i103.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 8223, i32 noundef %shl44.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %9, align 4
  %48 = ptrtoint ptr %i_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_l_slot.i, align 4
  %shl48.i = shl nuw i32 1, %49
  %call.i104.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 8221, i32 noundef %shl48.i, i32 noundef %shl48.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %max98390_init_regs.exit

if.else52.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub55.i = add i32 %43, -8
  %shl56.i = shl nuw i32 1, %sub55.i
  %call.i105.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 8224, i32 noundef %shl56.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %9, align 4
  %52 = ptrtoint ptr %i_l_slot.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_l_slot.i, align 4
  %sub60.i = add i32 %53, -8
  %shl61.i = shl nuw i32 1, %sub60.i
  %call.i106.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 8222, i32 noundef %shl61.i, i32 noundef %shl61.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %max98390_init_regs.exit

max98390_init_regs.exit:                          ; preds = %if.else52.i, %if.then41.i
  tail call fastcc void @max98390_dsm_init(ptr noundef %component)
  %ref_rdc_value = getelementptr inbounds %struct.max98390_priv, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ref_rdc_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not = icmp eq i32 %55, 0
  br i1 %tobool.not, label %max98390_init_regs.exit.if.end_crit_edge, label %if.then

max98390_init_regs.exit.if.end_crit_edge:         ; preds = %max98390_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %max98390_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %and = and i32 %55, 255
  %call5 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 9106, i32 noundef %and) #10
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %60 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ref_rdc_value, align 4
  %shr = lshr i32 %61, 8
  %and8 = and i32 %shr, 255
  %call9 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 9107, i32 noundef %and8) #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ref_rdc_value, align 4
  %shr12 = lshr i32 %65, 16
  %and13 = and i32 %shr12, 255
  %call14 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 9108, i32 noundef %and13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %max98390_init_regs.exit.if.end_crit_edge
  %ambient_temp_value = getelementptr inbounds %struct.max98390_priv, ptr %3, i32 0, i32 7
  %66 = ptrtoint ptr %ambient_temp_value to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ambient_temp_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool15.not = icmp eq i32 %67, 0
  br i1 %tobool15.not, label %if.end.if.end26_crit_edge, label %if.then16

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %shr19 = lshr i32 %67, 8
  %and20 = and i32 %shr19, 255
  %call21 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 9105, i32 noundef %and20) #10
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %72 = ptrtoint ptr %ambient_temp_value to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ambient_temp_value, align 4
  %and24 = and i32 %73, 255
  %call25 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 9104, i32 noundef %and24) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then16, %if.end.if.end26_crit_edge
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98390_ref_rdc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %ref_rdc_value = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_rdc_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_ref_rdc_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %ref_rdc_value = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ref_rdc_value, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %and = and i32 %7, 255
  %call3 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 9106, i32 noundef %and) #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_rdc_value, align 4
  %shr = lshr i32 %14, 8
  %and6 = and i32 %shr, 255
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9107, i32 noundef %and6) #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %ref_rdc_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_rdc_value, align 4
  %shr10 = lshr i32 %18, 16
  %and11 = and i32 %shr10, 255
  %call12 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9108, i32 noundef %and11) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98390_ambient_temp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %ambient_temp_value = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ambient_temp_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ambient_temp_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_ambient_temp_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %ambient_temp_value = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %ambient_temp_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ambient_temp_value, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %shr = lshr i32 %7, 8
  %and = and i32 %shr, 255
  %call3 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 9105, i32 noundef %and) #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %ambient_temp_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ambient_temp_value, align 4
  %and6 = and i32 %14, 255
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9104, i32 noundef %and6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_adaptive_rdc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %rdc = alloca i32, align 4
  %rdc0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdc) #10
  %0 = ptrtoint ptr %rdc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rdc, align 4, !annotation !425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdc0) #10
  %1 = ptrtoint ptr %rdc0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rdc0, align 4, !annotation !425
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
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef 9116, ptr noundef nonnull %rdc) #10
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call4 = call i32 @regmap_read(ptr noundef %11, i32 noundef 9117, ptr noundef nonnull %rdc0) #10
  %12 = ptrtoint ptr %rdc0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdc0, align 4
  %14 = ptrtoint ptr %rdc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rdc, align 4
  %shl = shl i32 %15, 8
  %or = or i32 %shl, %13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdc0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdc) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_adaptive_rdc_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readnone %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.145) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98390_dsm_calib_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef readnone %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_dsm_calib_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readnone %ucontrol) #2 align 64 {
entry:
  %rdc.i = alloca i32, align 4
  %rdc_cal_result.i = alloca i32, align 4
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdc.i) #10
  %2 = ptrtoint ptr %rdc.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rdc.i, align 4, !annotation !425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdc_cal_result.i) #10
  %3 = ptrtoint ptr %rdc_cal_result.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rdc_cal_result.i, align 4, !annotation !425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #10
  %4 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp.i, align 4, !annotation !425
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 8250, i32 noundef 129) #10
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9215, i32 noundef 1) #10
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 9116, ptr noundef nonnull %rdc.i) #10
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 9117, ptr noundef nonnull %rdc_cal_result.i) #10
  %17 = ptrtoint ptr %rdc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rdc.i, align 4
  %shl.i = shl i32 %18, 8
  %and.i = and i32 %shl.i, 65280
  %19 = ptrtoint ptr %rdc_cal_result.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rdc_cal_result.i, align 4
  %or.i = or i32 %and.i, %20
  store i32 %or.i, ptr %rdc_cal_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %entry.max98390_dsm_calibrate.exit_crit_edge, label %if.then.i

entry.max98390_dsm_calibrate.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98390_dsm_calibrate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = udiv i32 268435456, %or.i
  %ref_rdc_value.i = getelementptr inbounds %struct.max98390_priv, ptr %8, i32 0, i32 6
  %21 = ptrtoint ptr %ref_rdc_value.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.i, ptr %ref_rdc_value.i, align 4
  br label %max98390_dsm_calibrate.exit

max98390_dsm_calibrate.exit:                      ; preds = %if.then.i, %entry.max98390_dsm_calibrate.exit_crit_edge
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %8, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 8271, ptr noundef nonnull %temp.i) #10
  %24 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temp.i, align 4
  %mul.i = mul i32 %25, 52
  %sub.i = add i32 %mul.i, -1188
  %ambient_temp_value.i = getelementptr inbounds %struct.max98390_priv, ptr %8, i32 0, i32 7
  %26 = ptrtoint ptr %ambient_temp_value.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %ambient_temp_value.i, align 4
  %27 = ptrtoint ptr %rdc_cal_result.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rdc_cal_result.i, align 4
  %mul10.i = mul i32 %28, 937
  %div111.i = lshr i32 %mul10.i, 16
  %mul13.i = mul i32 %28, 93700
  %div142.i = lshr i32 %mul13.i, 16
  %mul15.neg.i = mul nsw i32 %div111.i, -100
  %sub16.i = add nsw i32 %mul15.neg.i, %div142.i
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.148, i32 noundef %div111.i, i32 noundef %sub16.i, i32 noundef %28, i32 noundef %25) #13
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %8, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 9215, i32 noundef 0) #10
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %8, align 4
  %call20.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 8250, i32 noundef 128) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdc_cal_result.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdc.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9215, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9215, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8250, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max98390_dsm_init(ptr nocapture noundef readonly %component) unnamed_addr #2 align 64 {
entry:
  %filename = alloca [128 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %filename) #10
  %0 = call ptr @memset(ptr %filename, i32 255, i32 128)
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !425
  %dsm_param_name = getelementptr inbounds %struct.max98390_priv, ptr %4, i32 0, i32 8
  %6 = ptrtoint ptr %dsm_param_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsm_param_name, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(8) @.str.19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else, label %if.else10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %filename, ptr @.str.160, i32 14)
  br label %if.end14

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename, i32 noundef 128, ptr noundef nonnull @.str.161, ptr noundef %7)
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.else
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call16 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.do.body_crit_edge, label %if.then18

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then18:                                        ; preds = %if.end14
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %call20 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.160, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then18.do.body_crit_edge, label %if.then22

if.then18.do.body_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then22:                                        ; preds = %if.then18
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %call24 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.162, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.do.body_crit_edge, label %if.then22.err_crit_edge

if.then22.err_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then22.do.body_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.then22.do.body_crit_edge, %if.then18.do.body_crit_edge, %if.end14.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98390_dsm_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98390_dsm_init, %if.then34)) #10
          to label %do.end [label %if.then34], !srcloc !426

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98390_dsm_init.__UNIQUE_ID_ddebug297, ptr noundef %16, ptr noundef nonnull @.str.165, i32 noundef %20) #10
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 670, i32 %24)
  %cmp = icmp ult i32 %24, 670
  br i1 %cmp, label %do.end41, label %if.end43

do.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.166) #13
  br label %err_alloc

if.end43:                                         ; preds = %do.end
  %data = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv = zext i8 %30 to i32
  %arrayidx44 = getelementptr i8, ptr %28, i32 1
  %31 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %conv45, 8
  %or = or i32 %shl, %conv
  %arrayidx47 = getelementptr i8, ptr %28, i32 2
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %34 to i32
  %arrayidx50 = getelementptr i8, ptr %28, i32 3
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %36 to i32
  %shl53 = shl nuw nsw i32 %conv51, 8
  %or54 = or i32 %shl53, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %or54)
  %cmp55 = icmp ugt i32 %or54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 8209, i32 %or)
  %cmp57 = icmp ult i32 %or, 8209
  %or.cond = select i1 %cmp55, i1 true, i1 %cmp57
  %add = add nuw nsw i32 %or54, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp61 = icmp ult i32 %24, %add
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp61
  br i1 %or.cond1, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.166) #13
  br label %err_alloc

if.end68:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %call69 = call i32 @regmap_write(ptr noundef %40, i32 noundef 8250, i32 noundef 128) #10
  %add.ptr = getelementptr i8, ptr %28, i32 16
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %4, align 4
  %call71 = call i32 @regmap_bulk_write(ptr noundef %42, i32 noundef %or, ptr noundef %add.ptr, i32 noundef %or54) #10
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %call73 = call i32 @regmap_write(ptr noundef %44, i32 noundef 9185, i32 noundef 1) #10
  br label %err_alloc

err_alloc:                                        ; preds = %if.end68, %do.end66, %do.end41
  %45 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %46) #10
  br label %err

err:                                              ; preds = %err_alloc, %if.then22.err_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %filename) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98390_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #6 align 64 {
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
  %sysclk = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_dai_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98390_dai_set_fmt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98390_dai_set_fmt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98390_dai_set_fmt.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %fmt) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = trunc i32 %fmt to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.197)
  switch i16 %trunc, label %do.end8 [
    i16 16384, label %do.end.sw.epilog_crit_edge
    i16 4096, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %master = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %master, align 4
  br label %sw.epilog

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.173) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %do.end.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 3, %sw.bb5 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8229, i32 noundef 3, i32 noundef %mode.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and11 = and i32 %fmt, 3840
  %15 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %and11, label %do.end16 [
    i32 0, label %sw.epilog.sw.epilog18_crit_edge
    i32 768, label %sw.bb12
  ]

sw.epilog.sw.epilog18_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog18

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog18

do.end16:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.175) #13
  br label %cleanup

sw.epilog18:                                      ; preds = %sw.bb12, %sw.epilog.sw.epilog18_crit_edge
  %invert.0 = phi i32 [ 4, %sw.bb12 ], [ %and11, %sw.epilog.sw.epilog18_crit_edge ]
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8228, i32 noundef 4, i32 noundef %invert.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and21 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 5
  br i1 %20, label %switch.hole_check, label %sw.epilog18.cleanup_crit_edge

sw.epilog18.cleanup_crit_edge:                    ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog18
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.max98390_dai_set_fmt, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 8228, i32 noundef 56, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.epilog18.cleanup_crit_edge, %do.end16, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end16 ], [ 0, %switch.lookup ], [ -22, %sw.epilog18.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %6 = or i32 %rx_mask, %tx_mask
  %7 = or i32 %6, %slots
  %8 = or i32 %7, %slot_width
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %spec.select = zext i1 %9 to i32
  %10 = getelementptr inbounds %struct.max98390_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98390_dai_tdm_slot.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98390_dai_tdm_slot, %if.then12)) #10
          to label %do.end [label %if.then12], !srcloc !426

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98390_dai_tdm_slot.__UNIQUE_ID_ddebug296, ptr noundef %13, ptr noundef nonnull @.str.178, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %entry
  %mul = mul i32 %slot_width, %slots
  %16 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %mul, label %do.end20 [
    i32 32, label %do.end.if.end23_crit_edge
    i32 48, label %cleanup.fold.split.i
    i32 64, label %cleanup.fold.split8.i
    i32 96, label %cleanup.fold.split9.i
    i32 128, label %cleanup.fold.split10.i
    i32 192, label %cleanup.fold.split11.i
    i32 256, label %cleanup.fold.split12.i
    i32 320, label %cleanup.fold.split13.i
    i32 384, label %cleanup.fold.split14.i
    i32 512, label %cleanup.fold.split15.i
  ]

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split8.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split9.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split10.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split11.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split12.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split13.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split14.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cleanup.fold.split15.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.179, i32 noundef %mul) #13
  br label %cleanup

if.end23:                                         ; preds = %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %do.end.if.end23_crit_edge
  %retval.0.i73.ph = phi i32 [ 11, %cleanup.fold.split15.i ], [ 10, %cleanup.fold.split14.i ], [ 9, %cleanup.fold.split13.i ], [ 8, %cleanup.fold.split12.i ], [ 7, %cleanup.fold.split11.i ], [ 6, %cleanup.fold.split10.i ], [ 5, %cleanup.fold.split9.i ], [ 4, %cleanup.fold.split8.i ], [ 3, %cleanup.fold.split.i ], [ 2, %do.end.if.end23_crit_edge ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8230, i32 noundef 15, i32 noundef %retval.0.i73.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %21 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %slot_width, label %do.end29 [
    i32 16, label %if.end23.sw.epilog_crit_edge
    i32 24, label %sw.bb25
    i32 32, label %sw.bb26
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.181, i32 noundef %slot_width) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb25, %if.end23.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb26 ], [ 128, %sw.bb25 ], [ 64, %if.end23.sw.epilog_crit_edge ]
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 8228, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %and = and i32 %rx_mask, 255
  %call34 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8219, i32 noundef %and) #10
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %and36 = lshr i32 %rx_mask, 8
  %shr = and i32 %and36, 255
  %call37 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 8220, i32 noundef %shr) #10
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %neg = xor i32 %tx_mask, -1
  %and39 = and i32 %neg, 255
  %call40 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 8223, i32 noundef %and39) #10
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %and43 = lshr i32 %neg, 8
  %shr44 = and i32 %and43, 255
  %call45 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 8224, i32 noundef %shr44) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end29, %do.end20
  %retval.0 = phi i32 [ -22, %do.end29 ], [ 0, %sw.epilog ], [ -22, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_dai_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.if.then.i.i_crit_edge ], [ %10, %for.inc.i.i.if.then.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !427
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #10
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %call3, label %do.end [
    i32 16, label %params_format.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb4
    i32 32, label %sw.bb5
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i50 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i50, label %for.inc.i.i57, label %do.end.if.then.i.i54_crit_edge

do.end.if.then.i.i54_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i54

if.then.i.i54:                                    ; preds = %for.inc.i.i57.if.then.i.i54_crit_edge, %do.end.if.then.i.i54_crit_edge
  %i.09.lcssa.i.i51 = phi i32 [ 0, %do.end.if.then.i.i54_crit_edge ], [ 32, %for.inc.i.i57.if.then.i.i54_crit_edge ]
  %.lcssa.i.i52 = phi i32 [ %15, %do.end.if.then.i.i54_crit_edge ], [ %18, %for.inc.i.i57.if.then.i.i54_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i52, i1 true) #10, !range !427
  %add.i.i53 = or i32 %16, %i.09.lcssa.i.i51
  br label %params_format.exit59

for.inc.i.i57:                                    ; preds = %do.end
  %arrayidx.1.i.i55 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i56 = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i56, label %for.inc.i.i57.params_format.exit59_crit_edge, label %for.inc.i.i57.if.then.i.i54_crit_edge

for.inc.i.i57.if.then.i.i54_crit_edge:            ; preds = %for.inc.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i54

for.inc.i.i57.params_format.exit59_crit_edge:     ; preds = %for.inc.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit59

params_format.exit59:                             ; preds = %for.inc.i.i57.params_format.exit59_crit_edge, %if.then.i.i54
  %retval.0.i.i58 = phi i32 [ %add.i.i53, %if.then.i.i54 ], [ 0, %for.inc.i.i57.params_format.exit59_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.181, i32 noundef %retval.0.i.i58) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %params_format.exit.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb5 ], [ 128, %sw.bb4 ], [ 64, %params_format.exit.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8228, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98390_dai_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98390_dai_hw_params, %if.then)) #10
          to label %do.end15 [label %if.then], !srcloc !426

if.then:                                          ; preds = %sw.epilog
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i61 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i61, label %for.inc.i.i68, label %if.then.if.then.i.i65_crit_edge

if.then.if.then.i.i65_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i65

if.then.i.i65:                                    ; preds = %for.inc.i.i68.if.then.i.i65_crit_edge, %if.then.if.then.i.i65_crit_edge
  %i.09.lcssa.i.i62 = phi i32 [ 0, %if.then.if.then.i.i65_crit_edge ], [ 32, %for.inc.i.i68.if.then.i.i65_crit_edge ]
  %.lcssa.i.i63 = phi i32 [ %24, %if.then.if.then.i.i65_crit_edge ], [ %27, %for.inc.i.i68.if.then.i.i65_crit_edge ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i63, i1 true) #10, !range !427
  %add.i.i64 = or i32 %25, %i.09.lcssa.i.i62
  br label %params_format.exit70

for.inc.i.i68:                                    ; preds = %if.then
  %arrayidx.1.i.i66 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx.1.i.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.1.i.i67 = icmp eq i32 %27, 0
  br i1 %tobool.not.1.i.i67, label %for.inc.i.i68.params_format.exit70_crit_edge, label %for.inc.i.i68.if.then.i.i65_crit_edge

for.inc.i.i68.if.then.i.i65_crit_edge:            ; preds = %for.inc.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i65

for.inc.i.i68.params_format.exit70_crit_edge:     ; preds = %for.inc.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit70

params_format.exit70:                             ; preds = %for.inc.i.i68.params_format.exit70_crit_edge, %if.then.i.i65
  %retval.0.i.i69 = phi i32 [ %add.i.i64, %if.then.i.i65 ], [ 0, %for.inc.i.i68.params_format.exit70_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98390_dai_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %22, ptr noundef nonnull @.str.184, i32 noundef %retval.0.i.i69) #10
  br label %do.end15

do.end15:                                         ; preds = %params_format.exit70, %sw.epilog
  %arrayidx.i.i71 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i71, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %29, label %do.end29 [
    i32 8000, label %do.end15.sw.epilog32_crit_edge
    i32 11025, label %sw.bb18
    i32 12000, label %sw.bb19
    i32 16000, label %sw.bb20
    i32 22050, label %sw.bb21
    i32 24000, label %sw.bb22
    i32 32000, label %sw.bb23
    i32 44100, label %sw.bb24
    i32 48000, label %sw.bb25
  ]

do.end15.sw.epilog32_crit_edge:                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb18:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb19:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb20:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb21:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb22:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb23:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb24:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb25:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

do.end29:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.186, i32 noundef %29) #13
  br label %cleanup

sw.epilog32:                                      ; preds = %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %do.end15.sw.epilog32_crit_edge
  %sampling_rate.0 = phi i32 [ 8, %sw.bb25 ], [ 7, %sw.bb24 ], [ 6, %sw.bb23 ], [ 5, %sw.bb22 ], [ 4, %sw.bb21 ], [ 3, %sw.bb20 ], [ 2, %sw.bb19 ], [ 1, %sw.bb18 ], [ 0, %do.end15.sw.epilog32_crit_edge ]
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 8231, i32 noundef 15, i32 noundef %sampling_rate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.epilog32.if.then.i.i.i_crit_edge

sw.epilog32.if.then.i.i.i_crit_edge:              ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.epilog32.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.epilog32.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %42, %sw.epilog32.if.then.i.i.i_crit_edge ], [ %45, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !427
  %add.i.i.i = or i32 %43, %i.09.lcssa.i.i.i
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %sw.epilog32
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_format.exit.i_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit.i

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %call3.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %mul.i = mul i32 %call3.i, %40
  %master.i = getelementptr inbounds %struct.max98390_priv, ptr %38, i32 0, i32 2
  %46 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %params_format.exit.i.if.end10.i_crit_edge, label %for.cond.preheader.i

params_format.exit.i.if.end10.i_crit_edge:        ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.cond.preheader.i:                             ; preds = %params_format.exit.i
  %sysclk.i = getelementptr inbounds %struct.max98390_priv, ptr %38, i32 0, i32 1
  %48 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sysclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5644800, i32 %49)
  %cmp4.not.i = icmp ugt i32 %49, 5644800
  br i1 %cmp4.not.i, label %for.inc.i, label %for.cond.preheader.i.if.end8.i_crit_edge

for.cond.preheader.i.if.end8.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %49)
  %cmp4.not.1.i = icmp ugt i32 %49, 6000000
  br i1 %cmp4.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end8.i_crit_edge

for.inc.i.if.end8.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %49)
  %cmp4.not.2.i = icmp ugt i32 %49, 6144000
  br i1 %cmp4.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end8.i_crit_edge

for.inc.1.i.if.end8.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6500000, i32 %49)
  %cmp4.not.3.i = icmp ugt i32 %49, 6500000
  br i1 %cmp4.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end8.i_crit_edge

for.inc.2.i.if.end8.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600000, i32 %49)
  %cmp4.not.4.i = icmp ugt i32 %49, 9600000
  br i1 %cmp4.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end8.i_crit_edge

for.inc.3.i.if.end8.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11289600, i32 %49)
  %cmp4.not.5.i = icmp ugt i32 %49, 11289600
  br i1 %cmp4.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end8.i_crit_edge

for.inc.4.i.if.end8.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %49)
  %cmp4.not.6.i = icmp ugt i32 %49, 12000000
  br i1 %cmp4.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end8.i_crit_edge

for.inc.5.i.if.end8.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %49)
  %cmp4.not.7.i = icmp ugt i32 %49, 12288000
  br i1 %cmp4.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end8.i_crit_edge

for.inc.6.i.if.end8.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13000000, i32 %49)
  %cmp4.not.8.i = icmp ugt i32 %49, 13000000
  br i1 %cmp4.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end8.i_crit_edge

for.inc.7.i.if.end8.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %49)
  %cmp4.not.9.i = icmp ugt i32 %49, 19200000
  br i1 %cmp4.not.9.i, label %do.end.i, label %for.inc.8.i.if.end8.i_crit_edge

for.inc.8.i.if.end8.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end.i:                                         ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.188) #13
  br label %cleanup

if.end8.i:                                        ; preds = %for.inc.8.i.if.end8.i_crit_edge, %for.inc.7.i.if.end8.i_crit_edge, %for.inc.6.i.if.end8.i_crit_edge, %for.inc.5.i.if.end8.i_crit_edge, %for.inc.4.i.if.end8.i_crit_edge, %for.inc.3.i.if.end8.i_crit_edge, %for.inc.2.i.if.end8.i_crit_edge, %for.inc.1.i.if.end8.i_crit_edge, %for.inc.i.if.end8.i_crit_edge, %for.cond.preheader.i.if.end8.i_crit_edge
  %i.060.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end8.i_crit_edge ], [ 4, %for.inc.i.if.end8.i_crit_edge ], [ 8, %for.inc.1.i.if.end8.i_crit_edge ], [ 12, %for.inc.2.i.if.end8.i_crit_edge ], [ 16, %for.inc.3.i.if.end8.i_crit_edge ], [ 20, %for.inc.4.i.if.end8.i_crit_edge ], [ 24, %for.inc.5.i.if.end8.i_crit_edge ], [ 28, %for.inc.6.i.if.end8.i_crit_edge ], [ 32, %for.inc.7.i.if.end8.i_crit_edge ], [ 36, %for.inc.8.i.if.end8.i_crit_edge ]
  %52 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %38, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 8229, i32 noundef 60, i32 noundef %i.060.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end8.i, %params_format.exit.i.if.end10.i_crit_edge
  %tdm_mode.i = getelementptr inbounds %struct.max98390_priv, ptr %38, i32 0, i32 3
  %54 = ptrtoint ptr %tdm_mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tdm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool11.not.i = icmp eq i32 %55, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.i:                                      ; preds = %if.end10.i
  %56 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %mul.i, label %do.end18.i [
    i32 32, label %if.then12.i.if.end21.i_crit_edge
    i32 48, label %cleanup.fold.split.i.i
    i32 64, label %cleanup.fold.split8.i.i
    i32 96, label %cleanup.fold.split9.i.i
    i32 128, label %cleanup.fold.split10.i.i
    i32 192, label %cleanup.fold.split11.i.i
    i32 256, label %cleanup.fold.split12.i.i
    i32 320, label %cleanup.fold.split13.i.i
    i32 384, label %cleanup.fold.split14.i.i
    i32 512, label %cleanup.fold.split15.i.i
  ]

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split.i.i:                           ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split8.i.i:                          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split9.i.i:                          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split10.i.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split11.i.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split12.i.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split13.i.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split14.i.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

cleanup.fold.split15.i.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

do.end18.i:                                       ; preds = %if.then12.i
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i43.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i43.i, label %for.inc.i.i50.i, label %do.end18.i.if.then.i.i47.i_crit_edge

do.end18.i.if.then.i.i47.i_crit_edge:             ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i47.i

if.then.i.i47.i:                                  ; preds = %for.inc.i.i50.i.if.then.i.i47.i_crit_edge, %do.end18.i.if.then.i.i47.i_crit_edge
  %i.09.lcssa.i.i44.i = phi i32 [ 0, %do.end18.i.if.then.i.i47.i_crit_edge ], [ 32, %for.inc.i.i50.i.if.then.i.i47.i_crit_edge ]
  %.lcssa.i.i45.i = phi i32 [ %60, %do.end18.i.if.then.i.i47.i_crit_edge ], [ %63, %for.inc.i.i50.i.if.then.i.i47.i_crit_edge ]
  %61 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i45.i, i1 true) #10, !range !427
  %add.i.i46.i = or i32 %61, %i.09.lcssa.i.i44.i
  br label %params_format.exit52.i

for.inc.i.i50.i:                                  ; preds = %do.end18.i
  %arrayidx.1.i.i48.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx.1.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.1.i.i48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.1.i.i49.i = icmp eq i32 %63, 0
  br i1 %tobool.not.1.i.i49.i, label %for.inc.i.i50.i.params_format.exit52.i_crit_edge, label %for.inc.i.i50.i.if.then.i.i47.i_crit_edge

for.inc.i.i50.i.if.then.i.i47.i_crit_edge:        ; preds = %for.inc.i.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i47.i

for.inc.i.i50.i.params_format.exit52.i_crit_edge: ; preds = %for.inc.i.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit52.i

params_format.exit52.i:                           ; preds = %for.inc.i.i50.i.params_format.exit52.i_crit_edge, %if.then.i.i47.i
  %retval.0.i.i51.i = phi i32 [ %add.i.i46.i, %if.then.i.i47.i ], [ 0, %for.inc.i.i50.i.params_format.exit52.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.181, i32 noundef %retval.0.i.i51.i) #13
  br label %cleanup

if.end21.i:                                       ; preds = %cleanup.fold.split15.i.i, %cleanup.fold.split14.i.i, %cleanup.fold.split13.i.i, %cleanup.fold.split12.i.i, %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split.i.i, %if.then12.i.if.end21.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 11, %cleanup.fold.split15.i.i ], [ 10, %cleanup.fold.split14.i.i ], [ 9, %cleanup.fold.split13.i.i ], [ 8, %cleanup.fold.split12.i.i ], [ 7, %cleanup.fold.split11.i.i ], [ 6, %cleanup.fold.split10.i.i ], [ 5, %cleanup.fold.split9.i.i ], [ 4, %cleanup.fold.split8.i.i ], [ 3, %cleanup.fold.split.i.i ], [ 2, %if.then12.i.if.end21.i_crit_edge ]
  %64 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %38, align 4
  %call.i53.i = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 8230, i32 noundef 15, i32 noundef %retval.0.i.ph.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %params_format.exit52.i, %if.end10.i.cleanup_crit_edge, %do.end.i, %do.end29, %params_format.exit59
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -22, %params_format.exit59 ], [ -22, %params_format.exit52.i ], [ -22, %do.end.i ], [ 0, %if.end21.i ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98390_suspend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98390_suspend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98390_suspend.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.192) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98390_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98390_resume.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98390_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98390_resume.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348, !350, !352, !354, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !384, !385, !386, !388, !389, !391, !392, !393, !395, !397, !398, !399, !400, !402, !403, !405, !407, !409, !410, !411, !413, !414}
!llvm.module.flags = !{!416, !417, !418, !419, !420, !421, !422, !423}
!llvm.ident = !{!424}

!0 = !{ptr @__initcall__kmod_snd_soc_max98390__300_1128_max98390_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_max98390__300_1128_max98390_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98390.c", i32 1128, i32 1}
!2 = !{ptr @__exitcall_max98390_i2c_driver_exit, !1, !"__exitcall_max98390_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description301, !4, !"__UNIQUE_ID_description301", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/max98390.c", i32 1130, i32 1}
!5 = !{ptr @__UNIQUE_ID_author302, !6, !"__UNIQUE_ID_author302", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/max98390.c", i32 1131, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/max98390.c", i32 1132, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98390.c", i32 1119, i32 11}
!12 = !{ptr @max98390_i2c_driver, !13, !"max98390_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/max98390.c", i32 1117, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/max98390.c", i32 1030, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max98390_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max98390_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/max98390.c", i32 1041, i32 44}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/max98390.c", i32 1044, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max98390_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @max98390_i2c_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/max98390.c", i32 1047, i32 44}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/max98390.c", i32 1050, i32 3}
!33 = !{ptr @max98390_i2c_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max98390_i2c_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/max98390.c", i32 1054, i32 2}
!37 = !{ptr @max98390_i2c_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max98390_i2c_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/max98390.c", i32 1059, i32 47}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/max98390.c", i32 1062, i32 30}
!43 = !{ptr @max98390_i2c_probe._key, !44, !"_key", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/max98390.c", i32 1068, i32 21}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/max98390.c", i32 1071, i32 3}
!48 = !{ptr @max98390_i2c_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @max98390_i2c_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/max98390.c", i32 1080, i32 3}
!52 = !{ptr @max98390_i2c_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @max98390_i2c_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/max98390.c", i32 1085, i32 2}
!56 = !{ptr @max98390_i2c_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @max98390_i2c_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/max98390.c", i32 1006, i32 37}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/max98390.c", i32 1011, i32 37}
!62 = !{ptr @max98390_regmap, !63, !"max98390_regmap", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/max98390.c", i32 989, i32 35}
!64 = !{ptr @max98390_reg_defaults, !65, !"max98390_reg_defaults", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/max98390.c", i32 27, i32 27}
!66 = !{ptr @soc_codec_dev_max98390, !67, !"soc_codec_dev_max98390", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/max98390.c", i32 975, i32 46}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/max98390.c", i32 647, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/max98390.c", i32 650, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/max98390.c", i32 653, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/max98390.c", i32 655, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/max98390.c", i32 657, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/max98390.c", i32 659, i32 2}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/max98390.c", i32 660, i32 2}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/max98390.c", i32 661, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/max98390.c", i32 663, i32 2}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/max98390.c", i32 665, i32 2}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/max98390.c", i32 667, i32 2}
!90 = !{ptr @max98390_snd_controls, !91, !"max98390_snd_controls", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/max98390.c", i32 646, i32 38}
!92 = !{ptr @max98390_digital_tlv, !93, !"max98390_digital_tlv", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/max98390.c", i32 519, i32 8}
!94 = !{ptr @max98390_spk_tlv, !95, !"max98390_spk_tlv", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/max98390.c", i32 518, i32 8}
!96 = !{ptr @max98390_boost_voltage, !97, !"max98390_boost_voltage", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/max98390.c", i32 514, i32 8}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 10}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 20}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 29}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 39}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 45}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 55}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/max98390.c", i32 508, i32 64}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 2}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 10}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 20}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 29}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 39}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 45}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 55}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/max98390.c", i32 509, i32 64}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 2}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 10}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 20}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 29}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 39}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 45}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 55}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/max98390.c", i32 510, i32 64}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/max98390.c", i32 511, i32 2}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/max98390.c", i32 511, i32 10}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/max98390.c", i32 511, i32 20}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/max98390.c", i32 511, i32 29}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/max98390.c", i32 511, i32 39}
!156 = !{ptr @max98390_boost_voltage_text, !157, !"max98390_boost_voltage_text", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/max98390.c", i32 507, i32 27}
!158 = !{ptr @max98390_current_limit, !159, !"max98390_current_limit", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/max98390.c", i32 533, i32 8}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 2}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 11}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 20}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 29}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 38}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 47}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 56}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/max98390.c", i32 522, i32 65}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 2}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 11}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 20}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 29}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 38}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 47}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 56}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/max98390.c", i32 523, i32 65}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 2}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 11}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 20}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 29}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 38}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 47}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 56}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/max98390.c", i32 524, i32 65}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 11}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 20}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 29}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 38}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 47}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 56}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/max98390.c", i32 525, i32 65}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 2}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 11}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 20}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 29}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 38}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 47}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 56}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/max98390.c", i32 526, i32 65}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 2}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 11}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 20}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 29}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 38}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 47}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 56}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/max98390.c", i32 527, i32 65}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 2}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 11}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 20}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 29}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 38}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 47}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 56}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/max98390.c", i32 528, i32 65}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 2}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 11}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 20}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 29}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 38}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 47}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 56}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/max98390.c", i32 529, i32 65}
!288 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/max98390.c", i32 530, i32 2}
!290 = !{ptr @max98390_current_limit_text, !291, !"max98390_current_limit_text", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/max98390.c", i32 521, i32 27}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/max98390.c", i32 607, i32 2}
!294 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.147, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @max98390_adaptive_rdc_put._entry, !293, !"_entry", i1 false, i1 false}
!297 = !{ptr @max98390_adaptive_rdc_put._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.148, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/max98390.c", i32 847, i32 2}
!300 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @max98390_dsm_calibrate._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @max98390_dsm_calibrate._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.150, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/max98390.c", i32 680, i32 2}
!305 = !{ptr @.str.151, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/max98390.c", i32 683, i32 2}
!308 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/max98390.c", i32 685, i32 2}
!310 = !{ptr @max98390_dapm_widgets, !311, !"max98390_dapm_widgets", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/max98390.c", i32 679, i32 41}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/max98390.c", i32 677, i32 2}
!314 = !{ptr @max98390_dai_controls, !315, !"max98390_dai_controls", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/max98390.c", i32 676, i32 38}
!316 = !{ptr @dai_sel_enum, !317, !"dai_sel_enum", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/max98390.c", i32 671, i32 30}
!318 = !{ptr @.str.156, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/max98390.c", i32 505, i32 2}
!320 = !{ptr @.str.157, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/max98390.c", i32 505, i32 10}
!322 = !{ptr @.str.158, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/max98390.c", i32 505, i32 19}
!324 = !{ptr @max98390_switch_text, !325, !"max98390_switch_text", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/max98390.c", i32 504, i32 27}
!326 = !{ptr @max98390_audio_map, !327, !"max98390_audio_map", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/max98390.c", i32 688, i32 40}
!328 = distinct !{null, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/max98390.c", i32 771, i32 5}
!330 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/max98390.c", i32 773, i32 22}
!332 = !{ptr @.str.161, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/max98390.c", i32 776, i32 40}
!334 = !{ptr @.str.162, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/max98390.c", i32 783, i32 32}
!336 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/max98390.c", i32 790, i32 2}
!338 = !{ptr @.str.164, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.165, !337, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @max98390_dsm_init.__UNIQUE_ID_ddebug297, !337, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!341 = !{ptr @.str.166, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/max98390.c", i32 794, i32 3}
!343 = !{ptr @max98390_dsm_init._entry, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @max98390_dsm_init._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @max98390_dsm_init._entry.167, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/max98390.c", i32 805, i32 3}
!347 = !{ptr @max98390_dsm_init._entry_ptr.168, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.169, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/max98390.c", i32 735, i32 11}
!350 = !{ptr @.str.170, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/max98390.c", i32 744, i32 19}
!352 = !{ptr @max98390_dai, !353, !"max98390_dai", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/max98390.c", i32 733, i32 34}
!354 = !{ptr @max98390_dai_ops, !355, !"max98390_dai_ops", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/max98390.c", i32 468, i32 37}
!356 = !{ptr @.str.171, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/max98390.c", i32 175, i32 2}
!358 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @max98390_dai_set_fmt.__UNIQUE_ID_ddebug294, !357, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!360 = !{ptr @.str.173, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/max98390.c", i32 186, i32 3}
!362 = !{ptr @max98390_dai_set_fmt._entry, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @max98390_dai_set_fmt._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.175, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/max98390.c", i32 202, i32 3}
!366 = !{ptr @max98390_dai_set_fmt._entry.174, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @max98390_dai_set_fmt._entry_ptr.176, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.177, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/max98390.c", i32 401, i32 2}
!370 = !{ptr @.str.178, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @max98390_dai_tdm_slot.__UNIQUE_ID_ddebug296, !369, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!372 = !{ptr @.str.179, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/max98390.c", i32 407, i32 3}
!374 = !{ptr @max98390_dai_tdm_slot._entry, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @max98390_dai_tdm_slot._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.181, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/max98390.c", i32 429, i32 3}
!378 = !{ptr @max98390_dai_tdm_slot._entry.180, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @max98390_dai_tdm_slot._entry_ptr.182, !377, !"_entry_ptr", i1 false, i1 false}
!380 = distinct !{null, !381, !"bclk_sel_table", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/max98390.c", i32 241, i32 13}
!382 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/max98390.c", i32 327, i32 3}
!384 = !{ptr @max98390_dai_hw_params._entry, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @max98390_dai_hw_params._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.184, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/max98390.c", i32 336, i32 2}
!388 = !{ptr @max98390_dai_hw_params.__UNIQUE_ID_ddebug295, !387, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!389 = !{ptr @.str.186, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/max98390.c", i32 369, i32 3}
!391 = !{ptr @max98390_dai_hw_params._entry.185, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @max98390_dai_hw_params._entry_ptr.187, !390, !"_entry_ptr", i1 false, i1 false}
!393 = distinct !{null, !394, !"rate_table", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/max98390.c", i32 258, i32 13}
!395 = !{ptr @.str.188, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/max98390.c", i32 276, i32 4}
!397 = !{ptr @.str.189, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @max98390_set_clock._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @max98390_set_clock._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @max98390_set_clock._entry.190, !401, !"_entry", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/max98390.c", i32 290, i32 4}
!402 = !{ptr @max98390_set_clock._entry_ptr.191, !401, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @max98390_of_match, !404, !"max98390_of_match", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/max98390.c", i32 1102, i32 34}
!405 = !{ptr @max98390_pm, !406, !"max98390_pm", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/max98390.c", i32 971, i32 32}
!407 = !{ptr @.str.192, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/max98390.c", i32 950, i32 2}
!409 = !{ptr @.str.193, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @max98390_suspend.__UNIQUE_ID_ddebug298, !408, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!411 = !{ptr @.str.194, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/max98390.c", i32 962, i32 2}
!413 = !{ptr @max98390_resume.__UNIQUE_ID_ddebug299, !412, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!414 = !{ptr @max98390_i2c_id, !415, !"max98390_i2c_id", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/max98390.c", i32 1094, i32 35}
!416 = !{i32 1, !"wchar_size", i32 2}
!417 = !{i32 1, !"min_enum_size", i32 4}
!418 = !{i32 8, !"branch-target-enforcement", i32 0}
!419 = !{i32 8, !"sign-return-address", i32 0}
!420 = !{i32 8, !"sign-return-address-all", i32 0}
!421 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!422 = !{i32 7, !"uwtable", i32 1}
!423 = !{i32 7, !"frame-pointer", i32 2}
!424 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!425 = !{!"auto-init"}
!426 = !{i64 2148978296, i64 2148978301, i64 2148978314, i64 2148978358, i64 2148978392, i64 2148978413}
!427 = !{i32 0, i32 33}
