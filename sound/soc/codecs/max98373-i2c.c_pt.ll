; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98373-i2c.c_pt.bc'
source_filename = "../sound/soc/codecs/max98373-i2c.c"
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
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
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
%struct.max98373_priv = type { ptr, i32, i32, i32, i32, i8, i32, i8, ptr, i32, ptr, i8, i8, i32, i32 }
%struct.max98373_cache = type { i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_max98373_i2c__297_629_max98373_i2c_driver_init6 = internal global ptr @max98373_i2c_driver_init, section ".initcall6.init", align 4
@max98373_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98373_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98373_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_pm, ptr null, ptr null }, ptr @max98373_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98373_i2c_driver_exit = internal global ptr @max98373_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [58 x i8] c"snd_soc_max98373_i2c.description=ALSA SoC MAX98373 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [69 x i8] c"snd_soc_max98373_i2c.author=Ryan Lee <ryans.lee@maximintegrated.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [64 x i8] c"snd_soc_max98373_i2c.file=sound/soc/codecs/snd-soc-max98373-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [33 x i8] c"snd_soc_max98373_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98373\00", [23 x i8] zeroinitializer }, align 32
@max98373_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98373\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max98373_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max98373_suspend, ptr @max98373_resume, ptr @max98373_suspend, ptr @max98373_resume, ptr @max98373_suspend, ptr @max98373_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max98373_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98373\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"maxim,interleave_mode\00", [42 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98373_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr @max98373_readable_register, ptr @max98373_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8703, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_reg, i32 92, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"max98373_i2c:542:(&max98373_regmap)->lock\00", [54 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 546, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98373_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/codecs/max98373-i2c.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry_ptr = internal global ptr @max98373_i2c_probe._entry, section ".printk_index", align 4
@max98373_i2c_cache_reg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8276, i32 8277, i32 8374], [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MAX98373_RESET\00", [17 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 567, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to request gpio %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry_ptr.11 = internal global ptr @max98373_i2c_probe._entry.9, section ".printk_index", align 4
@max98373_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 581, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read: 0x%02X\0A\00", [40 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry_ptr.14 = internal global ptr @max98373_i2c_probe._entry.12, section ".printk_index", align 4
@max98373_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 584, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAX98373 revisionID: 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry_ptr.18 = internal global ptr @max98373_i2c_probe._entry.15, section ".printk_index", align 4
@soc_codec_dev_max98373 = external dso_local constant %struct.snd_soc_component_driver, align 4
@max98373_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.22, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98373_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.23, i64 1092, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.24, i64 1092, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 590, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register codec: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max98373_i2c_probe._entry_ptr.21 = internal global ptr @max98373_i2c_probe._entry.19, section ".printk_index", align 4
@max98373_reg = internal global { [92 x %struct.reg_default], [160 x i8] } { [92 x %struct.reg_default] [%struct.reg_default { i32 8192, i32 0 }, %struct.reg_default { i32 8193, i32 0 }, %struct.reg_default { i32 8194, i32 0 }, %struct.reg_default { i32 8195, i32 0 }, %struct.reg_default { i32 8196, i32 0 }, %struct.reg_default { i32 8197, i32 0 }, %struct.reg_default { i32 8198, i32 0 }, %struct.reg_default { i32 8199, i32 0 }, %struct.reg_default { i32 8200, i32 0 }, %struct.reg_default { i32 8201, i32 0 }, %struct.reg_default { i32 8202, i32 0 }, %struct.reg_default { i32 8203, i32 0 }, %struct.reg_default { i32 8204, i32 0 }, %struct.reg_default { i32 8205, i32 0 }, %struct.reg_default { i32 8206, i32 0 }, %struct.reg_default { i32 8207, i32 0 }, %struct.reg_default { i32 8208, i32 0 }, %struct.reg_default { i32 8212, i32 16 }, %struct.reg_default { i32 8213, i32 39 }, %struct.reg_default { i32 8214, i32 1 }, %struct.reg_default { i32 8215, i32 192 }, %struct.reg_default { i32 8216, i32 0 }, %struct.reg_default { i32 8222, i32 85 }, %struct.reg_default { i32 8224, i32 254 }, %struct.reg_default { i32 8225, i32 255 }, %struct.reg_default { i32 8226, i32 0 }, %struct.reg_default { i32 8227, i32 0 }, %struct.reg_default { i32 8228, i32 192 }, %struct.reg_default { i32 8229, i32 0 }, %struct.reg_default { i32 8230, i32 4 }, %struct.reg_default { i32 8231, i32 8 }, %struct.reg_default { i32 8232, i32 136 }, %struct.reg_default { i32 8233, i32 0 }, %struct.reg_default { i32 8234, i32 0 }, %struct.reg_default { i32 8235, i32 0 }, %struct.reg_default { i32 8236, i32 0 }, %struct.reg_default { i32 8238, i32 0 }, %struct.reg_default { i32 8239, i32 0 }, %struct.reg_default { i32 8240, i32 255 }, %struct.reg_default { i32 8241, i32 255 }, %struct.reg_default { i32 8242, i32 48 }, %struct.reg_default { i32 8244, i32 0 }, %struct.reg_default { i32 8245, i32 0 }, %struct.reg_default { i32 8246, i32 5 }, %struct.reg_default { i32 8253, i32 0 }, %struct.reg_default { i32 8254, i32 8 }, %struct.reg_default { i32 8255, i32 2 }, %struct.reg_default { i32 8256, i32 0 }, %struct.reg_default { i32 8257, i32 3 }, %struct.reg_default { i32 8258, i32 0 }, %struct.reg_default { i32 8259, i32 0 }, %struct.reg_default { i32 8262, i32 4 }, %struct.reg_default { i32 8263, i32 0 }, %struct.reg_default { i32 8273, i32 0 }, %struct.reg_default { i32 8274, i32 0 }, %struct.reg_default { i32 8275, i32 0 }, %struct.reg_default { i32 8276, i32 0 }, %struct.reg_default { i32 8277, i32 0 }, %struct.reg_default { i32 8278, i32 0 }, %struct.reg_default { i32 8336, i32 0 }, %struct.reg_default { i32 8337, i32 0 }, %struct.reg_default { i32 8338, i32 0 }, %struct.reg_default { i32 8343, i32 0 }, %struct.reg_default { i32 8344, i32 0 }, %struct.reg_default { i32 8345, i32 0 }, %struct.reg_default { i32 8346, i32 0 }, %struct.reg_default { i32 8347, i32 0 }, %struct.reg_default { i32 8360, i32 0 }, %struct.reg_default { i32 8361, i32 0 }, %struct.reg_default { i32 8362, i32 0 }, %struct.reg_default { i32 8363, i32 0 }, %struct.reg_default { i32 8364, i32 0 }, %struct.reg_default { i32 8365, i32 0 }, %struct.reg_default { i32 8366, i32 0 }, %struct.reg_default { i32 8367, i32 0 }, %struct.reg_default { i32 8368, i32 0 }, %struct.reg_default { i32 8369, i32 0 }, %struct.reg_default { i32 8370, i32 0 }, %struct.reg_default { i32 8371, i32 0 }, %struct.reg_default { i32 8372, i32 0 }, %struct.reg_default { i32 8373, i32 0 }, %struct.reg_default { i32 8374, i32 0 }, %struct.reg_default { i32 8401, i32 1 }, %struct.reg_default { i32 8402, i32 2 }, %struct.reg_default { i32 8403, i32 3 }, %struct.reg_default { i32 8404, i32 0 }, %struct.reg_default { i32 8416, i32 0 }, %struct.reg_default { i32 8417, i32 0 }, %struct.reg_default { i32 8418, i32 0 }, %struct.reg_default { i32 8446, i32 0 }, %struct.reg_default { i32 8447, i32 0 }, %struct.reg_default { i32 8703, i32 66 }], [160 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max98373-aif1\00", [18 x i8] zeroinitializer }, align 32
@max98373_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @max98373_dai_set_fmt, ptr null, ptr @max98373_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@max98373_dai_set_fmt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_max98373_i2c\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98373_dai_set_fmt\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: fmt 0x%08X\0A\00", [16 x i8] zeroinitializer }, align 32
@max98373_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAI invert mode unsupported\0A\00", [35 x i8] zeroinitializer }, align 32
@max98373_dai_set_fmt._entry_ptr = internal global ptr @max98373_dai_set_fmt._entry, section ".printk_index", align 4
@max98373_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BCLK %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98373_dai_tdm_slot\00", [42 x i8] zeroinitializer }, align 32
@max98373_dai_tdm_slot._entry_ptr = internal global ptr @max98373_dai_tdm_slot._entry, section ".printk_index", align 4
@max98373_dai_tdm_slot._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.5, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"format unsupported %d\0A\00", [41 x i8] zeroinitializer }, align 32
@max98373_dai_tdm_slot._entry_ptr.33 = internal global ptr @max98373_dai_tdm_slot._entry.31, section ".printk_index", align 4
@max98373_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.34, ptr @.str.5, i32 237, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max98373_dai_hw_params\00", [41 x i8] zeroinitializer }, align 32
@max98373_dai_hw_params._entry_ptr = internal global ptr @max98373_dai_hw_params._entry, section ".printk_index", align 4
@max98373_dai_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"format supported %d\00", [44 x i8] zeroinitializer }, align 32
@max98373_dai_hw_params._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.5, i32 287, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rate %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@max98373_dai_hw_params._entry_ptr.38 = internal global ptr @max98373_dai_hw_params._entry.36, section ".printk_index", align 4
@max98373_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.39, ptr @.str.5, i32 203, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98373_set_clock\00", [45 x i8] zeroinitializer }, align 32
@max98373_set_clock._entry_ptr = internal global ptr @max98373_set_clock._entry, section ".printk_index", align 4
@switch.table.max98373_dai_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 8, i32 32, i32 24], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [93 x i64] [i64 91, i64 32, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 8203, i64 8204, i64 8208, i64 8212, i64 8213, i64 8214, i64 8215, i64 8216, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227, i64 8228, i64 8229, i64 8230, i64 8231, i64 8232, i64 8233, i64 8234, i64 8235, i64 8236, i64 8237, i64 8238, i64 8239, i64 8240, i64 8241, i64 8242, i64 8243, i64 8244, i64 8245, i64 8246, i64 8253, i64 8254, i64 8255, i64 8256, i64 8257, i64 8258, i64 8259, i64 8262, i64 8263, i64 8273, i64 8274, i64 8275, i64 8276, i64 8277, i64 8278, i64 8336, i64 8337, i64 8338, i64 8343, i64 8344, i64 8345, i64 8346, i64 8347, i64 8360, i64 8361, i64 8362, i64 8363, i64 8364, i64 8365, i64 8366, i64 8367, i64 8368, i64 8369, i64 8370, i64 8371, i64 8373, i64 8374, i64 8401, i64 8402, i64 8403, i64 8404, i64 8416, i64 8417, i64 8418, i64 8446, i64 8447, i64 8703]
@__sancov_gen_cov_switch_values.40 = internal global [18 x i64] [i64 16, i64 32, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8254, i64 8276, i64 8277, i64 8374, i64 8447, i64 8703]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.42 = internal global [12 x i64] [i64 10, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 320, i64 384, i64 512]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.46 = internal global [12 x i64] [i64 10, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 320, i64 384, i64 512]
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"max98373_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 618, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 620, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"max98373_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 603, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"max98373_pm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 504, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"max98373_i2c_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 595, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 536, i32 43 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"max98373_regmap\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 508, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 542, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 545, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"max98373_i2c_cache_reg\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 22, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 564, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 566, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 580, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 584, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"max98373_dai\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 457, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 590, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"max98373_reg\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 28, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 459, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"max98373_dai_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 404, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 468, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 461, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 130, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 139, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 338, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 360, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 236, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 247, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 286, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [35 x i8] c"../sound/soc/codecs/max98373-i2c.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 202, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [34 x i8] c"switch.table.max98373_dai_set_fmt\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_max98373_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98373_i2c__297_629_max98373_i2c_driver_init6, ptr @max98373_dai_hw_params._entry, ptr @max98373_dai_hw_params._entry.36, ptr @max98373_dai_hw_params._entry_ptr, ptr @max98373_dai_hw_params._entry_ptr.38, ptr @max98373_dai_set_fmt._entry, ptr @max98373_dai_set_fmt._entry_ptr, ptr @max98373_dai_tdm_slot._entry, ptr @max98373_dai_tdm_slot._entry.31, ptr @max98373_dai_tdm_slot._entry_ptr, ptr @max98373_dai_tdm_slot._entry_ptr.33, ptr @max98373_i2c_driver_exit, ptr @max98373_i2c_probe._entry, ptr @max98373_i2c_probe._entry.12, ptr @max98373_i2c_probe._entry.15, ptr @max98373_i2c_probe._entry.19, ptr @max98373_i2c_probe._entry.9, ptr @max98373_i2c_probe._entry_ptr, ptr @max98373_i2c_probe._entry_ptr.11, ptr @max98373_i2c_probe._entry_ptr.14, ptr @max98373_i2c_probe._entry_ptr.18, ptr @max98373_i2c_probe._entry_ptr.21, ptr @max98373_set_clock._entry, ptr @max98373_set_clock._entry_ptr, ptr @max98373_i2c_driver, ptr @.str, ptr @max98373_of_match, ptr @max98373_pm, ptr @max98373_i2c_id, ptr @.str.1, ptr @max98373_i2c_probe._key, ptr @max98373_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @max98373_i2c_cache_reg, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @max98373_dai, ptr @.str.20, ptr @max98373_reg, ptr @.str.22, ptr @max98373_dai_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @switch.table.max98373_dai_set_fmt], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_cache_reg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_reg to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_tdm_slot._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_hw_params._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max98373_dai_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98373_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98373_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max98373_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i106 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %spec.select = zext i1 %call.i106 to i8
  %2 = getelementptr inbounds %struct.max98373_priv, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 4
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max98373_regmap, ptr noundef nonnull @max98373_i2c_probe._key, ptr noundef nonnull @.str.2) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %5) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %cache_num = getelementptr inbounds %struct.max98373_priv, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %cache_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %cache_num, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %cache = getelementptr inbounds %struct.max98373_priv, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %cache, align 4
  %8 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp110 = icmp sgt i32 %9, 0
  br i1 %cmp110, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.0111 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @max98373_i2c_cache_reg, i32 0, i32 %i.0111
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 4
  %arrayidx19 = getelementptr %struct.max98373_cache, ptr %13, i32 %i.0111
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %i.0111, 1
  %15 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cache_num, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call void @max98373_slot_config(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  %reset_gpio = getelementptr inbounds %struct.max98373_priv, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %18)
  %19 = icmp ult i32 %18, 2048
  br i1 %19, label %if.then23, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then23:                                        ; preds = %for.end
  %call26 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %20 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reset_gpio, align 4
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef %21) #10
  br label %cleanup

if.end34:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call.i107 = tail call ptr @gpio_to_desc(i32 noundef %21) #7
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i107, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 50) #7
  %22 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reset_gpio, align 4
  %call.i108 = tail call ptr @gpio_to_desc(i32 noundef %23) #7
  %call1.i109 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i108, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 20) #7
  br label %if.end39

if.end39:                                         ; preds = %if.end34, %for.end.if.end39_crit_edge
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call41 = call i32 @regmap_read(ptr noundef %25, i32 noundef 8703, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %do.end51

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 8703) #10
  br label %cleanup

do.end51:                                         ; preds = %if.end39
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %27) #10
  %call54 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_max98373, ptr noundef nonnull @max98373_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %do.end51.cleanup_crit_edge

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end59:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call54) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end51.cleanup_crit_edge, %do.end46, %do.end31, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ -22, %do.end31 ], [ %call41, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %call54, %do.end59 ], [ %call54, %do.end51.cleanup_crit_edge ]
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
declare dso_local void @max98373_slot_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98373_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8192, label %entry.return_crit_edge
    i32 8208, label %entry.return_crit_edge16
    i32 8703, label %entry.return_crit_edge17
    i32 8446, label %entry.return_crit_edge18
    i32 8447, label %entry.return_crit_edge19
    i32 8416, label %entry.return_crit_edge20
    i32 8417, label %entry.return_crit_edge21
    i32 8418, label %entry.return_crit_edge22
    i32 8401, label %entry.return_crit_edge23
    i32 8402, label %entry.return_crit_edge24
    i32 8403, label %entry.return_crit_edge25
    i32 8404, label %entry.return_crit_edge26
    i32 8373, label %entry.return_crit_edge27
    i32 8374, label %entry.return_crit_edge28
    i32 8360, label %entry.return_crit_edge29
    i32 8361, label %entry.return_crit_edge30
    i32 8362, label %entry.return_crit_edge31
    i32 8363, label %entry.return_crit_edge32
    i32 8364, label %entry.return_crit_edge33
    i32 8365, label %entry.return_crit_edge34
    i32 8366, label %entry.return_crit_edge35
    i32 8367, label %entry.return_crit_edge36
    i32 8368, label %entry.return_crit_edge37
    i32 8369, label %entry.return_crit_edge38
    i32 8370, label %entry.return_crit_edge39
    i32 8371, label %entry.return_crit_edge40
    i32 8343, label %entry.return_crit_edge41
    i32 8344, label %entry.return_crit_edge42
    i32 8345, label %entry.return_crit_edge43
    i32 8346, label %entry.return_crit_edge44
    i32 8347, label %entry.return_crit_edge45
    i32 8336, label %entry.return_crit_edge46
    i32 8337, label %entry.return_crit_edge47
    i32 8338, label %entry.return_crit_edge48
    i32 8273, label %entry.return_crit_edge49
    i32 8274, label %entry.return_crit_edge50
    i32 8275, label %entry.return_crit_edge51
    i32 8276, label %entry.return_crit_edge52
    i32 8277, label %entry.return_crit_edge53
    i32 8278, label %entry.return_crit_edge54
    i32 8262, label %entry.return_crit_edge55
    i32 8263, label %entry.return_crit_edge56
    i32 8253, label %entry.return_crit_edge57
    i32 8254, label %entry.return_crit_edge58
    i32 8255, label %entry.return_crit_edge59
    i32 8256, label %entry.return_crit_edge60
    i32 8257, label %entry.return_crit_edge61
    i32 8258, label %entry.return_crit_edge62
    i32 8259, label %entry.return_crit_edge63
    i32 8222, label %entry.return_crit_edge64
    i32 8223, label %entry.return_crit_edge65
    i32 8224, label %entry.return_crit_edge66
    i32 8225, label %entry.return_crit_edge67
    i32 8226, label %entry.return_crit_edge68
    i32 8227, label %entry.return_crit_edge69
    i32 8228, label %entry.return_crit_edge70
    i32 8229, label %entry.return_crit_edge71
    i32 8230, label %entry.return_crit_edge72
    i32 8231, label %entry.return_crit_edge73
    i32 8232, label %entry.return_crit_edge74
    i32 8233, label %entry.return_crit_edge75
    i32 8234, label %entry.return_crit_edge76
    i32 8235, label %entry.return_crit_edge77
    i32 8236, label %entry.return_crit_edge78
    i32 8237, label %entry.return_crit_edge79
    i32 8238, label %entry.return_crit_edge80
    i32 8239, label %entry.return_crit_edge81
    i32 8240, label %entry.return_crit_edge82
    i32 8241, label %entry.return_crit_edge83
    i32 8242, label %entry.return_crit_edge84
    i32 8243, label %entry.return_crit_edge85
    i32 8244, label %entry.return_crit_edge86
    i32 8245, label %entry.return_crit_edge87
    i32 8246, label %entry.return_crit_edge88
    i32 8212, label %entry.return_crit_edge89
    i32 8213, label %entry.return_crit_edge90
    i32 8214, label %entry.return_crit_edge91
    i32 8215, label %entry.return_crit_edge92
    i32 8216, label %entry.return_crit_edge93
    i32 8193, label %entry.return_crit_edge94
    i32 8194, label %entry.return_crit_edge95
    i32 8195, label %entry.return_crit_edge96
    i32 8196, label %entry.return_crit_edge97
    i32 8197, label %entry.return_crit_edge98
    i32 8198, label %entry.return_crit_edge99
    i32 8199, label %entry.return_crit_edge100
    i32 8200, label %entry.return_crit_edge101
    i32 8201, label %entry.return_crit_edge102
    i32 8202, label %entry.return_crit_edge103
    i32 8203, label %entry.return_crit_edge104
    i32 8204, label %entry.return_crit_edge105
  ]

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98373_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %reg, label %sw.default [
    i32 8254, label %entry.return_crit_edge
    i32 8276, label %entry.return_crit_edge2
    i32 8277, label %entry.return_crit_edge3
    i32 8374, label %entry.return_crit_edge4
    i32 8447, label %entry.return_crit_edge5
    i32 8703, label %entry.return_crit_edge6
    i32 8192, label %entry.return_crit_edge7
    i32 8193, label %entry.return_crit_edge8
    i32 8194, label %entry.return_crit_edge9
    i32 8195, label %entry.return_crit_edge10
    i32 8196, label %entry.return_crit_edge11
    i32 8197, label %entry.return_crit_edge12
    i32 8198, label %entry.return_crit_edge13
    i32 8199, label %entry.return_crit_edge14
    i32 8200, label %entry.return_crit_edge15
    i32 8201, label %entry.return_crit_edge16
  ]

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_dai_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98373_dai_set_fmt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98373_dai_set_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98373_dai_set_fmt.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %fmt) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 3840
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and, label %do.end7 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 768, label %sw.bb
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %invert.0 = phi i32 [ 16, %sw.bb ], [ %and, %do.end.sw.epilog_crit_edge ]
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8230, i32 noundef 16, i32 noundef %invert.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %and10 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 5
  br i1 %13, label %switch.hole_check, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.max98373_dai_set_fmt, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8228, i32 noundef 56, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %switch.lookup ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %6 = or i32 %rx_mask, %tx_mask
  %7 = or i32 %6, %slots
  %8 = or i32 %7, %slot_width
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %spec.select = zext i1 %9 to i8
  %10 = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 4
  %mul = mul i32 %slot_width, %slots
  %12 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %mul, label %do.end [
    i32 32, label %entry.if.end11_crit_edge
    i32 48, label %cleanup.fold.split.i
    i32 64, label %cleanup.fold.split8.i
    i32 96, label %cleanup.fold.split9.i
    i32 128, label %cleanup.fold.split10.i
    i32 192, label %cleanup.fold.split11.i
    i32 256, label %cleanup.fold.split12.i
    i32 384, label %cleanup.fold.split13.i
    i32 512, label %cleanup.fold.split14.i
    i32 320, label %cleanup.fold.split15.i
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.29, i32 noundef %mul) #10
  br label %cleanup

if.end11:                                         ; preds = %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end11_crit_edge
  %retval.0.i.ph = phi i32 [ 11, %cleanup.fold.split15.i ], [ 10, %cleanup.fold.split14.i ], [ 9, %cleanup.fold.split13.i ], [ 8, %cleanup.fold.split12.i ], [ 7, %cleanup.fold.split11.i ], [ 6, %cleanup.fold.split10.i ], [ 5, %cleanup.fold.split9.i ], [ 4, %cleanup.fold.split8.i ], [ 3, %cleanup.fold.split.i ], [ 2, %entry.if.end11_crit_edge ]
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 8230, i32 noundef 15, i32 noundef %retval.0.i.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %slot_width, label %do.end17 [
    i32 16, label %if.end11.sw.epilog_crit_edge
    i32 24, label %sw.bb13
    i32 32, label %sw.bb14
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %slot_width) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %if.end11.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb14 ], [ 128, %sw.bb13 ], [ 64, %if.end11.sw.epilog_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 8228, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %slot_found.088 = phi i32 [ 0, %sw.epilog ], [ %slot_found.1, %for.inc.for.body_crit_edge ]
  %x.086 = phi i32 [ 0, %sw.epilog ], [ %inc36, %for.inc.for.body_crit_edge ]
  %mask.085 = phi i32 [ %rx_mask, %sw.epilog ], [ %shr, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.085, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.then23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_found.088)
  %cmp24 = icmp eq i32 %slot_found.088, 0
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  br i1 %cmp24, label %if.end31.thread, label %if.end31

if.end31.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8233, i32 noundef 15, i32 noundef %x.086, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc

if.end31:                                         ; preds = %if.then23
  %call30 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 8234, i32 noundef %x.086) #7
  %inc = add i32 %slot_found.088, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp32 = icmp sgt i32 %inc, 1
  br i1 %cmp32, label %if.end31.for.end_crit_edge, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end31.for.inc_crit_edge, %if.end31.thread, %for.body.for.inc_crit_edge
  %slot_found.1 = phi i32 [ 1, %if.end31.for.inc_crit_edge ], [ %slot_found.088, %for.body.for.inc_crit_edge ], [ 1, %if.end31.thread ]
  %inc36 = add nuw nsw i32 %x.086, 1
  %shr = lshr i32 %mask.085, 1
  %exitcond.not = icmp eq i32 %inc36, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %neg = xor i32 %tx_mask, -1
  %and38 = and i32 %neg, 255
  %call39 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 8224, i32 noundef %and38) #7
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %and42 = lshr i32 %neg, 8
  %shr43 = and i32 %and42, 255
  %call44 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8225, i32 noundef %shr43) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_dai_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.if.then.i.i_crit_edge ], [ %10, %for.inc.i.i.if.then.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !113
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #7
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call3, label %do.end [
    i32 16, label %params_format.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb4
    i32 32, label %sw.bb5
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i73 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i73, label %for.inc.i.i80, label %do.end.if.then.i.i77_crit_edge

do.end.if.then.i.i77_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i77

if.then.i.i77:                                    ; preds = %for.inc.i.i80.if.then.i.i77_crit_edge, %do.end.if.then.i.i77_crit_edge
  %i.09.lcssa.i.i74 = phi i32 [ 0, %do.end.if.then.i.i77_crit_edge ], [ 32, %for.inc.i.i80.if.then.i.i77_crit_edge ]
  %.lcssa.i.i75 = phi i32 [ %15, %do.end.if.then.i.i77_crit_edge ], [ %18, %for.inc.i.i80.if.then.i.i77_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i75, i1 true) #7, !range !113
  %add.i.i76 = or i32 %16, %i.09.lcssa.i.i74
  br label %params_format.exit82

for.inc.i.i80:                                    ; preds = %do.end
  %arrayidx.1.i.i78 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i79 = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i79, label %for.inc.i.i80.params_format.exit82_crit_edge, label %for.inc.i.i80.if.then.i.i77_crit_edge

for.inc.i.i80.if.then.i.i77_crit_edge:            ; preds = %for.inc.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i77

for.inc.i.i80.params_format.exit82_crit_edge:     ; preds = %for.inc.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit82

params_format.exit82:                             ; preds = %for.inc.i.i80.params_format.exit82_crit_edge, %if.then.i.i77
  %retval.0.i.i81 = phi i32 [ %add.i.i76, %if.then.i.i77 ], [ 0, %for.inc.i.i80.params_format.exit82_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.i81) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %params_format.exit.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb5 ], [ 128, %sw.bb4 ], [ 64, %params_format.exit.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i84 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i84, label %for.inc.i.i91, label %sw.epilog.if.then.i.i88_crit_edge

sw.epilog.if.then.i.i88_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i88

if.then.i.i88:                                    ; preds = %for.inc.i.i91.if.then.i.i88_crit_edge, %sw.epilog.if.then.i.i88_crit_edge
  %i.09.lcssa.i.i85 = phi i32 [ 0, %sw.epilog.if.then.i.i88_crit_edge ], [ 32, %for.inc.i.i91.if.then.i.i88_crit_edge ]
  %.lcssa.i.i86 = phi i32 [ %20, %sw.epilog.if.then.i.i88_crit_edge ], [ %23, %for.inc.i.i91.if.then.i.i88_crit_edge ]
  %21 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i86, i1 true) #7, !range !113
  %add.i.i87 = or i32 %21, %i.09.lcssa.i.i85
  br label %params_format.exit93

for.inc.i.i91:                                    ; preds = %sw.epilog
  %arrayidx.1.i.i89 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i89 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i.i90 = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i.i90, label %for.inc.i.i91.params_format.exit93_crit_edge, label %for.inc.i.i91.if.then.i.i88_crit_edge

for.inc.i.i91.if.then.i.i88_crit_edge:            ; preds = %for.inc.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i88

for.inc.i.i91.params_format.exit93_crit_edge:     ; preds = %for.inc.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit93

params_format.exit93:                             ; preds = %for.inc.i.i91.params_format.exit93_crit_edge, %if.then.i.i88
  %retval.0.i.i92 = phi i32 [ %add.i.i87, %if.then.i.i88 ], [ 0, %for.inc.i.i91.params_format.exit93_crit_edge ]
  %call8 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i92) #7
  %ch_size = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 6
  %24 = ptrtoint ptr %ch_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call8, ptr %ch_size, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 8228, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98373_dai_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98373_dai_hw_params, %if.then)) #7
          to label %do.end17 [label %if.then], !srcloc !112

if.then:                                          ; preds = %params_format.exit93
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i95 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i95, label %for.inc.i.i102, label %if.then.if.then.i.i99_crit_edge

if.then.if.then.i.i99_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i99

if.then.i.i99:                                    ; preds = %for.inc.i.i102.if.then.i.i99_crit_edge, %if.then.if.then.i.i99_crit_edge
  %i.09.lcssa.i.i96 = phi i32 [ 0, %if.then.if.then.i.i99_crit_edge ], [ 32, %for.inc.i.i102.if.then.i.i99_crit_edge ]
  %.lcssa.i.i97 = phi i32 [ %30, %if.then.if.then.i.i99_crit_edge ], [ %33, %for.inc.i.i102.if.then.i.i99_crit_edge ]
  %31 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i97, i1 true) #7, !range !113
  %add.i.i98 = or i32 %31, %i.09.lcssa.i.i96
  br label %params_format.exit104

for.inc.i.i102:                                   ; preds = %if.then
  %arrayidx.1.i.i100 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i100 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i101 = icmp eq i32 %33, 0
  br i1 %tobool.not.1.i.i101, label %for.inc.i.i102.params_format.exit104_crit_edge, label %for.inc.i.i102.if.then.i.i99_crit_edge

for.inc.i.i102.if.then.i.i99_crit_edge:           ; preds = %for.inc.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i99

for.inc.i.i102.params_format.exit104_crit_edge:   ; preds = %for.inc.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit104

params_format.exit104:                            ; preds = %for.inc.i.i102.params_format.exit104_crit_edge, %if.then.i.i99
  %retval.0.i.i103 = phi i32 [ %add.i.i98, %if.then.i.i99 ], [ 0, %for.inc.i.i102.params_format.exit104_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98373_dai_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %28, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i.i103) #7
  br label %do.end17

do.end17:                                         ; preds = %params_format.exit104, %params_format.exit93
  %arrayidx.i.i105 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i105, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %35, label %do.end33 [
    i32 8000, label %do.end17.sw.epilog36_crit_edge
    i32 11025, label %sw.bb20
    i32 12000, label %sw.bb21
    i32 16000, label %sw.bb22
    i32 22050, label %sw.bb23
    i32 24000, label %sw.bb24
    i32 32000, label %sw.bb25
    i32 44100, label %sw.bb26
    i32 48000, label %sw.bb27
    i32 88200, label %sw.bb28
    i32 96000, label %sw.bb29
  ]

do.end17.sw.epilog36_crit_edge:                   ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb20:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb21:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb22:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb23:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb24:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb25:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb26:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb27:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb28:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb29:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

do.end33:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.37, i32 noundef %35) #10
  br label %cleanup

sw.epilog36:                                      ; preds = %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %do.end17.sw.epilog36_crit_edge
  %cmp = phi i1 [ false, %sw.bb29 ], [ false, %sw.bb28 ], [ false, %sw.bb27 ], [ false, %sw.bb26 ], [ false, %sw.bb25 ], [ false, %sw.bb24 ], [ false, %sw.bb23 ], [ true, %sw.bb22 ], [ true, %sw.bb21 ], [ true, %sw.bb20 ], [ true, %do.end17.sw.epilog36_crit_edge ]
  %sampling_rate.0 = phi i32 [ 10, %sw.bb29 ], [ 9, %sw.bb28 ], [ 8, %sw.bb27 ], [ 7, %sw.bb26 ], [ 6, %sw.bb25 ], [ 5, %sw.bb24 ], [ 4, %sw.bb23 ], [ 3, %sw.bb22 ], [ 2, %sw.bb21 ], [ 1, %sw.bb20 ], [ 0, %do.end17.sw.epilog36_crit_edge ]
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 8231, i32 noundef 15, i32 noundef %sampling_rate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %shl = shl nuw nsw i32 %sampling_rate.0, 4
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 8232, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %interleave_mode = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 5
  %43 = ptrtoint ptr %interleave_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %interleave_mode, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool41.not = icmp eq i8 %44, 0
  %brmerge = or i1 %cmp, %tobool41.not
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %sub = add nsw i32 %sampling_rate.0, -3
  %sampling_rate.0.sink = select i1 %brmerge, i32 %sampling_rate.0, i32 %sub
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 8232, i32 noundef 15, i32 noundef %sampling_rate.0.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i, align 4
  %tdm_mode.i = getelementptr inbounds %struct.max98373_priv, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %tdm_mode.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tdm_mode.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog36.cleanup_crit_edge

sw.epilog36.cleanup_crit_edge:                    ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog36
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  %ch_size.i = getelementptr inbounds %struct.max98373_priv, ptr %50, i32 0, i32 6
  %55 = ptrtoint ptr %ch_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ch_size.i, align 4
  %mul.i = mul i32 %56, %54
  %57 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mul.i, label %do.end.i [
    i32 32, label %if.then.i.if.end.i_crit_edge
    i32 48, label %cleanup.fold.split.i.i
    i32 64, label %cleanup.fold.split8.i.i
    i32 96, label %cleanup.fold.split9.i.i
    i32 128, label %cleanup.fold.split10.i.i
    i32 192, label %cleanup.fold.split11.i.i
    i32 256, label %cleanup.fold.split12.i.i
    i32 384, label %cleanup.fold.split13.i.i
    i32 512, label %cleanup.fold.split14.i.i
    i32 320, label %cleanup.fold.split15.i.i
  ]

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split.i.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split8.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split9.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split10.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split11.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split12.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split13.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split14.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cleanup.fold.split15.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end.i.if.then.i.i.i_crit_edge

do.end.i.if.then.i.i.i_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end.i.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end.i.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %59, %do.end.i.if.then.i.i.i_crit_edge ], [ %62, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %60 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !113
  %add.i.i.i = or i32 %60, %i.09.lcssa.i.i.i
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %do.end.i
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.1.i.i.i = icmp eq i32 %62, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_format.exit.i_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit.i

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.i.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %cleanup.fold.split15.i.i, %cleanup.fold.split14.i.i, %cleanup.fold.split13.i.i, %cleanup.fold.split12.i.i, %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split.i.i, %if.then.i.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 11, %cleanup.fold.split15.i.i ], [ 10, %cleanup.fold.split14.i.i ], [ 9, %cleanup.fold.split13.i.i ], [ 8, %cleanup.fold.split12.i.i ], [ 7, %cleanup.fold.split11.i.i ], [ 6, %cleanup.fold.split10.i.i ], [ 5, %cleanup.fold.split9.i.i ], [ 4, %cleanup.fold.split8.i.i ], [ 3, %cleanup.fold.split.i.i ], [ 2, %if.then.i.if.end.i_crit_edge ]
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %50, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 8230, i32 noundef 15, i32 noundef %retval.0.i.ph.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %params_format.exit.i, %sw.epilog36.cleanup_crit_edge, %do.end33, %params_format.exit82
  %retval.0 = phi i32 [ -22, %do.end33 ], [ -22, %params_format.exit82 ], [ -22, %params_format.exit.i ], [ 0, %if.end.i ], [ 0, %sw.epilog36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cache_num = getelementptr inbounds %struct.max98373_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cache = getelementptr inbounds %struct.max98373_priv, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 4
  %arrayidx = getelementptr %struct.max98373_cache, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %val = getelementptr %struct.max98373_cache, ptr %7, i32 %i.015, i32 1
  %call3 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef %9, ptr noundef %val) #7
  %inc = add nuw nsw i32 %i.015, 1
  %10 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #7
  tail call void @max98373_reset(ptr noundef %1, ptr noundef %dev) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @max98373_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_snd_soc_max98373_i2c__297_629_max98373_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_max98373_i2c__297_629_max98373_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 629, i32 1}
!2 = !{ptr @__exitcall_max98373_i2c_driver_exit, !1, !"__exitcall_max98373_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 631, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 632, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 633, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 620, i32 11}
!12 = !{ptr @max98373_i2c_driver, !13, !"max98373_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 618, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 536, i32 43}
!16 = !{ptr @max98373_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 542, i32 21}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 545, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max98373_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @max98373_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 564, i32 6}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 566, i32 4}
!31 = !{ptr @max98373_i2c_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @max98373_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 580, i32 3}
!35 = !{ptr @max98373_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max98373_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 584, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @max98373_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @max98373_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 590, i32 3}
!44 = !{ptr @max98373_i2c_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @max98373_i2c_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @max98373_regmap, !47, !"max98373_regmap", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 508, i32 35}
!48 = !{ptr @max98373_reg, !49, !"max98373_reg", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 28, i32 27}
!50 = !{ptr @max98373_i2c_cache_reg, !51, !"max98373_i2c_cache_reg", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 22, i32 18}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 459, i32 11}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 468, i32 19}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 461, i32 19}
!58 = !{ptr @max98373_dai, !59, !"max98373_dai", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 457, i32 34}
!60 = !{ptr @max98373_dai_ops, !61, !"max98373_dai_ops", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 404, i32 37}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 130, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max98373_dai_set_fmt.__UNIQUE_ID_ddebug295, !63, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 139, i32 3}
!69 = !{ptr @max98373_dai_set_fmt._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @max98373_dai_set_fmt._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 338, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @max98373_dai_tdm_slot._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @max98373_dai_tdm_slot._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 360, i32 3}
!78 = !{ptr @max98373_dai_tdm_slot._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @max98373_dai_tdm_slot._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"bclk_sel_table", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 175, i32 18}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 236, i32 3}
!84 = !{ptr @max98373_dai_hw_params._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @max98373_dai_hw_params._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 247, i32 2}
!88 = !{ptr @max98373_dai_hw_params.__UNIQUE_ID_ddebug296, !87, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 286, i32 3}
!91 = !{ptr @max98373_dai_hw_params._entry.36, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @max98373_dai_hw_params._entry_ptr.38, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 202, i32 4}
!95 = !{ptr @max98373_set_clock._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @max98373_set_clock._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @max98373_of_match, !98, !"max98373_of_match", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 603, i32 34}
!99 = !{ptr @max98373_pm, !100, !"max98373_pm", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 504, i32 32}
!101 = !{ptr @max98373_i2c_id, !102, !"max98373_i2c_id", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/max98373-i2c.c", i32 595, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148963729, i64 2148963734, i64 2148963747, i64 2148963791, i64 2148963825, i64 2148963846}
!113 = !{i32 0, i32 33}
!114 = !{i8 0, i8 2}
