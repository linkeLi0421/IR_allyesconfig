; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tas6424.c_pt.bc'
source_filename = "../sound/soc/codecs/tas6424.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
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
%struct.tas6424_data = type { ptr, ptr, [3 x %struct.regulator_bulk_data], %struct.delayed_work, i32, i32, i32, i32, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tas6424__301_812_tas6424_i2c_driver_init6 = internal global ptr @tas6424_i2c_driver_init, section ".initcall6.init", align 4
@tas6424_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tas6424_i2c_probe, ptr @tas6424_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tas6424_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tas6424_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tas6424_i2c_driver_exit = internal global ptr @tas6424_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [62 x i8] c"snd_soc_tas6424.author=Andreas Dannenberg <dannenberg@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [52 x i8] c"snd_soc_tas6424.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [59 x i8] c"snd_soc_tas6424.description=TAS6424 Audio amplifier driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [54 x i8] c"snd_soc_tas6424.file=sound/soc/codecs/snd-soc-tas6424\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [31 x i8] c"snd_soc_tas6424.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tas6424\00", [24 x i8] zeroinitializer }, align 32
@tas6424_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas6424\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tas6424_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tas6424\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tas6424_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @tas6424_is_writable_reg, ptr null, ptr @tas6424_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 38, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas6424_reg_defaults, i32 20, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tas6424:700:(&tas6424_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 703, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas6424_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/tas6424.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr = internal global ptr @tas6424_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 719, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get standby GPIO: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr.11 = internal global ptr @tas6424_i2c_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 735, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get nmute GPIO: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr.15 = internal global ptr @tas6424_i2c_probe._entry.13, section ".printk_index", align 4
@tas6424_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr.18 = internal global ptr @tas6424_i2c_probe._entry.16, section ".printk_index", align 4
@tas6424_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 751, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr.21 = internal global ptr @tas6424_i2c_probe._entry.19, section ".printk_index", align 4
@tas6424_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 759, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr.24 = internal global ptr @tas6424_i2c_probe._entry.22, section ".printk_index", align 4
@tas6424_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&tas6424->fault_check_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&tas6424->fault_check_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@soc_codec_dev_tas6424 = internal global { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tas6424_snd_controls, i32 5, ptr @tas6424_dapm_widgets, i32 3, ptr @tas6424_audio_map, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas6424_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tas6424_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.150, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tas6424_speaker_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.134, i64 68, i32 1216, i32 0, i32 0, i32 1, i32 4, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register codec: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tas6424_i2c_probe._entry_ptr.30 = internal global ptr @tas6424_i2c_probe._entry.28, section ".printk_index", align 4
@tas6424_reg_defaults = internal constant { [20 x %struct.reg_default], [32 x i8] } { [20 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 50 }, %struct.reg_default { i32 2, i32 98 }, %struct.reg_default { i32 3, i32 4 }, %struct.reg_default { i32 4, i32 85 }, %struct.reg_default { i32 5, i32 207 }, %struct.reg_default { i32 6, i32 207 }, %struct.reg_default { i32 7, i32 207 }, %struct.reg_default { i32 8, i32 207 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 17 }, %struct.reg_default { i32 11, i32 17 }, %struct.reg_default { i32 20, i32 255 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 1 }, %struct.reg_default { i32 35, i32 20 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 64 }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pvdd\00", [27 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 413, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read CHANNEL_FAULT register: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tas6424_fault_check_work\00", [39 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr = internal global ptr @tas6424_fault_check_work._entry, section ".printk_index", align 4
@tas6424_fault_check_work._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 429, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"experienced a channel 1 overcurrent fault\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.39 = internal global ptr @tas6424_fault_check_work._entry.36, section ".printk_index", align 4
@tas6424_fault_check_work._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.4, i32 432, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"experienced a channel 2 overcurrent fault\0A\00", [53 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.42 = internal global ptr @tas6424_fault_check_work._entry.40, section ".printk_index", align 4
@tas6424_fault_check_work._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.4, i32 435, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"experienced a channel 3 overcurrent fault\0A\00", [53 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.45 = internal global ptr @tas6424_fault_check_work._entry.43, section ".printk_index", align 4
@tas6424_fault_check_work._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.4, i32 438, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"experienced a channel 4 overcurrent fault\0A\00", [53 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.48 = internal global ptr @tas6424_fault_check_work._entry.46, section ".printk_index", align 4
@tas6424_fault_check_work._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.35, ptr @.str.4, i32 441, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"experienced a channel 1 DC fault\0A\00", [62 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.51 = internal global ptr @tas6424_fault_check_work._entry.49, section ".printk_index", align 4
@tas6424_fault_check_work._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.35, ptr @.str.4, i32 444, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"experienced a channel 2 DC fault\0A\00", [62 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.54 = internal global ptr @tas6424_fault_check_work._entry.52, section ".printk_index", align 4
@tas6424_fault_check_work._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.35, ptr @.str.4, i32 447, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"experienced a channel 3 DC fault\0A\00", [62 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.57 = internal global ptr @tas6424_fault_check_work._entry.55, section ".printk_index", align 4
@tas6424_fault_check_work._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.35, ptr @.str.4, i32 450, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"experienced a channel 4 DC fault\0A\00", [62 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.60 = internal global ptr @tas6424_fault_check_work._entry.58, section ".printk_index", align 4
@tas6424_fault_check_work._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.35, ptr @.str.4, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read GLOB_FAULT1 register: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.63 = internal global ptr @tas6424_fault_check_work._entry.61, section ".printk_index", align 4
@tas6424_fault_check_work._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.35, ptr @.str.4, i32 480, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"experienced a PVDD overvoltage fault\0A\00", [58 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.66 = internal global ptr @tas6424_fault_check_work._entry.64, section ".printk_index", align 4
@tas6424_fault_check_work._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.35, ptr @.str.4, i32 483, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"experienced a VBAT overvoltage fault\0A\00", [58 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.69 = internal global ptr @tas6424_fault_check_work._entry.67, section ".printk_index", align 4
@tas6424_fault_check_work._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.35, ptr @.str.4, i32 486, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"experienced a PVDD undervoltage fault\0A\00", [57 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.72 = internal global ptr @tas6424_fault_check_work._entry.70, section ".printk_index", align 4
@tas6424_fault_check_work._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.35, ptr @.str.4, i32 489, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"experienced a VBAT undervoltage fault\0A\00", [57 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.75 = internal global ptr @tas6424_fault_check_work._entry.73, section ".printk_index", align 4
@tas6424_fault_check_work._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.35, ptr @.str.4, i32 497, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read GLOB_FAULT2 register: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.78 = internal global ptr @tas6424_fault_check_work._entry.76, section ".printk_index", align 4
@tas6424_fault_check_work._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.35, ptr @.str.4, i32 513, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"experienced a global overtemp shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.81 = internal global ptr @tas6424_fault_check_work._entry.79, section ".printk_index", align 4
@tas6424_fault_check_work._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.35, ptr @.str.4, i32 516, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"experienced an overtemp shutdown on CH1\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.84 = internal global ptr @tas6424_fault_check_work._entry.82, section ".printk_index", align 4
@tas6424_fault_check_work._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.35, ptr @.str.4, i32 519, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"experienced an overtemp shutdown on CH2\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.87 = internal global ptr @tas6424_fault_check_work._entry.85, section ".printk_index", align 4
@tas6424_fault_check_work._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.35, ptr @.str.4, i32 522, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"experienced an overtemp shutdown on CH3\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.90 = internal global ptr @tas6424_fault_check_work._entry.88, section ".printk_index", align 4
@tas6424_fault_check_work._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.35, ptr @.str.4, i32 525, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"experienced an overtemp shutdown on CH4\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.93 = internal global ptr @tas6424_fault_check_work._entry.91, section ".printk_index", align 4
@tas6424_fault_check_work._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.35, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read WARN register: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.96 = internal global ptr @tas6424_fault_check_work._entry.94, section ".printk_index", align 4
@tas6424_fault_check_work._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.35, ptr @.str.4, i32 551, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"experienced a VDD under voltage condition\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.100 = internal global ptr @tas6424_fault_check_work._entry.97, section ".printk_index", align 4
@tas6424_fault_check_work._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.35, ptr @.str.4, i32 554, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"experienced a VDD POR condition\0A\00", [63 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.103 = internal global ptr @tas6424_fault_check_work._entry.101, section ".printk_index", align 4
@tas6424_fault_check_work._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.35, ptr @.str.4, i32 557, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"experienced a global overtemp warning\0A\00", [57 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.106 = internal global ptr @tas6424_fault_check_work._entry.104, section ".printk_index", align 4
@tas6424_fault_check_work._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.35, ptr @.str.4, i32 560, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"experienced an overtemp warning on CH1\0A\00", [56 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.109 = internal global ptr @tas6424_fault_check_work._entry.107, section ".printk_index", align 4
@tas6424_fault_check_work._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.35, ptr @.str.4, i32 563, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"experienced an overtemp warning on CH2\0A\00", [56 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.112 = internal global ptr @tas6424_fault_check_work._entry.110, section ".printk_index", align 4
@tas6424_fault_check_work._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.35, ptr @.str.4, i32 566, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"experienced an overtemp warning on CH3\0A\00", [56 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.115 = internal global ptr @tas6424_fault_check_work._entry.113, section ".printk_index", align 4
@tas6424_fault_check_work._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.35, ptr @.str.4, i32 569, ptr @.str.99, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"experienced an overtemp warning on CH4\0A\00", [56 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.118 = internal global ptr @tas6424_fault_check_work._entry.116, section ".printk_index", align 4
@tas6424_fault_check_work._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.35, ptr @.str.4, i32 578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to write MISC_CTRL3 register: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.121 = internal global ptr @tas6424_fault_check_work._entry.119, section ".printk_index", align 4
@tas6424_fault_check_work._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.35, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tas6424_fault_check_work._entry_ptr.123 = internal global ptr @tas6424_fault_check_work._entry.122, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tas6424_snd_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_strobe, ptr @snd_soc_put_strobe, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }], [48 x i8] zeroinitializer }, align 32
@tas6424_audio_map = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Speaker Driver CH1 Playback Volume\00", [61 x i8] zeroinitializer }, align 32
@dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Speaker Driver CH2 Playback Volume\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 6, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Speaker Driver CH3 Playback Volume\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Speaker Driver CH4 Playback Volume\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Auto Diagnostics Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC IN\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@tas6424_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.133, ptr @.str.134, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tas6424_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@tas6424_dac_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.138, ptr @.str.139, ptr @.str.4, ptr @.str.140, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_tas6424\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas6424_dac_event\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() event=0x%0x\0A\00", [46 x i8] zeroinitializer }, align 32
@tas6424_set_bias_level.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.138, ptr @.str.141, ptr @.str.4, ptr @.str.142, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tas6424_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s() level=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@tas6424_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tas6424_power_on\00", [47 x i8] zeroinitializer }, align 32
@tas6424_power_on._entry_ptr = internal global ptr @tas6424_power_on._entry, section ".printk_index", align 4
@tas6424_power_on._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to sync regcache: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tas6424_power_on._entry_ptr.147 = internal global ptr @tas6424_power_on._entry.145, section ".printk_index", align 4
@tas6424_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas6424_power_off\00", [46 x i8] zeroinitializer }, align 32
@tas6424_power_off._entry_ptr = internal global ptr @tas6424_power_off._entry, section ".printk_index", align 4
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas6424-amplifier\00", [46 x i8] zeroinitializer }, align 32
@tas6424_speaker_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @tas6424_set_dai_fmt, ptr null, ptr @tas6424_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas6424_mute, ptr null, ptr null, ptr @tas6424_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@tas6424_set_dai_fmt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.138, ptr @.str.151, ptr @.str.4, ptr @.str.152, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tas6424_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s() fmt=0x%0x\0A\00", [16 x i8] zeroinitializer }, align 32
@tas6424_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.4, i32 167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid DAI master/slave interface\0A\00", [60 x i8] zeroinitializer }, align 32
@tas6424_set_dai_fmt._entry_ptr = internal global ptr @tas6424_set_dai_fmt._entry, section ".printk_index", align 4
@tas6424_set_dai_fmt._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.151, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid DAI clock signal polarity\0A\00", [61 x i8] zeroinitializer }, align 32
@tas6424_set_dai_fmt._entry_ptr.156 = internal global ptr @tas6424_set_dai_fmt._entry.154, section ".printk_index", align 4
@tas6424_set_dai_fmt._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.151, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid DAI interface format\0A\00", [34 x i8] zeroinitializer }, align 32
@tas6424_set_dai_fmt._entry_ptr.159 = internal global ptr @tas6424_set_dai_fmt._entry.157, section ".printk_index", align 4
@tas6424_set_dai_tdm_slot.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.138, ptr @.str.160, ptr @.str.4, ptr @.str.161, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tas6424_set_dai_tdm_slot\00", [39 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s() tx_mask=%d rx_mask=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@tas6424_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tdm mask must cover 4 contiguous slots\0A\00", [56 x i8] zeroinitializer }, align 32
@tas6424_set_dai_tdm_slot._entry_ptr = internal global ptr @tas6424_set_dai_tdm_slot._entry, section ".printk_index", align 4
@tas6424_set_dai_tdm_slot._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.160, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tdm mask must start at slot 0 or 4\0A\00", [60 x i8] zeroinitializer }, align 32
@tas6424_set_dai_tdm_slot._entry_ptr.165 = internal global ptr @tas6424_set_dai_tdm_slot._entry.163, section ".printk_index", align 4
@tas6424_mute.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.138, ptr @.str.166, ptr @.str.4, ptr @.str.167, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tas6424_mute\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s() mute=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@tas6424_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.138, ptr @.str.168, ptr @.str.4, ptr @.str.169, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas6424_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() rate=%u width=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@tas6424_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported sample rate: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@tas6424_hw_params._entry_ptr = internal global ptr @tas6424_hw_params._entry, section ".printk_index", align 4
@tas6424_hw_params._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.168, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported sample width: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@tas6424_hw_params._entry_ptr.173 = internal global ptr @tas6424_hw_params._entry.171, section ".printk_index", align 4
@tas6424_i2c_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.4, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tas6424_i2c_remove\00", [45 x i8] zeroinitializer }, align 32
@tas6424_i2c_remove._entry_ptr = internal global ptr @tas6424_i2c_remove._entry, section ".printk_index", align 4
@switch.table.tas6424_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 4, i32 5, i32 6, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 20, i64 21, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 32, i64 44100, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"tas6424_i2c_driver\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 803, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 805, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"tas6424_of_ids\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 678, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"tas6424_i2c_ids\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 797, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"tas6424_regmap_config\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 664, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 700, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 703, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 713, i32 55 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 718, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 729, i32 52 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 734, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 744, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 751, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 759, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 763, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"soc_codec_dev_tas6424\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 368, i32 40 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"tas6424_dai\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 389, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 768, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [21 x i8] c"tas6424_reg_defaults\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 591, i32 33 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 33, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 34, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 35, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 413, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 429, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 432, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 435, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 438, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 441, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 444, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 447, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 450, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 458, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 480, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 483, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 486, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 489, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 497, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 513, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 516, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 519, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 522, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 525, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 533, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 551, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 554, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 557, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 560, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 563, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 566, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 569, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 578, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 583, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c"tas6424_snd_controls\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 59, i32 38 }
@___asan_gen_.483 = private unnamed_addr constant [18 x i8] c"tas6424_audio_map\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 105, i32 40 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 60, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 57, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 62, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 64, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 66, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 68, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 99, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 100, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 102, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c"tas6424_dapm_widgets\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 98, i32 41 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 78, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 350, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 312, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 320, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 291, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 391, i32 11 }
@___asan_gen_.566 = private unnamed_addr constant [24 x i8] c"tas6424_speaker_dai_ops\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 381, i32 37 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 160, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 167, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 176, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 200, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 218, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 233, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 245, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 261, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 119, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 132, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 143, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [30 x i8] c"../sound/soc/codecs/tas6424.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 790, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant [33 x i8] c"switch.table.tas6424_set_dai_fmt\00", align 1
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_tas6424_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tas6424__301_812_tas6424_i2c_driver_init6, ptr @tas6424_fault_check_work._entry, ptr @tas6424_fault_check_work._entry.101, ptr @tas6424_fault_check_work._entry.104, ptr @tas6424_fault_check_work._entry.107, ptr @tas6424_fault_check_work._entry.110, ptr @tas6424_fault_check_work._entry.113, ptr @tas6424_fault_check_work._entry.116, ptr @tas6424_fault_check_work._entry.119, ptr @tas6424_fault_check_work._entry.122, ptr @tas6424_fault_check_work._entry.36, ptr @tas6424_fault_check_work._entry.40, ptr @tas6424_fault_check_work._entry.43, ptr @tas6424_fault_check_work._entry.46, ptr @tas6424_fault_check_work._entry.49, ptr @tas6424_fault_check_work._entry.52, ptr @tas6424_fault_check_work._entry.55, ptr @tas6424_fault_check_work._entry.58, ptr @tas6424_fault_check_work._entry.61, ptr @tas6424_fault_check_work._entry.64, ptr @tas6424_fault_check_work._entry.67, ptr @tas6424_fault_check_work._entry.70, ptr @tas6424_fault_check_work._entry.73, ptr @tas6424_fault_check_work._entry.76, ptr @tas6424_fault_check_work._entry.79, ptr @tas6424_fault_check_work._entry.82, ptr @tas6424_fault_check_work._entry.85, ptr @tas6424_fault_check_work._entry.88, ptr @tas6424_fault_check_work._entry.91, ptr @tas6424_fault_check_work._entry.94, ptr @tas6424_fault_check_work._entry.97, ptr @tas6424_fault_check_work._entry_ptr, ptr @tas6424_fault_check_work._entry_ptr.100, ptr @tas6424_fault_check_work._entry_ptr.103, ptr @tas6424_fault_check_work._entry_ptr.106, ptr @tas6424_fault_check_work._entry_ptr.109, ptr @tas6424_fault_check_work._entry_ptr.112, ptr @tas6424_fault_check_work._entry_ptr.115, ptr @tas6424_fault_check_work._entry_ptr.118, ptr @tas6424_fault_check_work._entry_ptr.121, ptr @tas6424_fault_check_work._entry_ptr.123, ptr @tas6424_fault_check_work._entry_ptr.39, ptr @tas6424_fault_check_work._entry_ptr.42, ptr @tas6424_fault_check_work._entry_ptr.45, ptr @tas6424_fault_check_work._entry_ptr.48, ptr @tas6424_fault_check_work._entry_ptr.51, ptr @tas6424_fault_check_work._entry_ptr.54, ptr @tas6424_fault_check_work._entry_ptr.57, ptr @tas6424_fault_check_work._entry_ptr.60, ptr @tas6424_fault_check_work._entry_ptr.63, ptr @tas6424_fault_check_work._entry_ptr.66, ptr @tas6424_fault_check_work._entry_ptr.69, ptr @tas6424_fault_check_work._entry_ptr.72, ptr @tas6424_fault_check_work._entry_ptr.75, ptr @tas6424_fault_check_work._entry_ptr.78, ptr @tas6424_fault_check_work._entry_ptr.81, ptr @tas6424_fault_check_work._entry_ptr.84, ptr @tas6424_fault_check_work._entry_ptr.87, ptr @tas6424_fault_check_work._entry_ptr.90, ptr @tas6424_fault_check_work._entry_ptr.93, ptr @tas6424_fault_check_work._entry_ptr.96, ptr @tas6424_hw_params._entry, ptr @tas6424_hw_params._entry.171, ptr @tas6424_hw_params._entry_ptr, ptr @tas6424_hw_params._entry_ptr.173, ptr @tas6424_i2c_driver_exit, ptr @tas6424_i2c_probe._entry, ptr @tas6424_i2c_probe._entry.13, ptr @tas6424_i2c_probe._entry.16, ptr @tas6424_i2c_probe._entry.19, ptr @tas6424_i2c_probe._entry.22, ptr @tas6424_i2c_probe._entry.28, ptr @tas6424_i2c_probe._entry.8, ptr @tas6424_i2c_probe._entry_ptr, ptr @tas6424_i2c_probe._entry_ptr.11, ptr @tas6424_i2c_probe._entry_ptr.15, ptr @tas6424_i2c_probe._entry_ptr.18, ptr @tas6424_i2c_probe._entry_ptr.21, ptr @tas6424_i2c_probe._entry_ptr.24, ptr @tas6424_i2c_probe._entry_ptr.30, ptr @tas6424_i2c_remove._entry, ptr @tas6424_i2c_remove._entry_ptr, ptr @tas6424_power_off._entry, ptr @tas6424_power_off._entry_ptr, ptr @tas6424_power_on._entry, ptr @tas6424_power_on._entry.145, ptr @tas6424_power_on._entry_ptr, ptr @tas6424_power_on._entry_ptr.147, ptr @tas6424_set_dai_fmt._entry, ptr @tas6424_set_dai_fmt._entry.154, ptr @tas6424_set_dai_fmt._entry.157, ptr @tas6424_set_dai_fmt._entry_ptr, ptr @tas6424_set_dai_fmt._entry_ptr.156, ptr @tas6424_set_dai_fmt._entry_ptr.159, ptr @tas6424_set_dai_tdm_slot._entry, ptr @tas6424_set_dai_tdm_slot._entry.163, ptr @tas6424_set_dai_tdm_slot._entry_ptr, ptr @tas6424_set_dai_tdm_slot._entry_ptr.165, ptr @tas6424_i2c_driver, ptr @.str, ptr @tas6424_of_ids, ptr @tas6424_i2c_ids, ptr @tas6424_i2c_probe._key, ptr @tas6424_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @tas6424_i2c_probe.__key, ptr @.str.25, ptr @tas6424_i2c_probe.__key.26, ptr @.str.27, ptr @soc_codec_dev_tas6424, ptr @tas6424_dai, ptr @.str.29, ptr @tas6424_reg_defaults, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @tas6424_snd_controls, ptr @tas6424_audio_map, ptr @.str.124, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @tas6424_dapm_widgets, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @tas6424_speaker_dai_ops, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @switch.table.tas6424_set_dai_fmt], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_tas6424 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_reg_defaults to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_fault_check_work._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_snd_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_audio_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_power_on._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_speaker_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_set_dai_fmt._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_set_dai_fmt._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_set_dai_tdm_slot._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_hw_params._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas6424_i2c_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas6424_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tas6424_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tas6424_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tas6424_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tas6424_regmap_config, ptr noundef nonnull @tas6424_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %3) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #7
  %standby_gpio = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %standby_gpio, align 4
  %cmp.i152 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then13, label %if.end9.if.end24_crit_edge

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then13:                                        ; preds = %if.end9
  %cmp = icmp eq ptr %call10, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %do.end20

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %5) #10
  %6 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %standby_gpio, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end20, %if.end9.if.end24_crit_edge
  %call25 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 7) #7
  %mute_gpio = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %mute_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %mute_gpio, align 4
  %cmp.i153 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then28, label %if.end24.if.end40_crit_edge

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then28:                                        ; preds = %if.end24
  %cmp31 = icmp eq ptr %call25, inttoptr (i32 -517 to ptr)
  br i1 %cmp31, label %if.then28.cleanup_crit_edge, label %do.end36

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %8) #10
  %9 = ptrtoint ptr %mute_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mute_gpio, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %if.end24.if.end40_crit_edge
  %arrayidx42 = getelementptr %struct.tas6424_data, ptr %call.i, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.31, ptr %arrayidx42, align 4
  %arrayidx42.1 = getelementptr %struct.tas6424_data, ptr %call.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.32, ptr %arrayidx42.1, align 4
  %arrayidx42.2 = getelementptr %struct.tas6424_data, ptr %call.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.33, ptr %arrayidx42.2, align 4
  %call44 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call44) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %call53 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call53) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool62.not = icmp eq i32 %call.i154, 0
  br i1 %tobool62.not, label %do.body69, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call.i154) #10
  br label %cleanup

do.body69:                                        ; preds = %if.end59
  %fault_check_work = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %fault_check_work, i32 noundef 0) #7
  %15 = ptrtoint ptr %fault_check_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %fault_check_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @tas6424_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry76 = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry76, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tas6424_fault_check_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tas6424_data, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.27, ptr noundef nonnull @tas6424_i2c_probe.__key.26) #7
  %call87 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_codec_dev_tas6424, ptr noundef nonnull @tas6424_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %do.body69.cleanup_crit_edge

do.body69.cleanup_crit_edge:                      ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end92:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call87) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %do.body69.cleanup_crit_edge, %do.end66, %do.end58, %do.end49, %if.then28.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call44, %do.end49 ], [ %call53, %do.end58 ], [ %call.i154, %do.end66 ], [ %call87, %do.end92 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then13.cleanup_crit_edge ], [ -517, %if.then28.cleanup_crit_edge ], [ 0, %do.body69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fault_check_work = getelementptr inbounds %struct.tas6424_data, ptr %1, i32 0, i32 3
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fault_check_work) #7
  %standby_gpio = getelementptr inbounds %struct.tas6424_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %standby_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.tas6424_data, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.174, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tas6424_fault_check_work(ptr noundef %work) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !313
  %regmap = getelementptr i8, ptr %work, i32 -40
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 16, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %call) #10
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.check_global_fault1_reg_crit_edge, label %if.end3

if.end.check_global_fault1_reg_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_global_fault1_reg

if.end3:                                          ; preds = %if.end
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end12_crit_edge, label %land.lhs.true

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %last_cfault5 = getelementptr i8, ptr %work, i32 100
  %7 = ptrtoint ptr %last_cfault5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_cfault5, align 4
  %and6 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.37) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %land.lhs.true.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and13 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end23_crit_edge, label %land.lhs.true15

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true15:                                  ; preds = %if.end12
  %last_cfault16 = getelementptr i8, ptr %work, i32 100
  %11 = ptrtoint ptr %last_cfault16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_cfault16, align 4
  %and17 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end22, label %land.lhs.true15.if.end23_crit_edge

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end22:                                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.41) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %land.lhs.true15.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and24 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end34_crit_edge, label %land.lhs.true26

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true26:                                  ; preds = %if.end23
  %last_cfault27 = getelementptr i8, ptr %work, i32 100
  %15 = ptrtoint ptr %last_cfault27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_cfault27, align 4
  %and28 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end33, label %land.lhs.true26.if.end34_crit_edge

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end33:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.44) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %land.lhs.true26.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %and35 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end45_crit_edge, label %land.lhs.true37

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.end34
  %last_cfault38 = getelementptr i8, ptr %work, i32 100
  %19 = ptrtoint ptr %last_cfault38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_cfault38, align 4
  %and39 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end44, label %land.lhs.true37.if.end45_crit_edge

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end44:                                         ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.47) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %land.lhs.true37.if.end45_crit_edge, %if.end34.if.end45_crit_edge
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  %and46 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end56_crit_edge, label %land.lhs.true48

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true48:                                  ; preds = %if.end45
  %last_cfault49 = getelementptr i8, ptr %work, i32 100
  %23 = ptrtoint ptr %last_cfault49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_cfault49, align 4
  %and50 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end55, label %land.lhs.true48.if.end56_crit_edge

land.lhs.true48.if.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.end55:                                         ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.50) #10
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %land.lhs.true48.if.end56_crit_edge, %if.end45.if.end56_crit_edge
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %and57 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end67_crit_edge, label %land.lhs.true59

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

land.lhs.true59:                                  ; preds = %if.end56
  %last_cfault60 = getelementptr i8, ptr %work, i32 100
  %27 = ptrtoint ptr %last_cfault60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_cfault60, align 4
  %and61 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.end66, label %land.lhs.true59.if.end67_crit_edge

land.lhs.true59.if.end67_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end66:                                         ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.53) #10
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %land.lhs.true59.if.end67_crit_edge, %if.end56.if.end67_crit_edge
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %and68 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end78_crit_edge, label %land.lhs.true70

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

land.lhs.true70:                                  ; preds = %if.end67
  %last_cfault71 = getelementptr i8, ptr %work, i32 100
  %31 = ptrtoint ptr %last_cfault71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_cfault71, align 4
  %and72 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.end77, label %land.lhs.true70.if.end78_crit_edge

land.lhs.true70.if.end78_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end77:                                         ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.56) #10
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %land.lhs.true70.if.end78_crit_edge, %if.end67.if.end78_crit_edge
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg, align 4
  %and79 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end89_crit_edge, label %land.lhs.true81

if.end78.if.end89_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true81:                                  ; preds = %if.end78
  %last_cfault82 = getelementptr i8, ptr %work, i32 100
  %35 = ptrtoint ptr %last_cfault82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_cfault82, align 4
  %and83 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.end88, label %land.lhs.true81.if.end89_crit_edge

land.lhs.true81.if.end89_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

do.end88:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.59) #10
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %land.lhs.true81.if.end89_crit_edge, %if.end78.if.end89_crit_edge
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg, align 4
  br label %check_global_fault1_reg

check_global_fault1_reg:                          ; preds = %if.end89, %if.end.check_global_fault1_reg_crit_edge
  %.sink = phi i32 [ %38, %if.end89 ], [ 0, %if.end.check_global_fault1_reg_crit_edge ]
  %last_cfault90 = getelementptr i8, ptr %work, i32 100
  %39 = ptrtoint ptr %last_cfault90 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %last_cfault90, align 4
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call92 = call i32 @regmap_read(ptr noundef %41, i32 noundef 17, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end97, label %if.end98

do.end97:                                         ; preds = %check_global_fault1_reg
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %call92) #10
  br label %out

if.end98:                                         ; preds = %check_global_fault1_reg
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg, align 4
  %and99 = and i32 %43, 15
  store i32 %and99, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.check_global_fault2_reg_crit_edge, label %if.end102

if.end98.check_global_fault2_reg_crit_edge:       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_global_fault2_reg

if.end102:                                        ; preds = %if.end98
  %and103 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end113_crit_edge, label %land.lhs.true105

if.end102.if.end113_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

land.lhs.true105:                                 ; preds = %if.end102
  %last_fault1106 = getelementptr i8, ptr %work, i32 104
  %44 = ptrtoint ptr %last_fault1106 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_fault1106, align 4
  %and107 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.end112, label %land.lhs.true105.if.end113_crit_edge

land.lhs.true105.if.end113_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

do.end112:                                        ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.65) #10
  br label %if.end113

if.end113:                                        ; preds = %do.end112, %land.lhs.true105.if.end113_crit_edge, %if.end102.if.end113_crit_edge
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg, align 4
  %and114 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end124_crit_edge, label %land.lhs.true116

if.end113.if.end124_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true116:                                 ; preds = %if.end113
  %last_fault1117 = getelementptr i8, ptr %work, i32 104
  %48 = ptrtoint ptr %last_fault1117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_fault1117, align 4
  %and118 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %do.end123, label %land.lhs.true116.if.end124_crit_edge

land.lhs.true116.if.end124_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

do.end123:                                        ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.68) #10
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %land.lhs.true116.if.end124_crit_edge, %if.end113.if.end124_crit_edge
  %50 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg, align 4
  %and125 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end135_crit_edge, label %land.lhs.true127

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

land.lhs.true127:                                 ; preds = %if.end124
  %last_fault1128 = getelementptr i8, ptr %work, i32 104
  %52 = ptrtoint ptr %last_fault1128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last_fault1128, align 4
  %and129 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.end134, label %land.lhs.true127.if.end135_crit_edge

land.lhs.true127.if.end135_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

do.end134:                                        ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.71) #10
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %land.lhs.true127.if.end135_crit_edge, %if.end124.if.end135_crit_edge
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg, align 4
  %and136 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end146_crit_edge, label %land.lhs.true138

if.end135.if.end146_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

land.lhs.true138:                                 ; preds = %if.end135
  %last_fault1139 = getelementptr i8, ptr %work, i32 104
  %56 = ptrtoint ptr %last_fault1139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_fault1139, align 4
  %and140 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.end145, label %land.lhs.true138.if.end146_crit_edge

land.lhs.true138.if.end146_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

do.end145:                                        ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.74) #10
  br label %if.end146

if.end146:                                        ; preds = %do.end145, %land.lhs.true138.if.end146_crit_edge, %if.end135.if.end146_crit_edge
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg, align 4
  br label %check_global_fault2_reg

check_global_fault2_reg:                          ; preds = %if.end146, %if.end98.check_global_fault2_reg_crit_edge
  %.sink404 = phi i32 [ %59, %if.end146 ], [ 0, %if.end98.check_global_fault2_reg_crit_edge ]
  %last_fault1147 = getelementptr i8, ptr %work, i32 104
  %60 = ptrtoint ptr %last_fault1147 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink404, ptr %last_fault1147, align 4
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call149 = call i32 @regmap_read(ptr noundef %62, i32 noundef 18, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %do.end154, label %if.end155

do.end154:                                        ; preds = %check_global_fault2_reg
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef %call149) #10
  br label %out

if.end155:                                        ; preds = %check_global_fault2_reg
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg, align 4
  %and156 = and i32 %64, 31
  store i32 %and156, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.check_warn_reg_crit_edge, label %if.end159

if.end155.check_warn_reg_crit_edge:               ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_warn_reg

if.end159:                                        ; preds = %if.end155
  %and160 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.if.end170_crit_edge, label %land.lhs.true162

if.end159.if.end170_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

land.lhs.true162:                                 ; preds = %if.end159
  %last_fault2163 = getelementptr i8, ptr %work, i32 108
  %65 = ptrtoint ptr %last_fault2163 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %last_fault2163, align 4
  %and164 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.end169, label %land.lhs.true162.if.end170_crit_edge

land.lhs.true162.if.end170_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

do.end169:                                        ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.80) #10
  br label %if.end170

if.end170:                                        ; preds = %do.end169, %land.lhs.true162.if.end170_crit_edge, %if.end159.if.end170_crit_edge
  %67 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg, align 4
  %and171 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end170.if.end181_crit_edge, label %land.lhs.true173

if.end170.if.end181_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

land.lhs.true173:                                 ; preds = %if.end170
  %last_fault2174 = getelementptr i8, ptr %work, i32 108
  %69 = ptrtoint ptr %last_fault2174 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %last_fault2174, align 4
  %and175 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.end180, label %land.lhs.true173.if.end181_crit_edge

land.lhs.true173.if.end181_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

do.end180:                                        ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.83) #10
  br label %if.end181

if.end181:                                        ; preds = %do.end180, %land.lhs.true173.if.end181_crit_edge, %if.end170.if.end181_crit_edge
  %71 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg, align 4
  %and182 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end181.if.end192_crit_edge, label %land.lhs.true184

if.end181.if.end192_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

land.lhs.true184:                                 ; preds = %if.end181
  %last_fault2185 = getelementptr i8, ptr %work, i32 108
  %73 = ptrtoint ptr %last_fault2185 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_fault2185, align 4
  %and186 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %do.end191, label %land.lhs.true184.if.end192_crit_edge

land.lhs.true184.if.end192_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

do.end191:                                        ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.86) #10
  br label %if.end192

if.end192:                                        ; preds = %do.end191, %land.lhs.true184.if.end192_crit_edge, %if.end181.if.end192_crit_edge
  %75 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg, align 4
  %and193 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end192.if.end203_crit_edge, label %land.lhs.true195

if.end192.if.end203_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

land.lhs.true195:                                 ; preds = %if.end192
  %last_fault2196 = getelementptr i8, ptr %work, i32 108
  %77 = ptrtoint ptr %last_fault2196 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %last_fault2196, align 4
  %and197 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %do.end202, label %land.lhs.true195.if.end203_crit_edge

land.lhs.true195.if.end203_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

do.end202:                                        ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.89) #10
  br label %if.end203

if.end203:                                        ; preds = %do.end202, %land.lhs.true195.if.end203_crit_edge, %if.end192.if.end203_crit_edge
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg, align 4
  %and204 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end203.if.end214_crit_edge, label %land.lhs.true206

if.end203.if.end214_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

land.lhs.true206:                                 ; preds = %if.end203
  %last_fault2207 = getelementptr i8, ptr %work, i32 108
  %81 = ptrtoint ptr %last_fault2207 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %last_fault2207, align 4
  %and208 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %do.end213, label %land.lhs.true206.if.end214_crit_edge

land.lhs.true206.if.end214_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.end213:                                        ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %1, ptr noundef nonnull @.str.92) #10
  br label %if.end214

if.end214:                                        ; preds = %do.end213, %land.lhs.true206.if.end214_crit_edge, %if.end203.if.end214_crit_edge
  %83 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reg, align 4
  br label %check_warn_reg

check_warn_reg:                                   ; preds = %if.end214, %if.end155.check_warn_reg_crit_edge
  %.sink405 = phi i32 [ %84, %if.end214 ], [ 0, %if.end155.check_warn_reg_crit_edge ]
  %last_fault2215 = getelementptr i8, ptr %work, i32 108
  %85 = ptrtoint ptr %last_fault2215 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink405, ptr %last_fault2215, align 4
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call217 = call i32 @regmap_read(ptr noundef %87, i32 noundef 19, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %do.end222, label %if.end223

do.end222:                                        ; preds = %check_warn_reg
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef %call217) #10
  br label %out

if.end223:                                        ; preds = %check_warn_reg
  %88 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %reg, align 4
  %and224 = and i32 %89, 127
  store i32 %and224, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #9
  %last_warn = getelementptr i8, ptr %work, i32 112
  %90 = ptrtoint ptr %last_warn to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %last_warn, align 4
  br label %out

if.end227:                                        ; preds = %if.end223
  %and228 = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %if.end227.if.end238_crit_edge, label %land.lhs.true230

if.end227.if.end238_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

land.lhs.true230:                                 ; preds = %if.end227
  %last_warn231 = getelementptr i8, ptr %work, i32 112
  %91 = ptrtoint ptr %last_warn231 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %last_warn231, align 4
  %and232 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.end237, label %land.lhs.true230.if.end238_crit_edge

land.lhs.true230.if.end238_crit_edge:             ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

do.end237:                                        ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.98) #10
  br label %if.end238

if.end238:                                        ; preds = %do.end237, %land.lhs.true230.if.end238_crit_edge, %if.end227.if.end238_crit_edge
  %93 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg, align 4
  %and239 = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.end238.if.end249_crit_edge, label %land.lhs.true241

if.end238.if.end249_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

land.lhs.true241:                                 ; preds = %if.end238
  %last_warn242 = getelementptr i8, ptr %work, i32 112
  %95 = ptrtoint ptr %last_warn242 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %last_warn242, align 4
  %and243 = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %do.end248, label %land.lhs.true241.if.end249_crit_edge

land.lhs.true241.if.end249_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

do.end248:                                        ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.102) #10
  br label %if.end249

if.end249:                                        ; preds = %do.end248, %land.lhs.true241.if.end249_crit_edge, %if.end238.if.end249_crit_edge
  %97 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg, align 4
  %and250 = and i32 %98, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.end249.if.end260_crit_edge, label %land.lhs.true252

if.end249.if.end260_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260

land.lhs.true252:                                 ; preds = %if.end249
  %last_warn253 = getelementptr i8, ptr %work, i32 112
  %99 = ptrtoint ptr %last_warn253 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %last_warn253, align 4
  %and254 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %do.end259, label %land.lhs.true252.if.end260_crit_edge

land.lhs.true252.if.end260_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end260

do.end259:                                        ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.105) #10
  br label %if.end260

if.end260:                                        ; preds = %do.end259, %land.lhs.true252.if.end260_crit_edge, %if.end249.if.end260_crit_edge
  %101 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg, align 4
  %and261 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %if.end260.if.end271_crit_edge, label %land.lhs.true263

if.end260.if.end271_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

land.lhs.true263:                                 ; preds = %if.end260
  %last_warn264 = getelementptr i8, ptr %work, i32 112
  %103 = ptrtoint ptr %last_warn264 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %last_warn264, align 4
  %and265 = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %do.end270, label %land.lhs.true263.if.end271_crit_edge

land.lhs.true263.if.end271_crit_edge:             ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

do.end270:                                        ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.108) #10
  br label %if.end271

if.end271:                                        ; preds = %do.end270, %land.lhs.true263.if.end271_crit_edge, %if.end260.if.end271_crit_edge
  %105 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reg, align 4
  %and272 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %if.end271.if.end282_crit_edge, label %land.lhs.true274

if.end271.if.end282_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end282

land.lhs.true274:                                 ; preds = %if.end271
  %last_warn275 = getelementptr i8, ptr %work, i32 112
  %107 = ptrtoint ptr %last_warn275 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %last_warn275, align 4
  %and276 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %do.end281, label %land.lhs.true274.if.end282_crit_edge

land.lhs.true274.if.end282_crit_edge:             ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end282

do.end281:                                        ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.111) #10
  br label %if.end282

if.end282:                                        ; preds = %do.end281, %land.lhs.true274.if.end282_crit_edge, %if.end271.if.end282_crit_edge
  %109 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg, align 4
  %and283 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.end282.if.end293_crit_edge, label %land.lhs.true285

if.end282.if.end293_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

land.lhs.true285:                                 ; preds = %if.end282
  %last_warn286 = getelementptr i8, ptr %work, i32 112
  %111 = ptrtoint ptr %last_warn286 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %last_warn286, align 4
  %and287 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %do.end292, label %land.lhs.true285.if.end293_crit_edge

land.lhs.true285.if.end293_crit_edge:             ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

do.end292:                                        ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.114) #10
  br label %if.end293

if.end293:                                        ; preds = %do.end292, %land.lhs.true285.if.end293_crit_edge, %if.end282.if.end293_crit_edge
  %113 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %reg, align 4
  %and294 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  br i1 %tobool295.not, label %if.end293.if.end304_crit_edge, label %land.lhs.true296

if.end293.if.end304_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

land.lhs.true296:                                 ; preds = %if.end293
  %last_warn297 = getelementptr i8, ptr %work, i32 112
  %115 = ptrtoint ptr %last_warn297 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %last_warn297, align 4
  %and298 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %do.end303, label %land.lhs.true296.if.end304_crit_edge

land.lhs.true296.if.end304_crit_edge:             ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

do.end303:                                        ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.117) #10
  br label %if.end304

if.end304:                                        ; preds = %do.end303, %land.lhs.true296.if.end304_crit_edge, %if.end293.if.end304_crit_edge
  %117 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %reg, align 4
  %last_warn305 = getelementptr i8, ptr %work, i32 112
  %119 = ptrtoint ptr %last_warn305 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %last_warn305, align 4
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 33, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp308 = icmp slt i32 %call.i, 0
  br i1 %cmp308, label %do.end312, label %if.end304.if.end313_crit_edge

if.end304.if.end313_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end313

do.end312:                                        ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.120, i32 noundef %call.i) #10
  br label %if.end313

if.end313:                                        ; preds = %do.end312, %if.end304.if.end313_crit_edge
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 4
  %call.i403 = call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 33, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i403)
  %cmp316 = icmp slt i32 %call.i403, 0
  br i1 %cmp316, label %do.end320, label %if.end313.out_crit_edge

if.end313.out_crit_edge:                          ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end320:                                        ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.120, i32 noundef %call.i403) #10
  br label %out

out:                                              ; preds = %do.end320, %if.end313.out_crit_edge, %if.then226, %do.end222, %do.end154, %do.end97, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %124 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %124, ptr noundef %work, i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tas6424_is_writable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 7, label %entry.return_crit_edge7
    i32 8, label %entry.return_crit_edge8
    i32 9, label %entry.return_crit_edge9
    i32 10, label %entry.return_crit_edge10
    i32 11, label %entry.return_crit_edge11
    i32 20, label %entry.return_crit_edge12
    i32 21, label %entry.return_crit_edge13
    i32 33, label %entry.return_crit_edge14
    i32 34, label %entry.return_crit_edge15
    i32 35, label %entry.return_crit_edge16
    i32 36, label %entry.return_crit_edge17
    i32 37, label %entry.return_crit_edge18
    i32 38, label %entry.return_crit_edge19
  ]

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

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tas6424_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 15
  %switch.cast = trunc i32 %switch.tableidx to i15
  %switch.downshift = lshr i15 -1793, %switch.cast
  %1 = and i15 %switch.downshift, 1
  %2 = sext i15 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i15 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tas6424_set_bias_level.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tas6424_set_bias_level, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tas6424_set_bias_level.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i32 noundef %level) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %level, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb3
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.end
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %3 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb3
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #7
  %9 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !313
  %regmap.i = getelementptr inbounds %struct.tas6424_data, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 9, ptr noundef nonnull %reg_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then5.if.end.i_crit_edge

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_val.i, align 4
  %and.i = and i32 %13, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then5.if.end.i_crit_edge
  %no_auto_diags.0.i = phi i32 [ 0, %if.then5.if.end.i_crit_edge ], [ %and.i, %if.then.i ]
  %supplies.i = getelementptr inbounds %struct.tas6424_data, ptr %8, i32 0, i32 2
  %call2.i = call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.143, i32 noundef %call2.i) #10
  br label %tas6424_power_on.exit

if.end4.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  call void @regcache_cache_only(ptr noundef %17, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call7.i = call i32 @regcache_sync(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.146, i32 noundef %call7.i) #10
  br label %tas6424_power_on.exit

if.end14.i:                                       ; preds = %if.end4.i
  %mute_gpio.i = getelementptr inbounds %struct.tas6424_data, ptr %8, i32 0, i32 9
  %22 = ptrtoint ptr %mute_gpio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mute_gpio.i, align 4
  %tobool15.not.i = icmp eq ptr %23, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end18.i_crit_edge, label %if.then16.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %23, i32 noundef 0) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end18.i_crit_edge
  %chan_states.0.i = phi i32 [ 0, %if.then16.i ], [ 170, %if.end14.i.if.end18.i_crit_edge ]
  %call19.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4, i32 noundef %chan_states.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_auto_diags.0.i)
  %tobool20.not.i = icmp eq i32 %no_auto_diags.0.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end18.i.tas6424_power_on.exit_crit_edge

if.end18.i.tas6424_power_on.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tas6424_power_on.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 230) #7
  br label %tas6424_power_on.exit

tas6424_power_on.exit:                            ; preds = %if.then21.i, %if.end18.i.tas6424_power_on.exit_crit_edge, %do.end12.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  %dev.i.i14 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i14, align 4
  %driver_data.i.i.i15 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i15, align 4
  %call1.i16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4, i32 noundef 85) #7
  %regmap.i17 = getelementptr inbounds %struct.tas6424_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i17, align 4
  tail call void @regcache_cache_only(ptr noundef %29, i1 noundef zeroext true) #7
  %30 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i17, align 4
  tail call void @regcache_mark_dirty(ptr noundef %31) #7
  %supplies.i18 = getelementptr inbounds %struct.tas6424_data, ptr %27, i32 0, i32 2
  %call3.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i19 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i19, label %do.end.i20, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i20:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.148, i32 noundef %call3.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i20, %sw.bb8.sw.epilog_crit_edge, %tas6424_power_on.exit, %sw.bb3.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_strobe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_strobe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tas6424_dac_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tas6424_dac_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tas6424_dac_event.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.139, i32 noundef %event) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 12) #7
  %last_fault1 = getelementptr inbounds %struct.tas6424_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %last_fault1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %last_fault1, align 4
  %last_fault2 = getelementptr inbounds %struct.tas6424_data, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %last_fault2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %last_fault2, align 4
  %last_warn = getelementptr inbounds %struct.tas6424_data, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %last_warn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %last_warn, align 4
  %fault_check_work = getelementptr inbounds %struct.tas6424_data, ptr %5, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %fault_check_work, i32 noundef 20) #7
  br label %if.end15

if.else:                                          ; preds = %do.end
  %and9 = and i32 %event, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end15_crit_edge, label %if.then11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %fault_check_work12 = getelementptr inbounds %struct.tas6424_data, ptr %5, i32 0, i32 3
  %call13 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fault_check_work12) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tas6424_set_dai_fmt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tas6424_set_dai_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tas6424_set_dai_fmt.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i32 noundef %fmt) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond = icmp eq i32 %and, 16384
  br i1 %cond, label %sw.epilog, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.153) #10
  br label %cleanup

sw.epilog:                                        ; preds = %do.end
  %and8 = and i32 %fmt, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cond38 = icmp eq i32 %and8, 0
  br i1 %cond38, label %sw.epilog14, label %do.end12

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.155) #10
  br label %cleanup

sw.epilog14:                                      ; preds = %sw.epilog
  %and15 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 5
  br i1 %8, label %switch.hole_check, label %sw.epilog14.do.end32_crit_edge

sw.epilog14.do.end32_crit_edge:                   ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end32:                                         ; preds = %switch.hole_check.do.end32_crit_edge, %sw.epilog14.do.end32_crit_edge
  %dev33 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.158) #10
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog14
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end32_crit_edge, label %switch.lookup

switch.hole_check.do.end32_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tas6424_set_dai_fmt, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 7, i32 noundef %switch.load) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end32, %do.end12, %do.end6
  %retval.0 = phi i32 [ -22, %do.end32 ], [ 0, %switch.lookup ], [ -22, %do.end12 ], [ -22, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tas6424_set_dai_tdm_slot.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tas6424_set_dai_tdm_slot, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tas6424_set_dai_tdm_slot.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.160, i32 noundef %tx_mask, i32 noundef %rx_mask) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool4.not = icmp eq i32 %tx_mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %tobool5.not = icmp eq i32 %rx_mask, 0
  %or.cond = or i1 %tobool4.not, %tobool5.not
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %4 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 false) #7, !range !315
  %5 = tail call i32 @llvm.ctlz.i32(i32 %rx_mask, i1 false) #7, !range !315
  %6 = add nuw nsw i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %6)
  %cmp.not = icmp eq i32 %6, 27
  br i1 %cmp.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.162) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %9 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %4, label %do.end19 [
    i32 0, label %if.end15.sw.epilog_crit_edge
    i32 4, label %sw.bb16
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.164) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %if.end15.sw.epilog_crit_edge
  %sap_tdm_slot_last.0.off0 = phi i32 [ 32, %sw.bb16 ], [ %4, %if.end15.sw.epilog_crit_edge ]
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 32, i32 noundef %sap_tdm_slot_last.0.off0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end19, %do.end13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -22, %do.end19 ], [ 0, %sw.epilog ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tas6424_mute.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tas6424_mute, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tas6424_mute.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166, i32 noundef %mute) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mute_gpio = getelementptr inbounds %struct.tas6424_data, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %mute_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mute_gpio, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef %mute) #7
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool9.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool9.not, i32 0, i32 170
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %.) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas6424_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %5, %entry.if.then.i.i.i_crit_edge ], [ %8, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !315
  %add.i.i.i = or i32 %6, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tas6424_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tas6424_hw_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !314

if.then:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tas6424_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.168, i32 noundef %3, i32 noundef %call1.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %params_width.exit
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %3, label %do.end17 [
    i32 44100, label %do.end.sw.epilog_crit_edge
    i32 48000, label %sw.bb7
    i32 96000, label %sw.bb11
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.170, i32 noundef %3) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %do.end.sw.epilog_crit_edge
  %sap_ctrl.0 = phi i8 [ -128, %sw.bb11 ], [ 64, %sw.bb7 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %14 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %call1.i, label %do.end26 [
    i32 16, label %sw.bb19
    i32 24, label %sw.epilog.sw.epilog28_crit_edge
  ]

sw.epilog.sw.epilog28_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog28

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i8 %sap_ctrl.0, 16
  br label %sw.epilog28

do.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.172, i32 noundef %call1.i) #10
  br label %cleanup

sw.epilog28:                                      ; preds = %sw.bb19, %sw.epilog.sw.epilog28_crit_edge
  %sap_ctrl.1 = phi i8 [ %sap_ctrl.0, %sw.epilog.sw.epilog28_crit_edge ], [ %15, %sw.bb19 ]
  %conv29 = zext i8 %sap_ctrl.1 to i32
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 208, i32 noundef %conv29) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog28, %do.end26, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -22, %do.end26 ], [ 0, %sw.epilog28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !214, !216, !218, !220, !222, !223, !224, !225, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !245, !247, !249, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !300, !302}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @__initcall__kmod_snd_soc_tas6424__301_812_tas6424_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tas6424__301_812_tas6424_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tas6424.c", i32 812, i32 1}
!2 = !{ptr @__exitcall_tas6424_i2c_driver_exit, !1, !"__exitcall_tas6424_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tas6424.c", i32 814, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tas6424.c", i32 815, i32 1}
!7 = !{ptr @__UNIQUE_ID_description304, !8, !"__UNIQUE_ID_description304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tas6424.c", i32 816, i32 1}
!9 = !{ptr @__UNIQUE_ID_file305, !10, !"__UNIQUE_ID_file305", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/tas6424.c", i32 817, i32 1}
!11 = !{ptr @__UNIQUE_ID_license306, !10, !"__UNIQUE_ID_license306", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tas6424.c", i32 805, i32 11}
!14 = !{ptr @tas6424_i2c_driver, !15, !"tas6424_i2c_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tas6424.c", i32 803, i32 26}
!16 = !{ptr @tas6424_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tas6424.c", i32 700, i32 20}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/tas6424.c", i32 703, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tas6424_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tas6424_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/tas6424.c", i32 713, i32 55}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/tas6424.c", i32 718, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tas6424_i2c_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tas6424_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/tas6424.c", i32 729, i32 52}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/tas6424.c", i32 734, i32 3}
!38 = !{ptr @tas6424_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tas6424_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/tas6424.c", i32 744, i32 3}
!42 = !{ptr @tas6424_i2c_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tas6424_i2c_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/tas6424.c", i32 751, i32 3}
!46 = !{ptr @tas6424_i2c_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tas6424_i2c_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/tas6424.c", i32 759, i32 3}
!50 = !{ptr @tas6424_i2c_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tas6424_i2c_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @tas6424_i2c_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/tas6424.c", i32 763, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tas6424_i2c_probe.__key.26, !53, !"__key", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/tas6424.c", i32 768, i32 3}
!59 = !{ptr @tas6424_i2c_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tas6424_i2c_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @tas6424_regmap_config, !62, !"tas6424_regmap_config", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/tas6424.c", i32 664, i32 35}
!63 = !{ptr @tas6424_reg_defaults, !64, !"tas6424_reg_defaults", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/tas6424.c", i32 591, i32 33}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/tas6424.c", i32 33, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/tas6424.c", i32 34, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/tas6424.c", i32 35, i32 2}
!71 = distinct !{null, !72, !"tas6424_supply_names", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/tas6424.c", i32 32, i32 27}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/tas6424.c", i32 413, i32 3}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tas6424_fault_check_work._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tas6424_fault_check_work._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/tas6424.c", i32 429, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tas6424_fault_check_work._entry.36, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tas6424_fault_check_work._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/tas6424.c", i32 432, i32 3}
!85 = !{ptr @tas6424_fault_check_work._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tas6424_fault_check_work._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/tas6424.c", i32 435, i32 3}
!89 = !{ptr @tas6424_fault_check_work._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tas6424_fault_check_work._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/tas6424.c", i32 438, i32 3}
!93 = !{ptr @tas6424_fault_check_work._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tas6424_fault_check_work._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/tas6424.c", i32 441, i32 3}
!97 = !{ptr @tas6424_fault_check_work._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @tas6424_fault_check_work._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/tas6424.c", i32 444, i32 3}
!101 = !{ptr @tas6424_fault_check_work._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @tas6424_fault_check_work._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/tas6424.c", i32 447, i32 3}
!105 = !{ptr @tas6424_fault_check_work._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @tas6424_fault_check_work._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/tas6424.c", i32 450, i32 3}
!109 = !{ptr @tas6424_fault_check_work._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tas6424_fault_check_work._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/tas6424.c", i32 458, i32 3}
!113 = !{ptr @tas6424_fault_check_work._entry.61, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tas6424_fault_check_work._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/tas6424.c", i32 480, i32 3}
!117 = !{ptr @tas6424_fault_check_work._entry.64, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tas6424_fault_check_work._entry_ptr.66, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/tas6424.c", i32 483, i32 3}
!121 = !{ptr @tas6424_fault_check_work._entry.67, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @tas6424_fault_check_work._entry_ptr.69, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/tas6424.c", i32 486, i32 3}
!125 = !{ptr @tas6424_fault_check_work._entry.70, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @tas6424_fault_check_work._entry_ptr.72, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/tas6424.c", i32 489, i32 3}
!129 = !{ptr @tas6424_fault_check_work._entry.73, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @tas6424_fault_check_work._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.77, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/tas6424.c", i32 497, i32 3}
!133 = !{ptr @tas6424_fault_check_work._entry.76, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @tas6424_fault_check_work._entry_ptr.78, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/tas6424.c", i32 513, i32 3}
!137 = !{ptr @tas6424_fault_check_work._entry.79, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @tas6424_fault_check_work._entry_ptr.81, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/tas6424.c", i32 516, i32 3}
!141 = !{ptr @tas6424_fault_check_work._entry.82, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @tas6424_fault_check_work._entry_ptr.84, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/tas6424.c", i32 519, i32 3}
!145 = !{ptr @tas6424_fault_check_work._entry.85, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @tas6424_fault_check_work._entry_ptr.87, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tas6424.c", i32 522, i32 3}
!149 = !{ptr @tas6424_fault_check_work._entry.88, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @tas6424_fault_check_work._entry_ptr.90, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.92, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/tas6424.c", i32 525, i32 3}
!153 = !{ptr @tas6424_fault_check_work._entry.91, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @tas6424_fault_check_work._entry_ptr.93, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.95, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/tas6424.c", i32 533, i32 3}
!157 = !{ptr @tas6424_fault_check_work._entry.94, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @tas6424_fault_check_work._entry_ptr.96, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.98, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/tas6424.c", i32 551, i32 3}
!161 = !{ptr @.str.99, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @tas6424_fault_check_work._entry.97, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @tas6424_fault_check_work._entry_ptr.100, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.102, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/tas6424.c", i32 554, i32 3}
!166 = !{ptr @tas6424_fault_check_work._entry.101, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @tas6424_fault_check_work._entry_ptr.103, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.105, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/tas6424.c", i32 557, i32 3}
!170 = !{ptr @tas6424_fault_check_work._entry.104, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @tas6424_fault_check_work._entry_ptr.106, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/tas6424.c", i32 560, i32 3}
!174 = !{ptr @tas6424_fault_check_work._entry.107, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @tas6424_fault_check_work._entry_ptr.109, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.111, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/tas6424.c", i32 563, i32 3}
!178 = !{ptr @tas6424_fault_check_work._entry.110, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @tas6424_fault_check_work._entry_ptr.112, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.114, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/tas6424.c", i32 566, i32 3}
!182 = !{ptr @tas6424_fault_check_work._entry.113, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @tas6424_fault_check_work._entry_ptr.115, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.117, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/tas6424.c", i32 569, i32 3}
!186 = !{ptr @tas6424_fault_check_work._entry.116, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @tas6424_fault_check_work._entry_ptr.118, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.120, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/tas6424.c", i32 578, i32 3}
!190 = !{ptr @tas6424_fault_check_work._entry.119, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tas6424_fault_check_work._entry_ptr.121, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @tas6424_fault_check_work._entry.122, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/tas6424.c", i32 583, i32 3}
!194 = !{ptr @tas6424_fault_check_work._entry_ptr.123, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @soc_codec_dev_tas6424, !196, !"soc_codec_dev_tas6424", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/tas6424.c", i32 368, i32 40}
!197 = !{ptr @.str.124, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/tas6424.c", i32 60, i32 2}
!199 = !{ptr @.str.125, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/tas6424.c", i32 62, i32 2}
!201 = !{ptr @.str.127, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/tas6424.c", i32 64, i32 2}
!203 = !{ptr @.str.129, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/tas6424.c", i32 66, i32 2}
!205 = !{ptr @.str.131, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/tas6424.c", i32 68, i32 2}
!207 = !{ptr @tas6424_snd_controls, !208, !"tas6424_snd_controls", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/tas6424.c", i32 59, i32 38}
!209 = !{ptr @dac_tlv, !210, !"dac_tlv", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/tas6424.c", i32 57, i32 8}
!211 = !{ptr @.str.133, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/tas6424.c", i32 99, i32 2}
!213 = !{ptr @.str.134, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.135, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/tas6424.c", i32 100, i32 2}
!216 = !{ptr @.str.136, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/tas6424.c", i32 102, i32 2}
!218 = !{ptr @tas6424_dapm_widgets, !219, !"tas6424_dapm_widgets", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/tas6424.c", i32 98, i32 41}
!220 = !{ptr @.str.138, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/tas6424.c", i32 78, i32 2}
!222 = !{ptr @.str.139, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.140, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @tas6424_dac_event.__UNIQUE_ID_ddebug295, !221, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!225 = !{ptr @tas6424_audio_map, !226, !"tas6424_audio_map", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/tas6424.c", i32 105, i32 40}
!227 = !{ptr @.str.141, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/tas6424.c", i32 350, i32 2}
!229 = !{ptr @.str.142, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @tas6424_set_bias_level.__UNIQUE_ID_ddebug300, !228, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!231 = !{ptr @.str.143, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/tas6424.c", i32 312, i32 3}
!233 = !{ptr @.str.144, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @tas6424_power_on._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @tas6424_power_on._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.146, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/tas6424.c", i32 320, i32 3}
!238 = !{ptr @tas6424_power_on._entry.145, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @tas6424_power_on._entry_ptr.147, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.148, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/tas6424.c", i32 291, i32 3}
!242 = !{ptr @.str.149, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @tas6424_power_off._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @tas6424_power_off._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.150, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/tas6424.c", i32 391, i32 11}
!247 = !{ptr @tas6424_dai, !248, !"tas6424_dai", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/tas6424.c", i32 389, i32 34}
!249 = !{ptr @tas6424_speaker_dai_ops, !250, !"tas6424_speaker_dai_ops", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/tas6424.c", i32 381, i32 37}
!251 = !{ptr @.str.151, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/tas6424.c", i32 160, i32 2}
!253 = !{ptr @.str.152, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @tas6424_set_dai_fmt.__UNIQUE_ID_ddebug297, !252, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!255 = !{ptr @.str.153, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/tas6424.c", i32 167, i32 3}
!257 = !{ptr @tas6424_set_dai_fmt._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @tas6424_set_dai_fmt._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.155, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/tas6424.c", i32 176, i32 3}
!261 = !{ptr @tas6424_set_dai_fmt._entry.154, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @tas6424_set_dai_fmt._entry_ptr.156, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.158, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/tas6424.c", i32 200, i32 3}
!265 = !{ptr @tas6424_set_dai_fmt._entry.157, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @tas6424_set_dai_fmt._entry_ptr.159, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.160, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/tas6424.c", i32 218, i32 2}
!269 = !{ptr @.str.161, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @tas6424_set_dai_tdm_slot.__UNIQUE_ID_ddebug298, !268, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!271 = !{ptr @.str.162, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/tas6424.c", i32 233, i32 3}
!273 = !{ptr @tas6424_set_dai_tdm_slot._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @tas6424_set_dai_tdm_slot._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.164, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/tas6424.c", i32 245, i32 3}
!277 = !{ptr @tas6424_set_dai_tdm_slot._entry.163, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @tas6424_set_dai_tdm_slot._entry_ptr.165, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.166, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/tas6424.c", i32 261, i32 2}
!281 = !{ptr @.str.167, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @tas6424_mute.__UNIQUE_ID_ddebug299, !280, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!283 = !{ptr @.str.168, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/tas6424.c", i32 119, i32 2}
!285 = !{ptr @.str.169, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @tas6424_hw_params.__UNIQUE_ID_ddebug296, !284, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!287 = !{ptr @.str.170, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/tas6424.c", i32 132, i32 3}
!289 = !{ptr @tas6424_hw_params._entry, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @tas6424_hw_params._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.172, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/tas6424.c", i32 143, i32 3}
!293 = !{ptr @tas6424_hw_params._entry.171, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @tas6424_hw_params._entry_ptr.173, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.174, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/tas6424.c", i32 790, i32 3}
!297 = !{ptr @.str.175, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @tas6424_i2c_remove._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @tas6424_i2c_remove._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @tas6424_of_ids, !301, !"tas6424_of_ids", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/tas6424.c", i32 678, i32 34}
!302 = !{ptr @tas6424_i2c_ids, !303, !"tas6424_i2c_ids", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/tas6424.c", i32 797, i32 35}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{!"auto-init"}
!314 = !{i64 2148975583, i64 2148975588, i64 2148975601, i64 2148975645, i64 2148975679, i64 2148975700}
!315 = !{i32 0, i32 33}
