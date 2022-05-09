; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5651.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5651.c"
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
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.rt5651_priv = type { ptr, ptr, ptr, ptr, %struct.work_struct, %struct.delayed_work, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_rt5651__311_2287_rt5651_i2c_driver_init6 = internal global ptr @rt5651_i2c_driver_init, section ".initcall6.init", align 4
@rt5651_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5651_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5651_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5651_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5651_i2c_driver_exit = internal global ptr @rt5651_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description312 = internal constant [46 x i8] c"snd_soc_rt5651.description=ASoC RT5651 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [55 x i8] c"snd_soc_rt5651.author=Bard Liao <bardliao@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [52 x i8] c"snd_soc_rt5651.file=sound/soc/codecs/snd-soc-rt5651\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [30 x i8] c"snd_soc_rt5651.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5651\00", [25 x i8] zeroinitializer }, align 32
@rt5651_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5651\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5651_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5651\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5651_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5651_readable_register, ptr @rt5651_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5651_reg, i32 80, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5651_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5651:2226:(&rt5651_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5651_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5651.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry_ptr = internal global ptr @rt5651_i2c_probe._entry, section ".printk_index", align 4
@rt5651_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device with ID register %#x is not rt5651\0A\00", [53 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry_ptr.9 = internal global ptr @rt5651_i2c_probe._entry.7, section ".printk_index", align 4
@init_list = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 317, i32 15872, i32 0 }], [20 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 2249, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry_ptr.13 = internal global ptr @rt5651_i2c_probe._entry.10, section ".printk_index", align 4
@rt5651_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&rt5651->bp_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&rt5651->bp_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&rt5651->jack_detect_work)\00", [51 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 2267, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to reguest IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rt5651_i2c_probe._entry_ptr.21 = internal global ptr @rt5651_i2c_probe._entry.19, section ".printk_index", align 4
@soc_component_dev_rt5651 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5651_snd_controls, i32 18, ptr @rt5651_dapm_widgets, i32 108, ptr @rt5651_dapm_routes, i32 159, ptr @rt5651_probe, ptr null, ptr @rt5651_suspend, ptr @rt5651_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5651_set_jack, ptr null, ptr null, ptr null, ptr null, ptr @rt5651_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5651_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.305, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5651_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.140, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.138, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.306, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5651_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.144, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.142, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@rt5651_reg = internal constant { [80 x %struct.reg_default], [160 x i8] } { [80 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 16, i32 2056 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 3072 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 39, i32 30816 }, %struct.reg_default { i32 40, i32 28784 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 21074 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 20480 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 111 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 111 }, %struct.reg_default { i32 69, i32 24576 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 633 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 633 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 192 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 115, i32 4356 }, %struct.reg_default { i32 116, i32 3072 }, %struct.reg_default { i32 117, i32 5120 }, %struct.reg_default { i32 119, i32 3072 }, %struct.reg_default { i32 120, i32 16384 }, %struct.reg_default { i32 121, i32 291 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 2048 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 8 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 147, i32 8192 }, %struct.reg_default { i32 148, i32 512 }, %struct.reg_default { i32 176, i32 8320 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 180, i32 8710 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 1024 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 207, i32 19 }, %struct.reg_default { i32 208, i32 1664 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 45856 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 250, i32 16 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25217 }], [160 x i8] zeroinitializer }, align 32
@rt5651_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.22, i32 256, i32 436, i32 106, i32 255, i32 0, i32 108, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@rt5651_button_press_work.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5651\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt5651_button_press_work\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"headset button press\0A\00", [42 x i8] zeroinitializer }, align 32
@rt5651_button_press_work.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.4, ptr @.str.26, i8 1, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"headset button release\0A\00", [40 x i8] zeroinitializer }, align 32
@rt5651_jack_inserted.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 1, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5651_jack_inserted\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jack-detect gpio %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5651_jack_inserted.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.4, ptr @.str.29, i8 1, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq status %#04x\0A\00", [46 x i8] zeroinitializer }, align 32
@rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 1, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5651_micbias1_ovcd\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq ctrl2 %#04x\0A\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5651_jack_detect_work.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 1, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5651_jack_detect_work\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jack unplugged\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5651_jack_detect_work.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.32, ptr @.str.4, ptr @.str.34, i8 1, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"detect report %#02x\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5651_jack_detect_work.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.32, ptr @.str.4, ptr @.str.35, i8 1, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OVCD IRQ\0A\00", [22 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Platform Clock\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"micbias1\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LDO\00", [28 x i8] zeroinitializer }, align 32
@rt5651_detect_headset.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 1, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5651_detect_headset\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mic-gnd shorted\0A\00", [47 x i8] zeroinitializer }, align 32
@rt5651_detect_headset.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 1, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mic-gnd open\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5651_detect_headset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.4, i32 1767, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Error detecting headset vs headphones, bad contact?, assuming headphones\0A\00", [54 x i8] zeroinitializer }, align 32
@rt5651_detect_headset._entry_ptr = internal global ptr @rt5651_detect_headset._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5651_snd_controls = internal constant { [18 x %struct.snd_kcontrol_new], [192 x i8] } { [18 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_if2_adc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_if2_dac_enum to i32) }], [192 x i8] zeroinitializer }, align 32
@rt5651_dapm_routes = internal constant { [159 x %struct.snd_soc_dapm_route], [2068 x i8] } { [159 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.193, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.195, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.197, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.199, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.201, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.195, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.197, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.199, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.207, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.208, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.211, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.208, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.211, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.208, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.207, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.208, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.214, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.156, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.156, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.216, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.157, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.218, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.220, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.157, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.221, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.223, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.221, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.223, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.221, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.223, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.221, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.223, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.126, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.129, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.235, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.237, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.235, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.237, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.242, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.243, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.242, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.243, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.245, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.247, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.249, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.249, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.252, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.245, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.233, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.208, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.233, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.208, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.245, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.247, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.252, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.249, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.252, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.247, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.199, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.197, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.193, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.264, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.245, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.197, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.199, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.201, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.270, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.249, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.273, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.273, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.273, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.273, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.278, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.280, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.278, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.280, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.245, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.249, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.284, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.286, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.273, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.273, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.273, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.273, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2068 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 3, i32 3, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 13, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -6562, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 25, i32 25, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mono DAC Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 26, i32 26, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN1 Boost\00", [22 x i8] zeroinitializer }, align 32
@bst_tlv = internal constant { [44 x i32], [48 x i8] } { [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN2 Boost\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN3 Boost\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 14, i32 14, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IN Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -1762, i32 3000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 28, i32 28, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mono ADC Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 29, i32 29, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC Boost Gain\00", [17 x i8] zeroinitializer }, align 32
@adc_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF1 ASRC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 131, i32 131, i32 15, i32 15, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF2 ASRC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 131, i32 131, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMIC ASRC Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 131, i32 131, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC IF2 Data Switch\00", [44 x i8] zeroinitializer }, align 32
@rt5651_if2_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 8, i8 8, i32 4, i32 3, ptr @rt5651_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC IF2 Data Switch\00", [44 x i8] zeroinitializer }, align 32
@rt5651_if2_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 10, i8 10, i32 4, i32 3, ptr @rt5651_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_data_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Swap\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"left copy to right\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"right copy to left\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S1 ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S2 ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STO1 DAC ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STO2 DAC ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC ASRC\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC3\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2P\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2N\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3P\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L1\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R1\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST1\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST2\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST3\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INL1 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INR1 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INL2 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INR2 VOL\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXL\00", [24 x i8] zeroinitializer }, align 32
@rt5651_rec_l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXR\00", [24 x i8] zeroinitializer }, align 32
@rt5651_rec_r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC L Power\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC R Power\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto1_adc_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_stereo1_adc2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto1_adc_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_stereo1_adc2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto1_adc_l1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_stereo1_adc1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto1_adc_r1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_stereo1_adc1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC L2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_sto2_adc_l2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC L1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.215, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_sto2_adc_l1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC R1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_sto2_adc_r1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC R2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_sto2_adc_r2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stereo1 Filter\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stereo2 Filter\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@rt5651_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@rt5651_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 L\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 R\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 ADC1\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC2 L\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC2 R\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 ADC2\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF2 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 DAC L\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 DAC R\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF2 ADC\00", [24 x i8] zeroinitializer }, align 32
@rt5651_if2_adc_src_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_if2_adc_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PDM L Mux\00", [22 x i8] zeroinitializer }, align 32
@rt5651_pdm_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_pdm_l_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PDM R Mux\00", [22 x i8] zeroinitializer }, align 32
@rt5651_pdm_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_pdm_r_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2RX\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Audio DSP\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5651_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.235, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5651_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.235, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC L2 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5651_dac_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_dac_l2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC R2 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5651_dac_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5651_dac_r2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stero1 DAC Power\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stero2 DAC Power\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXL\00", [16 x i8] zeroinitializer }, align 32
@rt5651_sto_dac_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXR\00", [16 x i8] zeroinitializer }, align 32
@rt5651_sto_dac_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DD MIXL\00", [24 x i8] zeroinitializer }, align 32
@rt5651_dd_dac_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DD MIXR\00", [24 x i8] zeroinitializer }, align 32
@rt5651_dd_dac_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC L1 Power\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC R1 Power\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5651_out_l_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5651_out_r_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUTVOL L\00", [23 x i8] zeroinitializer }, align 32
@outvol_l_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUTVOL R\00", [23 x i8] zeroinitializer }, align 32
@outvol_r_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOVOL L\00", [23 x i8] zeroinitializer }, align 32
@hpovol_l_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOVOL R\00", [23 x i8] zeroinitializer }, align 32
@hpovol_r_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INL1\00", [27 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INR1\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INL2\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INR2\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOL MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5651_hpo_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.278, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOR MIX\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP L Amp\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP R Amp\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5651_lout_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Amp Power\00", [22 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Amp\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HPO L Playback\00", [17 x i8] zeroinitializer }, align 32
@hpo_l_mute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HPO R Playback\00", [17 x i8] zeroinitializer }, align 32
@hpo_r_mute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOUT L Playback\00", [16 x i8] zeroinitializer }, align 32
@lout_l_mute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOUT R Playback\00", [16 x i8] zeroinitializer }, align 32
@lout_r_mute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HP Post\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTR\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PDML\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PDMR\00", [27 x i8] zeroinitializer }, align 32
@rt5651_dapm_widgets = internal constant { [108 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4848 x i8] } { [108 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 132, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 132, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 132, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 132, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 132, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5651_bst1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5651_bst2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5651_bst3_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5651_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5651_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto1_adc_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto1_adc_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto1_adc_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto1_adc_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto2_adc_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto2_adc_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto2_adc_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_sto2_adc_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_sto2_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_sto2_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_if2_adc_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 14, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_pdm_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 12, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_pdm_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.137, ptr @.str.138, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.139, ptr @.str.140, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.141, ptr @.str.142, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.143, ptr @.str.144, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_dac_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5651_dac_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5651_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5651_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5651_dd_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5651_dd_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5651_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5651_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @outvol_l_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @outvol_r_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpovol_l_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpovol_r_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5651_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5651_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @rt5651_amp_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5651_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpo_l_mute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpo_r_mute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lout_l_mute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lout_r_mute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @rt5651_hp_post_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4848 x i8] zeroinitializer }, align 32
@set_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set DMIC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_dmic_clk\00", [19 x i8] zeroinitializer }, align 32
@set_dmic_clk._entry_ptr = internal global ptr @set_dmic_clk._entry, section ".printk_index", align 4
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INL1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INR1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stereo1 ADC L2 source\00", [42 x i8] zeroinitializer }, align 32
@rt5651_stereo1_adc2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 11, i8 11, i32 2, i32 1, ptr @rt5651_stereo1_adc2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_stereo1_adc2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.207, ptr @.str.208], [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DD MIX\00", [25 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stereo1 ADC R2 source\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stereo1 ADC L1 source\00", [42 x i8] zeroinitializer }, align 32
@rt5651_stereo1_adc1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 12, i8 12, i32 2, i32 1, ptr @rt5651_stereo1_adc1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_stereo1_adc1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.208, ptr @.str.211], [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stereo1 ADC R1 source\00", [42 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stereo2 ADC2 left source\00", [39 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 11, i8 11, i32 2, i32 1, ptr @rt5651_sto2_adc_l2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.214, ptr @.str.156], [24 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC L\00", [25 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stereo2 ADC1 left source\00", [39 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 12, i8 12, i32 2, i32 1, ptr @rt5651_sto2_adc_l1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_l1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.156, ptr @.str.216], [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Stereo2 ADC1 right source\00", [38 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 4, i8 4, i32 2, i32 1, ptr @rt5651_sto2_adc_r1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.157, ptr @.str.218], [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Stereo2 ADC2 right source\00", [38 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 3, i8 3, i32 2, i32 1, ptr @rt5651_sto2_adc_r2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_sto2_adc_r2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.220, ptr @.str.157], [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC R\00", [25 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IF2 ADC channel source\00", [41 x i8] zeroinitializer }, align 32
@rt5651_if2_adc_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 7, i8 7, i32 2, i32 1, ptr @rt5651_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_adc_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.126, ptr @.str.129], [24 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PDM L select\00", [19 x i8] zeroinitializer }, align 32
@rt5651_pdm_l_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 15, i8 15, i32 2, i32 1, ptr @rt5651_pdm_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_pdm_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.208, ptr @.str.233], [24 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stereo DAC MIX\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PDM R select\00", [19 x i8] zeroinitializer }, align 32
@rt5651_pdm_r_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 13, i8 13, i32 2, i32 1, ptr @rt5651_pdm_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo ADC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INF1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DAC2 left channel source\00", [39 x i8] zeroinitializer }, align 32
@rt5651_dac_l2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 27, i8 11, i8 11, i32 2, i32 1, ptr @rt5651_dac_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5651_dac_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.242, ptr @.str.243], [24 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IF1\00", [28 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IF2\00", [28 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DAC2 right channel source\00", [38 x i8] zeroinitializer }, align 32
@rt5651_dac_r2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 27, i8 10, i8 10, i32 2, i32 1, ptr @rt5651_dac_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REC MIXL Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REC MIXR Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HPO MIX DAC1 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HPO MIX HPVOL Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTVOL L Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTVOL R Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 15, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 7, i32 7, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 15, i32 15, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 7, i32 7, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"realtek,in2-differential\00", [39 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"realtek,dmic-en\00", [16 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"realtek,jack-detect-source\00", [37 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"realtek,jack-detect-not-inverted\00", [63 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"realtek,over-current-threshold-microamp\00", [56 x i8] zeroinitializer }, align 32
@rt5651_apply_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.298, ptr @.str.4, i32 2044, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Warning: Invalid over-current-threshold-microamp value: %d, defaulting to 2000uA\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5651_apply_properties\00", [40 x i8] zeroinitializer }, align 32
@rt5651_apply_properties._entry_ptr = internal global ptr @rt5651_apply_properties._entry, section ".printk_index", align 4
@.str.299 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"realtek,over-current-scale-factor\00", [62 x i8] zeroinitializer }, align 32
@rt5651_apply_properties._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.298, ptr @.str.4, i32 2054, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Warning: Invalid over-current-scale-factor value: %d, defaulting to 0.75\0A\00", [54 x i8] zeroinitializer }, align 32
@rt5651_apply_properties._entry_ptr.302 = internal global ptr @rt5651_apply_properties._entry.300, section ".printk_index", align 4
@rt5651_enable_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.304, ptr @.str.4, i32 1917, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Currently only JD1_1 / JD1_2 / JD2 are supported\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt5651_enable_jack_detect\00", [38 x i8] zeroinitializer }, align 32
@rt5651_enable_jack_detect._entry_ptr = internal global ptr @rt5651_enable_jack_detect._entry, section ".printk_index", align 4
@.str.305 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5651-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5651_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rt5651_set_dai_sysclk, ptr @rt5651_set_dai_pll, ptr null, ptr null, ptr @rt5651_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5651_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5651-aif2\00", [20 x i8] zeroinitializer }, align 32
@rt5651_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.308, ptr @.str.4, i32 1433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5651_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@rt5651_set_dai_sysclk._entry_ptr = internal global ptr @rt5651_set_dai_sysclk._entry, section ".printk_index", align 4
@rt5651_set_dai_sysclk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.308, ptr @.str.4, ptr @.str.309, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.309 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5651_set_dai_pll.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.310, ptr @.str.4, ptr @.str.311, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.310 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5651_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5651_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.310, ptr @.str.4, i32 1484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5651_set_dai_pll._entry_ptr = internal global ptr @rt5651_set_dai_pll._entry, section ".printk_index", align 4
@rt5651_set_dai_pll._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.310, ptr @.str.4, i32 1490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5651_set_dai_pll._entry_ptr.315 = internal global ptr @rt5651_set_dai_pll._entry.313, section ".printk_index", align 4
@rt5651_set_dai_pll.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.310, ptr @.str.4, ptr @.str.316, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.316 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5651_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.318, ptr @.str.4, i32 1404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong dai->id: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5651_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@rt5651_set_dai_fmt._entry_ptr = internal global ptr @rt5651_set_dai_fmt._entry, section ".printk_index", align 4
@rt5651_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.320, ptr @.str.4, i32 1293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported clock setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5651_hw_params\00", [47 x i8] zeroinitializer }, align 32
@rt5651_hw_params._entry_ptr = internal global ptr @rt5651_hw_params._entry, section ".printk_index", align 4
@rt5651_hw_params._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.320, ptr @.str.4, i32 1298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5651_hw_params._entry_ptr.323 = internal global ptr @rt5651_hw_params._entry.321, section ".printk_index", align 4
@rt5651_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.320, ptr @.str.4, ptr @.str.324, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5651_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.320, ptr @.str.4, ptr @.str.325, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.325 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rt5651_hw_params._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.320, ptr @.str.4, i32 1341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rt5651_hw_params._entry_ptr.327 = internal global ptr @rt5651_hw_params._entry.326, section ".printk_index", align 4
@switch.table.rt5651_set_dai_sysclk = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 512, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.rt5651_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12, i32 0, i32 0, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [102 x i64] [i64 100, i64 32, i64 0, i64 2, i64 3, i64 5, i64 13, i64 14, i64 15, i64 16, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 39, i64 40, i64 41, i64 42, i64 43, i64 47, i64 48, i64 59, i64 60, i64 61, i64 62, i64 69, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 106, i64 108, i64 112, i64 113, i64 115, i64 116, i64 117, i64 119, i64 120, i64 121, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 137, i64 138, i64 142, i64 143, i64 144, i64 145, i64 147, i64 148, i64 176, i64 177, i64 180, i64 181, i64 182, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 211, i64 212, i64 214, i64 215, i64 217, i64 218, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.328 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 108, i64 176, i64 180, i64 190, i64 191, i64 200, i64 202, i64 254, i64 255]
@__sancov_gen_cov_switch_values.329 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.330 = internal global [5 x i64] [i64 3, i64 32, i64 600, i64 1500, i64 2000]
@__sancov_gen_cov_switch_values.331 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.332 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.334 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.335 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.336 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.338 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.339 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.340 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.341 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"rt5651_i2c_driver\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2278, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2280, i32 11 }
@___asan_gen_.348 = private unnamed_addr constant [16 x i8] c"rt5651_of_match\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2186, i32 34 }
@___asan_gen_.351 = private unnamed_addr constant [14 x i8] c"rt5651_i2c_id\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2202, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [14 x i8] c"rt5651_regmap\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2167, i32 35 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2226, i32 19 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2229, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2239, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [10 x i8] c"init_list\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 48, i32 34 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2249, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2254, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2255, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2266, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5651\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2150, i32 46 }
@___asan_gen_.426 = private unnamed_addr constant [11 x i8] c"rt5651_dai\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2109, i32 34 }
@___asan_gen_.429 = private unnamed_addr constant [11 x i8] c"rt5651_reg\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 52, i32 33 }
@___asan_gen_.432 = private unnamed_addr constant [14 x i8] c"rt5651_ranges\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 38, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 39, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1707, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1715, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1624, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1629, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1612, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1798, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1805, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1815, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1576, i32 42 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1577, i32 42 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1578, i32 42 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1753, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1759, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1767, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [20 x i8] c"rt5651_snd_controls\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 314, i32 38 }
@___asan_gen_.504 = private unnamed_addr constant [19 x i8] c"rt5651_dapm_routes\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1080, i32 40 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 316, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 287, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 319, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 323, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 325, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 288, i32 14 }
@___asan_gen_.528 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 328, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 332, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [8 x i8] c"bst_tlv\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 294, i32 14 }
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 334, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 336, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 339, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 289, i32 14 }
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 343, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 345, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 290, i32 14 }
@___asan_gen_.565 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 348, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 352, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [12 x i8] c"adc_bst_tlv\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 291, i32 14 }
@___asan_gen_.576 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 357, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 359, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 361, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 364, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [20 x i8] c"rt5651_if2_adc_enum\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 311, i32 8 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 365, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [20 x i8] c"rt5651_if2_dac_enum\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 308, i32 8 }
@___asan_gen_.601 = private unnamed_addr constant [19 x i8] c"rt5651_data_select\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 305, i32 27 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 306, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 306, i32 12 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 306, i32 20 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 306, i32 42 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 855, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 857, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 859, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 861, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 863, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 872, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 873, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 874, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 876, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 877, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 878, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 879, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 880, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 881, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 882, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 885, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 888, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 891, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 895, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 897, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 899, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 901, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 905, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant [17 x i8] c"rt5651_rec_l_mix\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 475, i32 38 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 907, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [17 x i8] c"rt5651_rec_r_mix\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 486, i32 38 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 910, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 911, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 912, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 914, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 917, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [23 x i8] c"rt5651_sto1_adc_l2_mux\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 594, i32 38 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 919, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [23 x i8] c"rt5651_sto1_adc_r2_mux\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 597, i32 38 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 921, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [23 x i8] c"rt5651_sto1_adc_l1_mux\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 582, i32 38 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 923, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [23 x i8] c"rt5651_sto1_adc_r1_mux\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 585, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 925, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_l2_mux\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 616, i32 38 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 927, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_l1_mux\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 607, i32 38 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 929, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_r1_mux\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 625, i32 38 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 931, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_r2_mux\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 634, i32 38 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 934, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 936, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 938, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [22 x i8] c"rt5651_sto1_adc_l_mix\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 396, i32 38 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 941, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [22 x i8] c"rt5651_sto1_adc_r_mix\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 403, i32 38 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 944, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [22 x i8] c"rt5651_sto2_adc_l_mix\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 410, i32 38 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 947, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [22 x i8] c"rt5651_sto2_adc_r_mix\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 417, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 952, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 954, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 955, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 956, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 957, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 958, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 959, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 960, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 961, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 963, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 964, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 965, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 966, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [23 x i8] c"rt5651_if2_adc_src_mux\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 661, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 971, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [17 x i8] c"rt5651_pdm_l_mux\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 675, i32 38 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 973, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"rt5651_pdm_r_mux\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 678, i32 38 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 976, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 977, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 978, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 979, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 982, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 986, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant [17 x i8] c"rt5651_dac_l_mix\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 424, i32 38 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 988, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant [17 x i8] c"rt5651_dac_r_mix\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 431, i32 38 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 992, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [18 x i8] c"rt5651_dac_l2_mux\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 644, i32 38 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 993, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant [18 x i8] c"rt5651_dac_r2_mux\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 651, i32 38 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 994, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 995, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 997, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 999, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1002, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant [21 x i8] c"rt5651_sto_dac_l_mix\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 438, i32 38 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1005, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c"rt5651_sto_dac_r_mix\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 447, i32 38 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1008, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant [20 x i8] c"rt5651_dd_dac_l_mix\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 456, i32 38 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1011, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [20 x i8] c"rt5651_dd_dac_r_mix\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 465, i32 38 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1016, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1017, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1018, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1020, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1023, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant [17 x i8] c"rt5651_out_l_mix\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 499, i32 38 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1025, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant [17 x i8] c"rt5651_out_r_mix\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 512, i32 38 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1028, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [17 x i8] c"outvol_l_control\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 543, i32 38 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1030, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant [17 x i8] c"outvol_r_control\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 547, i32 38 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1032, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant [17 x i8] c"hpovol_l_control\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 559, i32 38 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1034, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant [17 x i8] c"hpovol_r_control\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 563, i32 38 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1036, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1038, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1040, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1042, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1045, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [15 x i8] c"rt5651_hpo_mix\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 525, i32 38 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1047, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1049, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1051, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1053, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [16 x i8] c"rt5651_lout_mix\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 532, i32 38 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1056, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1059, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1061, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant [19 x i8] c"hpo_l_mute_control\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 567, i32 38 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1063, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant [19 x i8] c"hpo_r_mute_control\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 571, i32 38 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1065, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant [20 x i8] c"lout_l_mute_control\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 551, i32 38 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1067, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant [20 x i8] c"lout_r_mute_control\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 555, i32 38 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1069, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1072, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1073, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1074, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1075, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1076, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1077, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant [20 x i8] c"rt5651_dapm_widgets\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 853, i32 41 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 387, i32 3 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 476, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 478, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 480, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 482, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 487, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 595, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [25 x i8] c"rt5651_stereo1_adc2_enum\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 590, i32 8 }
@___asan_gen_.1098 = private unnamed_addr constant [24 x i8] c"rt5651_stereo1_adc2_src\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 588, i32 27 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 588, i32 56 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 588, i32 64 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 598, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 583, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant [25 x i8] c"rt5651_stereo1_adc1_enum\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 578, i32 8 }
@___asan_gen_.1116 = private unnamed_addr constant [24 x i8] c"rt5651_stereo1_adc1_src\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 576, i32 27 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 576, i32 66 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 586, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 617, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant [24 x i8] c"rt5651_sto2_adc_l2_enum\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 612, i32 8 }
@___asan_gen_.1131 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_l2_src\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 610, i32 27 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 610, i32 55 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 608, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant [24 x i8] c"rt5651_sto2_adc_l1_enum\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 603, i32 8 }
@___asan_gen_.1143 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_l1_src\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 601, i32 27 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 601, i32 66 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 626, i32 2 }
@___asan_gen_.1152 = private unnamed_addr constant [24 x i8] c"rt5651_sto2_adc_r1_enum\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 621, i32 8 }
@___asan_gen_.1155 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_r1_src\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 619, i32 27 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 619, i32 66 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 635, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant [24 x i8] c"rt5651_sto2_adc_r2_enum\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 630, i32 8 }
@___asan_gen_.1167 = private unnamed_addr constant [23 x i8] c"rt5651_sto2_adc_r2_src\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 628, i32 27 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 628, i32 55 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 397, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 399, i32 2 }
@___asan_gen_.1180 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.1183 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.1186 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 662, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant [24 x i8] c"rt5651_if2_adc_src_enum\00", align 1
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 658, i32 8 }
@___asan_gen_.1193 = private unnamed_addr constant [15 x i8] c"rt5651_adc_src\00", align 1
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 656, i32 27 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 676, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant [22 x i8] c"rt5651_pdm_l_sel_enum\00", align 1
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 667, i32 8 }
@___asan_gen_.1202 = private unnamed_addr constant [15 x i8] c"rt5651_pdm_sel\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 665, i32 27 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 665, i32 57 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 679, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant [22 x i8] c"rt5651_pdm_r_sel_enum\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 671, i32 8 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 425, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 427, i32 2 }
@___asan_gen_.1221 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1223 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 645, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant [19 x i8] c"rt5651_dac_l2_enum\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 641, i32 8 }
@___asan_gen_.1230 = private unnamed_addr constant [15 x i8] c"rt5651_dac_src\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 639, i32 27 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 639, i32 47 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 639, i32 54 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 652, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant [19 x i8] c"rt5651_dac_r2_enum\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 647, i32 8 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 439, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 441, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 443, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 450, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 506, i32 2 }
@___asan_gen_.1275 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1277 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 519, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 544, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 526, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 528, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 537, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 539, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1313 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2007, i32 48 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2011, i32 48 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2016, i32 10 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2019, i32 48 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2031, i32 4 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2043, i32 4 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2049, i32 4 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2053, i32 4 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1917, i32 3 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2111, i32 11 }
@___asan_gen_.1359 = private unnamed_addr constant [19 x i8] c"rt5651_aif_dai_ops\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2102, i32 37 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 2130, i32 11 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1433, i32 3 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1443, i32 2 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1461, i32 3 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1484, i32 3 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1490, i32 3 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1494, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1404, i32 3 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1293, i32 3 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1298, i32 3 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1304, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1306, i32 2 }
@___asan_gen_.1428 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1429 = private constant [29 x i8] c"../sound/soc/codecs/rt5651.c\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1429, i32 1341, i32 3 }
@___asan_gen_.1431 = private unnamed_addr constant [35 x i8] c"switch.table.rt5651_set_dai_sysclk\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant [30 x i8] c"switch.table.rt5651_hw_params\00", align 1
@llvm.compiler.used = appending global [436 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_rt5651_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5651__311_2287_rt5651_i2c_driver_init6, ptr @rt5651_apply_properties._entry, ptr @rt5651_apply_properties._entry.300, ptr @rt5651_apply_properties._entry_ptr, ptr @rt5651_apply_properties._entry_ptr.302, ptr @rt5651_detect_headset._entry, ptr @rt5651_detect_headset._entry_ptr, ptr @rt5651_enable_jack_detect._entry, ptr @rt5651_enable_jack_detect._entry_ptr, ptr @rt5651_hw_params._entry, ptr @rt5651_hw_params._entry.321, ptr @rt5651_hw_params._entry.326, ptr @rt5651_hw_params._entry_ptr, ptr @rt5651_hw_params._entry_ptr.323, ptr @rt5651_hw_params._entry_ptr.327, ptr @rt5651_i2c_driver_exit, ptr @rt5651_i2c_probe._entry, ptr @rt5651_i2c_probe._entry.10, ptr @rt5651_i2c_probe._entry.19, ptr @rt5651_i2c_probe._entry.7, ptr @rt5651_i2c_probe._entry_ptr, ptr @rt5651_i2c_probe._entry_ptr.13, ptr @rt5651_i2c_probe._entry_ptr.21, ptr @rt5651_i2c_probe._entry_ptr.9, ptr @rt5651_set_dai_fmt._entry, ptr @rt5651_set_dai_fmt._entry_ptr, ptr @rt5651_set_dai_pll._entry, ptr @rt5651_set_dai_pll._entry.313, ptr @rt5651_set_dai_pll._entry_ptr, ptr @rt5651_set_dai_pll._entry_ptr.315, ptr @rt5651_set_dai_sysclk._entry, ptr @rt5651_set_dai_sysclk._entry_ptr, ptr @set_dmic_clk._entry, ptr @set_dmic_clk._entry_ptr, ptr @rt5651_i2c_driver, ptr @.str, ptr @rt5651_of_match, ptr @rt5651_i2c_id, ptr @rt5651_i2c_probe._key, ptr @rt5651_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @init_list, ptr @.str.11, ptr @.str.12, ptr @rt5651_i2c_probe.__key, ptr @.str.14, ptr @rt5651_i2c_probe.__key.15, ptr @.str.16, ptr @rt5651_i2c_probe.__key.17, ptr @.str.18, ptr @.str.20, ptr @soc_component_dev_rt5651, ptr @rt5651_dai, ptr @rt5651_reg, ptr @rt5651_ranges, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rt5651_snd_controls, ptr @rt5651_dapm_routes, ptr @.str.43, ptr @out_vol_tlv, ptr @.compoundliteral, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @dac_vol_tlv, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @bst_tlv, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @in_vol_tlv, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @adc_vol_tlv, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @adc_bst_tlv, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @rt5651_if2_adc_enum, ptr @.str.75, ptr @rt5651_if2_dac_enum, ptr @rt5651_data_select, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @rt5651_rec_l_mix, ptr @.str.103, ptr @rt5651_rec_r_mix, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @rt5651_sto1_adc_l2_mux, ptr @.str.109, ptr @rt5651_sto1_adc_r2_mux, ptr @.str.110, ptr @rt5651_sto1_adc_l1_mux, ptr @.str.111, ptr @rt5651_sto1_adc_r1_mux, ptr @.str.112, ptr @rt5651_sto2_adc_l2_mux, ptr @.str.113, ptr @rt5651_sto2_adc_l1_mux, ptr @.str.114, ptr @rt5651_sto2_adc_r1_mux, ptr @.str.115, ptr @rt5651_sto2_adc_r2_mux, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @rt5651_sto1_adc_l_mix, ptr @.str.119, ptr @rt5651_sto1_adc_r_mix, ptr @.str.120, ptr @rt5651_sto2_adc_l_mix, ptr @.str.121, ptr @rt5651_sto2_adc_r_mix, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @rt5651_if2_adc_src_mux, ptr @.str.135, ptr @rt5651_pdm_l_mux, ptr @.str.136, ptr @rt5651_pdm_r_mux, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @rt5651_dac_l_mix, ptr @.str.147, ptr @rt5651_dac_r_mix, ptr @.str.148, ptr @rt5651_dac_l2_mux, ptr @.str.149, ptr @rt5651_dac_r2_mux, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @rt5651_sto_dac_l_mix, ptr @.str.155, ptr @rt5651_sto_dac_r_mix, ptr @.str.156, ptr @rt5651_dd_dac_l_mix, ptr @.str.157, ptr @rt5651_dd_dac_r_mix, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @rt5651_out_l_mix, ptr @.str.163, ptr @rt5651_out_r_mix, ptr @.str.164, ptr @outvol_l_control, ptr @.str.165, ptr @outvol_r_control, ptr @.str.166, ptr @hpovol_l_control, ptr @.str.167, ptr @hpovol_r_control, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @rt5651_hpo_mix, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @rt5651_lout_mix, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @hpo_l_mute_control, ptr @.str.180, ptr @hpo_r_mute_control, ptr @.str.181, ptr @lout_l_mute_control, ptr @.str.182, ptr @lout_r_mute_control, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @rt5651_dapm_widgets, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.compoundliteral.203, ptr @.compoundliteral.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @rt5651_stereo1_adc2_enum, ptr @rt5651_stereo1_adc2_src, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @rt5651_stereo1_adc1_enum, ptr @rt5651_stereo1_adc1_src, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @rt5651_sto2_adc_l2_enum, ptr @rt5651_sto2_adc_l2_src, ptr @.str.214, ptr @.str.215, ptr @rt5651_sto2_adc_l1_enum, ptr @rt5651_sto2_adc_l1_src, ptr @.str.216, ptr @.str.217, ptr @rt5651_sto2_adc_r1_enum, ptr @rt5651_sto2_adc_r1_src, ptr @.str.218, ptr @.str.219, ptr @rt5651_sto2_adc_r2_enum, ptr @rt5651_sto2_adc_r2_src, ptr @.str.220, ptr @.str.221, ptr @.compoundliteral.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.compoundliteral.225, ptr @.compoundliteral.226, ptr @.compoundliteral.227, ptr @.compoundliteral.228, ptr @.compoundliteral.229, ptr @.compoundliteral.230, ptr @.str.231, ptr @rt5651_if2_adc_src_enum, ptr @rt5651_adc_src, ptr @.str.232, ptr @rt5651_pdm_l_sel_enum, ptr @rt5651_pdm_sel, ptr @.str.233, ptr @.str.234, ptr @rt5651_pdm_r_sel_enum, ptr @.str.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.compoundliteral.239, ptr @.compoundliteral.240, ptr @.str.241, ptr @rt5651_dac_l2_enum, ptr @rt5651_dac_src, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @rt5651_dac_r2_enum, ptr @.str.245, ptr @.compoundliteral.246, ptr @.str.247, ptr @.compoundliteral.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.compoundliteral.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.str.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.str.278, ptr @.compoundliteral.279, ptr @.str.280, ptr @.compoundliteral.281, ptr @.compoundliteral.282, ptr @.compoundliteral.283, ptr @.str.284, ptr @.compoundliteral.285, ptr @.str.286, ptr @.compoundliteral.287, ptr @.compoundliteral.288, ptr @.compoundliteral.289, ptr @.compoundliteral.290, ptr @.compoundliteral.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.301, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @rt5651_aif_dai_ops, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.314, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.322, ptr @.str.324, ptr @.str.325, ptr @switch.table.rt5651_set_dai_sysclk, ptr @switch.table.rt5651_hw_params], section "llvm.metadata"
@0 = internal global [413 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5651 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_reg to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_detect_headset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_snd_controls to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dapm_routes to i32), i32 8268, i32 10336, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bst_tlv to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_if2_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_if2_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_data_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_rec_l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_rec_r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto1_adc_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto1_adc_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto1_adc_l1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto1_adc_r1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_if2_adc_src_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_pdm_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_pdm_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto_dac_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto_dac_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dd_dac_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dd_dac_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_out_l_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_out_r_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outvol_l_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outvol_r_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpovol_l_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpovol_r_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_hpo_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_lout_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpo_l_mute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpo_r_mute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lout_l_mute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lout_r_mute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dapm_widgets to i32), i32 19440, i32 24288, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_stereo1_adc2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_stereo1_adc2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_stereo1_adc1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_stereo1_adc1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_l1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_sto2_adc_r2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_if2_adc_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_adc_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_pdm_l_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_pdm_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_pdm_r_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_l2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_dac_r2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_apply_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_apply_properties._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_enable_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_set_dai_pll._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_hw_params._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5651_hw_params._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5651_set_dai_sysclk to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5651_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5651_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5651_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5651_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !686
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5651_regmap, ptr noundef nonnull @rt5651_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 255, ptr noundef nonnull %ret) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25217, i32 %5)
  %cmp13.not = icmp eq i32 %5, 25217
  br i1 %cmp13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %5) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 0) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_register_patch(ptr noundef %9, ptr noundef nonnull @init_list, i32 noundef 1) #7
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call23, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end19.if.end30_crit_edge, label %do.end28

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call23) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end19.if.end30_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq31 = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq31, align 4
  %hp_mute = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 26
  %14 = ptrtoint ptr %hp_mute to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %hp_mute, align 4
  %bp_work = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %bp_work, i32 noundef 0) #7
  %15 = ptrtoint ptr %bp_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %bp_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @rt5651_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry40 = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry40, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rt5651_button_press_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @rt5651_i2c_probe.__key.15) #7
  %jack_detect_work = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #7
  %19 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map57 = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map57, ptr noundef nonnull @.str.18, ptr noundef nonnull @rt5651_i2c_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry59 = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i121 = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i121 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry59, ptr %prev.i121, align 4
  %func61 = getelementptr inbounds %struct.rt5651_priv, ptr %call.i, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rt5651_jack_detect_work, ptr %func61, align 4
  %call.i122 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rt5651_cancel_work, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i, label %if.end68, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call zeroext i1 @cancel_work_sync(ptr noundef %jack_detect_work) #7
  %call1.i.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bp_work) #7
  br label %cleanup

if.end68:                                         ; preds = %if.end30
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ret, align 4
  %24 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq31, align 4
  %call.i123 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @rt5651_irq, ptr noundef null, i32 noundef 532483, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i123, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool72.not = icmp eq i32 %call.i123, 0
  br i1 %tobool72.not, label %if.end68.if.end80_crit_edge, label %do.end76

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq31, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %28, i32 noundef %call.i123) #10
  %29 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -6, ptr %irq31, align 4
  br label %if.end80

if.end80:                                         ; preds = %do.end76, %if.end68.if.end80_crit_edge
  %call82 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5651, ptr noundef nonnull @rt5651_dai, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %devm_add_action_or_reset.exit, %do.end17, %if.end8.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ -19, %do.end17 ], [ %call82, %if.end80 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call.i122, %devm_add_action_or_reset.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5651_button_press_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call fastcc zeroext i1 @rt5651_jack_inserted(ptr noundef %1)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 190) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_button_press_work, %if.then.i)) #7
          to label %rt5651_micbias1_ovcd.exit [label %if.then.i], !srcloc !687

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %call.i) #7
  br label %rt5651_micbias1_ovcd.exit

rt5651_micbias1_ovcd.exit:                        ; preds = %if.then.i, %if.end
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %rt5651_micbias1_ovcd.exit
  %release_count = getelementptr i8, ptr %work, i32 108
  %4 = ptrtoint ptr %release_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %release_count, align 4
  %press_count = getelementptr i8, ptr %work, i32 104
  %5 = ptrtoint ptr %press_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %press_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %press_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp sgt i32 %inc, 2
  br i1 %cmp, label %if.then5, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %pressed = getelementptr i8, ptr %work, i32 101
  %7 = ptrtoint ptr %pressed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %pressed, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  %call.i85 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 8, i32 noundef 0) #7
  br label %if.end10

if.else:                                          ; preds = %rt5651_micbias1_ovcd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %press_count7 = getelementptr i8, ptr %work, i32 104
  %8 = ptrtoint ptr %press_count7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %press_count7, align 4
  %release_count8 = getelementptr i8, ptr %work, i32 108
  %9 = ptrtoint ptr %release_count8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %release_count8, align 4
  %inc9 = add i32 %10, 1
  store i32 %inc9, ptr %release_count8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end6
  %poll_count = getelementptr i8, ptr %work, i32 112
  %11 = ptrtoint ptr %poll_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %poll_count, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %poll_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc11)
  %cmp13 = icmp slt i32 %inc11, 8
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work, i32 noundef 1) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %pressed18 = getelementptr i8, ptr %work, i32 101
  %14 = ptrtoint ptr %pressed18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pressed18, align 1, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end17.if.end29_crit_edge, label %land.lhs.true

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end17
  %press_reported = getelementptr i8, ptr %work, i32 102
  %16 = ptrtoint ptr %press_reported to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %press_reported, align 2, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %do.body, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_button_press_work.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_button_press_work, %if.then26)) #7
          to label %do.end [label %if.then26], !srcloc !687

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_button_press_work.__UNIQUE_ID_ddebug304, ptr noundef %19, ptr noundef nonnull @.str.25) #7
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %hp_jack = getelementptr i8, ptr %work, i32 -52
  %20 = ptrtoint ptr %hp_jack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hp_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %21, i32 noundef 16384, i32 noundef 16384) #7
  %22 = ptrtoint ptr %press_reported to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %press_reported, align 2
  br label %if.end29

if.end29:                                         ; preds = %do.end, %land.lhs.true.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %release_count30 = getelementptr i8, ptr %work, i32 108
  %23 = ptrtoint ptr %release_count30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %release_count30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp31 = icmp sgt i32 %24, 2
  br i1 %cmp31, label %if.then32, label %if.end55

if.then32:                                        ; preds = %if.end29
  %press_reported33 = getelementptr i8, ptr %work, i32 102
  %25 = ptrtoint ptr %press_reported33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %press_reported33, align 2, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool34.not = icmp eq i8 %26, 0
  br i1 %tobool34.not, label %if.then32.if.end54_crit_edge, label %do.body36

if.then32.if.end54_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body36:                                        ; preds = %if.then32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_button_press_work.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_button_press_work, %if.then48)) #7
          to label %do.end52 [label %if.then48], !srcloc !687

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_button_press_work.__UNIQUE_ID_ddebug305, ptr noundef %28, ptr noundef nonnull @.str.26) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  %hp_jack53 = getelementptr i8, ptr %work, i32 -52
  %29 = ptrtoint ptr %hp_jack53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hp_jack53, align 4
  tail call void @snd_soc_jack_report(ptr noundef %30, i32 noundef 0, i32 noundef 16384) #7
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.then32.if.end54_crit_edge
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 32768, i32 noundef 32768) #7
  %ovcd_irq_enabled.i = getelementptr inbounds %struct.rt5651_priv, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %ovcd_irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %ovcd_irq_enabled.i, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i86 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end54, %if.then14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5651_jack_detect_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call fastcc zeroext i1 @rt5651_jack_inserted(ptr noundef %1)
  %hp_jack18 = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %hp_jack18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hp_jack18, align 4
  %status19 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %status19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status19, align 4
  %and20 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool21.not, label %if.then.if.end101_crit_edge, label %if.then2

if.then.if.end101_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then2:                                         ; preds = %if.then
  %and5 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then2.if.end_crit_edge, label %if.then7

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %bp_work = getelementptr i8, ptr %work, i32 44
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bp_work) #7
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 32768, i32 noundef 0) #7
  %ovcd_irq_enabled.i = getelementptr inbounds %struct.rt5651_priv, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ovcd_irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ovcd_irq_enabled.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %card.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %11 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i.i, align 4
  %dapm_mutex.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i, i32 noundef 1) #7
  %call1.i132 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.36) #7
  %call2.i = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.37) #7
  %call3.i = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.38) #7
  %call4.i = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i) #7
  %13 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i.i, align 4
  %dapm_mutex.i11.i = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then2.if.end_crit_edge
  %15 = ptrtoint ptr %hp_jack18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hp_jack18, align 4
  tail call void @snd_soc_jack_report(ptr noundef %16, i32 noundef 0, i32 noundef 16387) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_jack_detect_work.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_jack_detect_work, %if.then15)) #7
          to label %if.end101 [label %if.then15], !srcloc !687

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_jack_detect_work.__UNIQUE_ID_ddebug308, ptr noundef %18, ptr noundef nonnull @.str.33) #7
  br label %if.end101

if.else:                                          ; preds = %entry
  %ovcd_irq_enabled = getelementptr i8, ptr %work, i32 144
  %19 = ptrtoint ptr %ovcd_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ovcd_irq_enabled, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else76

if.then22:                                        ; preds = %if.else
  br i1 %tobool23.not, label %if.then22.if.end45_crit_edge, label %do.end39, !prof !689

if.then22.if.end45_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end39:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1802, i32 noundef 9, ptr noundef null) #7
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.then22.if.end45_crit_edge
  %dapm.i.i133 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %card.i.i134 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %21 = ptrtoint ptr %card.i.i134 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i.i134, align 4
  %dapm_mutex.i.i135 = getelementptr inbounds %struct.snd_soc_card, ptr %22, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i135, i32 noundef 1) #7
  %call1.i136 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i133, ptr noundef nonnull @.str.38) #7
  %call2.i137 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i133, ptr noundef nonnull @.str.37) #7
  %call3.i138 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i133, ptr noundef nonnull @.str.36) #7
  %call4.i139 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i133) #7
  %23 = ptrtoint ptr %card.i.i134 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i.i134, align 4
  %dapm_mutex.i11.i140 = getelementptr inbounds %struct.snd_soc_card, ptr %24, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i140) #7
  %call53 = tail call fastcc i32 @rt5651_detect_headset(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_jack_detect_work.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_jack_detect_work, %if.then66)) #7
          to label %do.end70 [label %if.then66], !srcloc !687

if.then66:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_jack_detect_work.__UNIQUE_ID_ddebug309, ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef %call53) #7
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %if.end45
  %27 = ptrtoint ptr %hp_jack18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hp_jack18, align 4
  tail call void @snd_soc_jack_report(ptr noundef %28, i32 noundef %call53, i32 noundef 3) #7
  %29 = ptrtoint ptr %hp_jack18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hp_jack18, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %do.end70.if.else74_crit_edge, label %if.end.i

do.end70.if.else74_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else74

if.end.i:                                         ; preds = %do.end70
  %status.i = getelementptr inbounds %struct.snd_soc_jack, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status.i, align 4
  %and.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.else74_crit_edge, label %rt5651_support_button_press.exit

if.end.i.if.else74_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else74

rt5651_support_button_press.exit:                 ; preds = %if.end.i
  %gpiod_hp_det.i = getelementptr i8, ptr %work, i32 -4
  %33 = ptrtoint ptr %gpiod_hp_det.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpiod_hp_det.i, align 4
  %cmp.i = icmp eq ptr %34, null
  br i1 %cmp.i, label %if.then73, label %rt5651_support_button_press.exit.if.else74_crit_edge

rt5651_support_button_press.exit.if.else74_crit_edge: ; preds = %rt5651_support_button_press.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else74

if.then73:                                        ; preds = %rt5651_support_button_press.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i142 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %dev.i.i142 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i142, align 4
  %driver_data.i.i.i143 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i143, align 4
  %call1.i144 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 32768, i32 noundef 32768) #7
  %ovcd_irq_enabled.i145 = getelementptr inbounds %struct.rt5651_priv, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %ovcd_irq_enabled.i145 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %ovcd_irq_enabled.i145, align 4
  br label %if.end101

if.else74:                                        ; preds = %rt5651_support_button_press.exit.if.else74_crit_edge, %if.end.i.if.else74_crit_edge, %do.end70.if.else74_crit_edge
  %40 = ptrtoint ptr %card.i.i134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i.i134, align 4
  %dapm_mutex.i.i148 = getelementptr inbounds %struct.snd_soc_card, ptr %41, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i148, i32 noundef 1) #7
  %call1.i149 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i133, ptr noundef nonnull @.str.36) #7
  %call2.i150 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i133, ptr noundef nonnull @.str.37) #7
  %call3.i151 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i133, ptr noundef nonnull @.str.38) #7
  %call4.i152 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i133) #7
  %42 = ptrtoint ptr %card.i.i134 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i.i134, align 4
  %dapm_mutex.i11.i153 = getelementptr inbounds %struct.snd_soc_card, ptr %43, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i153) #7
  br label %if.end101

if.else76:                                        ; preds = %if.else
  br i1 %tobool23.not, label %if.else76.if.end101_crit_edge, label %land.lhs.true

if.else76.if.end101_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

land.lhs.true:                                    ; preds = %if.else76
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 190) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_jack_detect_work, %if.then.i)) #7
          to label %rt5651_micbias1_ovcd.exit [label %if.then.i], !srcloc !687

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, ptr noundef %45, ptr noundef nonnull @.str.31, i32 noundef %call.i) #7
  br label %rt5651_micbias1_ovcd.exit

rt5651_micbias1_ovcd.exit:                        ; preds = %if.then.i, %land.lhs.true
  %and.i154 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool4.i.not = icmp eq i32 %and.i154, 0
  br i1 %tobool4.i.not, label %rt5651_micbias1_ovcd.exit.if.end101_crit_edge, label %do.body81

rt5651_micbias1_ovcd.exit.if.end101_crit_edge:    ; preds = %rt5651_micbias1_ovcd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

do.body81:                                        ; preds = %rt5651_micbias1_ovcd.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_jack_detect_work.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_jack_detect_work, %if.then93)) #7
          to label %do.end97 [label %if.then93], !srcloc !687

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %dev94 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev94, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_jack_detect_work.__UNIQUE_ID_ddebug310, ptr noundef %47, ptr noundef nonnull @.str.35) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.body81
  %dev.i.i155 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i155, align 4
  %driver_data.i.i.i156 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i156, align 4
  %call1.i157 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 32768, i32 noundef 0) #7
  %ovcd_irq_enabled.i158 = getelementptr inbounds %struct.rt5651_priv, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %ovcd_irq_enabled.i158 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %ovcd_irq_enabled.i158, align 4
  %53 = ptrtoint ptr %dev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i155, align 4
  %driver_data.i.i.i160 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i.i160, align 4
  %poll_count.i = getelementptr inbounds %struct.rt5651_priv, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %poll_count.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %poll_count.i, align 4
  %press_count.i = getelementptr inbounds %struct.rt5651_priv, ptr %56, i32 0, i32 9
  %58 = ptrtoint ptr %press_count.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %press_count.i, align 4
  %release_count.i = getelementptr inbounds %struct.rt5651_priv, ptr %56, i32 0, i32 10
  %59 = ptrtoint ptr %release_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %release_count.i, align 4
  %pressed.i = getelementptr inbounds %struct.rt5651_priv, ptr %56, i32 0, i32 7
  %60 = ptrtoint ptr %pressed.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %pressed.i, align 1
  %press_reported.i = getelementptr inbounds %struct.rt5651_priv, ptr %56, i32 0, i32 8
  %61 = ptrtoint ptr %press_reported.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %press_reported.i, align 2
  %call.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 8, i32 noundef 0) #7
  %bp_work.i = getelementptr inbounds %struct.rt5651_priv, ptr %56, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %bp_work.i, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %63 = load ptr, ptr @system_long_wq, align 4
  %call.i161 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %work) #7
  br label %if.end101

if.end101:                                        ; preds = %do.end97, %rt5651_micbias1_ovcd.exit.if.end101_crit_edge, %if.else76.if.end101_crit_edge, %if.else74, %if.then73, %if.then15, %if.end, %if.then.if.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5651_cancel_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jack_detect_work = getelementptr inbounds %struct.rt5651_priv, ptr %data, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %jack_detect_work) #7
  %bp_work = getelementptr inbounds %struct.rt5651_priv, ptr %data, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bp_work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5651_priv, ptr %data, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %jack_detect_work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5651_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %0)
  %1 = icmp eq i32 %0, 108
  %2 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %2)
  %3 = icmp ult i32 %2, 181
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 253, label %for.end.cleanup_crit_edge23
    i32 254, label %for.end.cleanup_crit_edge24
    i32 255, label %for.end.cleanup_crit_edge25
    i32 2, label %for.end.cleanup_crit_edge26
    i32 3, label %for.end.cleanup_crit_edge27
    i32 5, label %for.end.cleanup_crit_edge28
    i32 13, label %for.end.cleanup_crit_edge29
    i32 14, label %for.end.cleanup_crit_edge30
    i32 15, label %for.end.cleanup_crit_edge31
    i32 16, label %for.end.cleanup_crit_edge32
    i32 25, label %for.end.cleanup_crit_edge33
    i32 26, label %for.end.cleanup_crit_edge34
    i32 27, label %for.end.cleanup_crit_edge35
    i32 28, label %for.end.cleanup_crit_edge36
    i32 29, label %for.end.cleanup_crit_edge37
    i32 30, label %for.end.cleanup_crit_edge38
    i32 39, label %for.end.cleanup_crit_edge39
    i32 40, label %for.end.cleanup_crit_edge40
    i32 41, label %for.end.cleanup_crit_edge41
    i32 42, label %for.end.cleanup_crit_edge42
    i32 43, label %for.end.cleanup_crit_edge43
    i32 47, label %for.end.cleanup_crit_edge44
    i32 48, label %for.end.cleanup_crit_edge45
    i32 59, label %for.end.cleanup_crit_edge46
    i32 60, label %for.end.cleanup_crit_edge47
    i32 61, label %for.end.cleanup_crit_edge48
    i32 62, label %for.end.cleanup_crit_edge49
    i32 69, label %for.end.cleanup_crit_edge50
    i32 77, label %for.end.cleanup_crit_edge51
    i32 78, label %for.end.cleanup_crit_edge52
    i32 79, label %for.end.cleanup_crit_edge53
    i32 80, label %for.end.cleanup_crit_edge54
    i32 81, label %for.end.cleanup_crit_edge55
    i32 82, label %for.end.cleanup_crit_edge56
    i32 83, label %for.end.cleanup_crit_edge57
    i32 97, label %for.end.cleanup_crit_edge58
    i32 98, label %for.end.cleanup_crit_edge59
    i32 99, label %for.end.cleanup_crit_edge60
    i32 100, label %for.end.cleanup_crit_edge61
    i32 101, label %for.end.cleanup_crit_edge62
    i32 102, label %for.end.cleanup_crit_edge63
    i32 106, label %for.end.cleanup_crit_edge64
    i32 108, label %for.end.cleanup_crit_edge65
    i32 112, label %for.end.cleanup_crit_edge66
    i32 113, label %for.end.cleanup_crit_edge67
    i32 115, label %for.end.cleanup_crit_edge68
    i32 116, label %for.end.cleanup_crit_edge69
    i32 117, label %for.end.cleanup_crit_edge70
    i32 119, label %for.end.cleanup_crit_edge71
    i32 120, label %for.end.cleanup_crit_edge72
    i32 121, label %for.end.cleanup_crit_edge73
    i32 128, label %for.end.cleanup_crit_edge74
    i32 129, label %for.end.cleanup_crit_edge75
    i32 130, label %for.end.cleanup_crit_edge76
    i32 131, label %for.end.cleanup_crit_edge77
    i32 132, label %for.end.cleanup_crit_edge78
    i32 133, label %for.end.cleanup_crit_edge79
    i32 134, label %for.end.cleanup_crit_edge80
    i32 135, label %for.end.cleanup_crit_edge81
    i32 137, label %for.end.cleanup_crit_edge82
    i32 138, label %for.end.cleanup_crit_edge83
    i32 142, label %for.end.cleanup_crit_edge84
    i32 143, label %for.end.cleanup_crit_edge85
    i32 144, label %for.end.cleanup_crit_edge86
    i32 145, label %for.end.cleanup_crit_edge87
    i32 147, label %for.end.cleanup_crit_edge88
    i32 148, label %for.end.cleanup_crit_edge89
    i32 176, label %for.end.cleanup_crit_edge90
    i32 177, label %for.end.cleanup_crit_edge91
    i32 180, label %for.end.cleanup_crit_edge92
    i32 181, label %for.end.cleanup_crit_edge93
    i32 182, label %for.end.cleanup_crit_edge94
    i32 187, label %for.end.cleanup_crit_edge95
    i32 188, label %for.end.cleanup_crit_edge96
    i32 189, label %for.end.cleanup_crit_edge97
    i32 190, label %for.end.cleanup_crit_edge98
    i32 191, label %for.end.cleanup_crit_edge99
    i32 192, label %for.end.cleanup_crit_edge100
    i32 193, label %for.end.cleanup_crit_edge101
    i32 194, label %for.end.cleanup_crit_edge102
    i32 200, label %for.end.cleanup_crit_edge103
    i32 201, label %for.end.cleanup_crit_edge104
    i32 202, label %for.end.cleanup_crit_edge105
    i32 203, label %for.end.cleanup_crit_edge106
    i32 204, label %for.end.cleanup_crit_edge107
    i32 205, label %for.end.cleanup_crit_edge108
    i32 206, label %for.end.cleanup_crit_edge109
    i32 207, label %for.end.cleanup_crit_edge110
    i32 208, label %for.end.cleanup_crit_edge111
    i32 209, label %for.end.cleanup_crit_edge112
    i32 211, label %for.end.cleanup_crit_edge113
    i32 212, label %for.end.cleanup_crit_edge114
    i32 214, label %for.end.cleanup_crit_edge115
    i32 215, label %for.end.cleanup_crit_edge116
    i32 217, label %for.end.cleanup_crit_edge117
    i32 218, label %for.end.cleanup_crit_edge118
    i32 250, label %for.end.cleanup_crit_edge119
    i32 251, label %for.end.cleanup_crit_edge120
    i32 252, label %for.end.cleanup_crit_edge121
  ]

for.end.cleanup_crit_edge121:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge120:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge119:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge118:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge117:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge116:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge115:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge114:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge113:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge112:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge111:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge110:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge109:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge108:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge107:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge106:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge105:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge104:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge103:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge102:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge101:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge100:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge99:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge98:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge97:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge96:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge95:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge94:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge93:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge92:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge91:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge90:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge89:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge88:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge87:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge86:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge85:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge84:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge83:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge82:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge81:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge80:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge79:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge77:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge76:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge75:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge74:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge73:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge72:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge71:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge70:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge69:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge68:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge67:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge66:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge65:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge64:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge63:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge62:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge61:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge60:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge59:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge58:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge57:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge56:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge55:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge54:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge53:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge52:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge51:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge50:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge49:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge48:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge47:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge46:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge45:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge44:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge43:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge42:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge41:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge40:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge39:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge38:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge37:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge36:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge35:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge34:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge33:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge32:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %for.end.cleanup_crit_edge48, %for.end.cleanup_crit_edge49, %for.end.cleanup_crit_edge50, %for.end.cleanup_crit_edge51, %for.end.cleanup_crit_edge52, %for.end.cleanup_crit_edge53, %for.end.cleanup_crit_edge54, %for.end.cleanup_crit_edge55, %for.end.cleanup_crit_edge56, %for.end.cleanup_crit_edge57, %for.end.cleanup_crit_edge58, %for.end.cleanup_crit_edge59, %for.end.cleanup_crit_edge60, %for.end.cleanup_crit_edge61, %for.end.cleanup_crit_edge62, %for.end.cleanup_crit_edge63, %for.end.cleanup_crit_edge64, %for.end.cleanup_crit_edge65, %for.end.cleanup_crit_edge66, %for.end.cleanup_crit_edge67, %for.end.cleanup_crit_edge68, %for.end.cleanup_crit_edge69, %for.end.cleanup_crit_edge70, %for.end.cleanup_crit_edge71, %for.end.cleanup_crit_edge72, %for.end.cleanup_crit_edge73, %for.end.cleanup_crit_edge74, %for.end.cleanup_crit_edge75, %for.end.cleanup_crit_edge76, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %for.end.cleanup_crit_edge84, %for.end.cleanup_crit_edge85, %for.end.cleanup_crit_edge86, %for.end.cleanup_crit_edge87, %for.end.cleanup_crit_edge88, %for.end.cleanup_crit_edge89, %for.end.cleanup_crit_edge90, %for.end.cleanup_crit_edge91, %for.end.cleanup_crit_edge92, %for.end.cleanup_crit_edge93, %for.end.cleanup_crit_edge94, %for.end.cleanup_crit_edge95, %for.end.cleanup_crit_edge96, %for.end.cleanup_crit_edge97, %for.end.cleanup_crit_edge98, %for.end.cleanup_crit_edge99, %for.end.cleanup_crit_edge100, %for.end.cleanup_crit_edge101, %for.end.cleanup_crit_edge102, %for.end.cleanup_crit_edge103, %for.end.cleanup_crit_edge104, %for.end.cleanup_crit_edge105, %for.end.cleanup_crit_edge106, %for.end.cleanup_crit_edge107, %for.end.cleanup_crit_edge108, %for.end.cleanup_crit_edge109, %for.end.cleanup_crit_edge110, %for.end.cleanup_crit_edge111, %for.end.cleanup_crit_edge112, %for.end.cleanup_crit_edge113, %for.end.cleanup_crit_edge114, %for.end.cleanup_crit_edge115, %for.end.cleanup_crit_edge116, %for.end.cleanup_crit_edge117, %for.end.cleanup_crit_edge118, %for.end.cleanup_crit_edge119, %for.end.cleanup_crit_edge120, %for.end.cleanup_crit_edge121, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ], [ true, %for.end.cleanup_crit_edge48 ], [ true, %for.end.cleanup_crit_edge49 ], [ true, %for.end.cleanup_crit_edge50 ], [ true, %for.end.cleanup_crit_edge51 ], [ true, %for.end.cleanup_crit_edge52 ], [ true, %for.end.cleanup_crit_edge53 ], [ true, %for.end.cleanup_crit_edge54 ], [ true, %for.end.cleanup_crit_edge55 ], [ true, %for.end.cleanup_crit_edge56 ], [ true, %for.end.cleanup_crit_edge57 ], [ true, %for.end.cleanup_crit_edge58 ], [ true, %for.end.cleanup_crit_edge59 ], [ true, %for.end.cleanup_crit_edge60 ], [ true, %for.end.cleanup_crit_edge61 ], [ true, %for.end.cleanup_crit_edge62 ], [ true, %for.end.cleanup_crit_edge63 ], [ true, %for.end.cleanup_crit_edge64 ], [ true, %for.end.cleanup_crit_edge65 ], [ true, %for.end.cleanup_crit_edge66 ], [ true, %for.end.cleanup_crit_edge67 ], [ true, %for.end.cleanup_crit_edge68 ], [ true, %for.end.cleanup_crit_edge69 ], [ true, %for.end.cleanup_crit_edge70 ], [ true, %for.end.cleanup_crit_edge71 ], [ true, %for.end.cleanup_crit_edge72 ], [ true, %for.end.cleanup_crit_edge73 ], [ true, %for.end.cleanup_crit_edge74 ], [ true, %for.end.cleanup_crit_edge75 ], [ true, %for.end.cleanup_crit_edge76 ], [ true, %for.end.cleanup_crit_edge77 ], [ true, %for.end.cleanup_crit_edge78 ], [ true, %for.end.cleanup_crit_edge79 ], [ true, %for.end.cleanup_crit_edge80 ], [ true, %for.end.cleanup_crit_edge81 ], [ true, %for.end.cleanup_crit_edge82 ], [ true, %for.end.cleanup_crit_edge83 ], [ true, %for.end.cleanup_crit_edge84 ], [ true, %for.end.cleanup_crit_edge85 ], [ true, %for.end.cleanup_crit_edge86 ], [ true, %for.end.cleanup_crit_edge87 ], [ true, %for.end.cleanup_crit_edge88 ], [ true, %for.end.cleanup_crit_edge89 ], [ true, %for.end.cleanup_crit_edge90 ], [ true, %for.end.cleanup_crit_edge91 ], [ true, %for.end.cleanup_crit_edge92 ], [ true, %for.end.cleanup_crit_edge93 ], [ true, %for.end.cleanup_crit_edge94 ], [ true, %for.end.cleanup_crit_edge95 ], [ true, %for.end.cleanup_crit_edge96 ], [ true, %for.end.cleanup_crit_edge97 ], [ true, %for.end.cleanup_crit_edge98 ], [ true, %for.end.cleanup_crit_edge99 ], [ true, %for.end.cleanup_crit_edge100 ], [ true, %for.end.cleanup_crit_edge101 ], [ true, %for.end.cleanup_crit_edge102 ], [ true, %for.end.cleanup_crit_edge103 ], [ true, %for.end.cleanup_crit_edge104 ], [ true, %for.end.cleanup_crit_edge105 ], [ true, %for.end.cleanup_crit_edge106 ], [ true, %for.end.cleanup_crit_edge107 ], [ true, %for.end.cleanup_crit_edge108 ], [ true, %for.end.cleanup_crit_edge109 ], [ true, %for.end.cleanup_crit_edge110 ], [ true, %for.end.cleanup_crit_edge111 ], [ true, %for.end.cleanup_crit_edge112 ], [ true, %for.end.cleanup_crit_edge113 ], [ true, %for.end.cleanup_crit_edge114 ], [ true, %for.end.cleanup_crit_edge115 ], [ true, %for.end.cleanup_crit_edge116 ], [ true, %for.end.cleanup_crit_edge117 ], [ true, %for.end.cleanup_crit_edge118 ], [ true, %for.end.cleanup_crit_edge119 ], [ true, %for.end.cleanup_crit_edge120 ], [ true, %for.end.cleanup_crit_edge121 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5651_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %0)
  %1 = icmp eq i32 %0, 108
  %2 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %2)
  %3 = icmp ult i32 %2, 181
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 108, label %for.end.cleanup_crit_edge23
    i32 176, label %for.end.cleanup_crit_edge24
    i32 180, label %for.end.cleanup_crit_edge25
    i32 190, label %for.end.cleanup_crit_edge26
    i32 191, label %for.end.cleanup_crit_edge27
    i32 200, label %for.end.cleanup_crit_edge28
    i32 202, label %for.end.cleanup_crit_edge29
    i32 254, label %for.end.cleanup_crit_edge30
    i32 255, label %for.end.cleanup_crit_edge31
  ]

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rt5651_jack_inserted(ptr noundef %component) unnamed_addr #2 align 64 {
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
  %gpiod_hp_det = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_hp_det, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_jack_inserted.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_jack_inserted, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !687

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_jack_inserted.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %call2) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool8 = icmp ne i32 %call2, 0
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 191) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_jack_inserted.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_jack_inserted, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !687

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_jack_inserted.__UNIQUE_ID_ddebug303, ptr noundef %9, ptr noundef nonnull @.str.29, i32 noundef %call10) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %if.end9
  %jd_src = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %jd_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jd_src, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %11, label %do.end27.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
    i32 3, label %sw.bb30
  ]

do.end27.sw.epilog_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call10, 4096
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %and29 = and i32 %call10, 8192
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %and31 = and i32 %call10, 16384
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb28, %sw.bb, %do.end27.sw.epilog_crit_edge
  %val.0 = phi i32 [ %call10, %do.end27.sw.epilog_crit_edge ], [ %and31, %sw.bb30 ], [ %and29, %sw.bb28 ], [ %and, %sw.bb ]
  %jd_active_high = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %jd_active_high to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %jd_active_high, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool32.not = icmp eq i8 %14, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp = icmp ne i32 %val.0, 0
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp34 = icmp eq i32 %val.0, 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %do.end
  %retval.0 = phi i1 [ %tobool8, %do.end ], [ %cmp, %if.then33 ], [ %cmp34, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5651_detect_headset(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc33, %for.inc.for.body_crit_edge ]
  %headset_count.055 = phi i32 [ 0, %entry ], [ %headset_count.1, %for.inc.for.body_crit_edge ]
  %headphone_count.054 = phi i32 [ 0, %entry ], [ %headphone_count.1, %for.inc.for.body_crit_edge ]
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 190, i32 noundef 8, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 100) #7
  %call = tail call fastcc zeroext i1 @rt5651_jack_inserted(ptr noundef %component)
  br i1 %call, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i51 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 190) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_detect_headset, %if.then.i)) #7
          to label %rt5651_micbias1_ovcd.exit [label %if.then.i], !srcloc !687

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %call.i51) #7
  br label %rt5651_micbias1_ovcd.exit

rt5651_micbias1_ovcd.exit:                        ; preds = %if.then.i, %if.end
  %and.i = and i32 %call.i51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %do.body11, label %do.body

do.body:                                          ; preds = %rt5651_micbias1_ovcd.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_detect_headset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_detect_headset, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !687

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_detect_headset.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.40) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %inc = add i32 %headphone_count.054, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp8 = icmp eq i32 %inc, 5
  br i1 %cmp8, label %do.end.cleanup_crit_edge, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %rt5651_micbias1_ovcd.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_detect_headset.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_detect_headset, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !687

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_detect_headset.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.41) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  %inc28 = add i32 %headset_count.055, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc28)
  %cmp29 = icmp eq i32 %inc28, 5
  br i1 %cmp29, label %do.end27.cleanup_crit_edge, label %do.end27.for.inc_crit_edge

do.end27.for.inc_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %do.end27.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %headphone_count.1 = phi i32 [ %inc, %do.end.for.inc_crit_edge ], [ 0, %do.end27.for.inc_crit_edge ]
  %headset_count.1 = phi i32 [ 0, %do.end.for.inc_crit_edge ], [ %inc28, %do.end27.for.inc_crit_edge ]
  %inc33 = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc33, 20
  br i1 %exitcond.not, label %do.end36, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end36:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end27.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end36 ], [ 3, %do.end27.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_probe(ptr noundef %component) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
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
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 3, i32 noundef 2) #7
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #7
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !686
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.292) #7
  br i1 %call.i.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 13, i32 noundef 64, i32 noundef 64) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call.i57.i = tail call zeroext i1 @device_property_present(ptr noundef %11, ptr noundef nonnull @.str.293) #7
  br i1 %call.i57.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 192, i32 noundef 16384, i32 noundef 16384) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call.i58.i = call i32 @device_property_read_u32_array(ptr noundef %13, ptr noundef nonnull @.str.294, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp.i = icmp eq i32 %call.i58.i, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %jd_src.i = getelementptr inbounds %struct.rt5651_priv, ptr %8, i32 0, i32 12
  %16 = ptrtoint ptr %jd_src.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %jd_src.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end11.i_crit_edge
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i59.i = call zeroext i1 @device_property_present(ptr noundef %18, ptr noundef nonnull @.str.295) #7
  br i1 %call.i59.i, label %if.then14.i, label %if.end11.i.if.end15.i_crit_edge

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %jd_active_high.i = getelementptr inbounds %struct.rt5651_priv, ptr %8, i32 0, i32 13
  %19 = ptrtoint ptr %jd_active_high.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %jd_active_high.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end15.i_crit_edge
  %ovcd_th.i = getelementptr inbounds %struct.rt5651_priv, ptr %8, i32 0, i32 14
  %20 = ptrtoint ptr %ovcd_th.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %ovcd_th.i, align 4
  %ovcd_sf.i = getelementptr inbounds %struct.rt5651_priv, ptr %8, i32 0, i32 15
  %21 = ptrtoint ptr %ovcd_sf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %ovcd_sf.i, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call.i60.i = call i32 @device_property_read_u32_array(ptr noundef %23, ptr noundef nonnull @.str.296, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %cmp18.i = icmp eq i32 %call.i60.i, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.end15.i.if.end26.i_crit_edge

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then19.i:                                      ; preds = %if.end15.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %25, label %do.end.i [
    i32 600, label %sw.bb.i
    i32 1500, label %sw.bb21.i
    i32 2000, label %sw.bb23.i
  ]

sw.bb.i:                                          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %ovcd_th.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ovcd_th.i, align 4
  br label %if.end26.i

sw.bb21.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %ovcd_th.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 512, ptr %ovcd_th.i, align 4
  br label %if.end26.i

sw.bb23.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %ovcd_th.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1024, ptr %ovcd_th.i, align 4
  br label %if.end26.i

do.end.i:                                         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.297, i32 noundef %25) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end.i, %sw.bb23.i, %sw.bb21.i, %sw.bb.i, %if.end15.i.if.end26.i_crit_edge
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call.i61.i = call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @.str.299, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp29.i = icmp eq i32 %call.i61.i, 0
  br i1 %cmp29.i, label %if.then30.i, label %if.end26.i.rt5651_apply_properties.exit_crit_edge

if.end26.i.rt5651_apply_properties.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5651_apply_properties.exit

if.then30.i:                                      ; preds = %if.end26.i
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp31.i = icmp ult i32 %35, 4
  br i1 %cmp31.i, label %if.then32.i, label %do.end36.i

if.then32.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %35, 8
  %36 = ptrtoint ptr %ovcd_sf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i, ptr %ovcd_sf.i, align 4
  br label %rt5651_apply_properties.exit

do.end36.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.301, i32 noundef %35) #10
  br label %rt5651_apply_properties.exit

rt5651_apply_properties.exit:                     ; preds = %do.end36.i, %if.then32.i, %if.end26.i.rt5651_apply_properties.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %regmap.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 13
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regcache_sync(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_set_jack(ptr noundef %component, ptr noundef %jack, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %jack, null
  %dev.i.i3 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i3, align 4
  %driver_data.i.i.i4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %jd_src.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %jd_src.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jd_src.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %5, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %if.then
  %gpiod_hp_det1.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %gpiod_hp_det1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %gpiod_hp_det1.i, align 4
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.if.end.i.i_crit_edge

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb3.i:                                         ; preds = %if.then
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 188, i32 noundef 3584, i32 noundef 512) #7
  %jd_active_high.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %jd_active_high.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %jd_active_high.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 640, i32 noundef 640) #7
  br label %if.then29.i

if.else.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 640, i32 noundef 512) #7
  br label %if.then29.i

sw.bb10.i:                                        ; preds = %if.then
  %call11.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 188, i32 noundef 3584, i32 noundef 1024) #7
  %jd_active_high12.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %jd_active_high12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %jd_active_high12.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.i = icmp eq i8 %11, 0
  br i1 %tobool13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 80, i32 noundef 80) #7
  br label %if.then29.i

if.else16.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 80, i32 noundef 64) #7
  br label %if.then29.i

sw.bb19.i:                                        ; preds = %if.then
  %call20.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 188, i32 noundef 3584, i32 noundef 1536) #7
  %jd_active_high21.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %jd_active_high21.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %jd_active_high21.i, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not.i = icmp eq i8 %13, 0
  br i1 %tobool22.not.i, label %if.else25.i, label %if.then23.i

if.then23.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 10, i32 noundef 10) #7
  br label %if.then29.i

if.else25.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 189, i32 noundef 10, i32 noundef 8) #7
  br label %if.then29.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.303) #10
  br label %if.end

if.then29.i:                                      ; preds = %if.else25.i, %if.then23.i, %if.else16.i, %if.then14.i, %if.else.i, %if.then6.i
  %call30.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 192, i32 noundef 32768, i32 noundef 32768) #7
  %call31.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 100, i32 noundef 4, i32 noundef 4) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then29.i, %sw.bb.i.if.end.i.i_crit_edge
  %ovcd_sf.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %ovcd_sf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ovcd_sf.i, align 4
  %or.i = or i32 %15, 43008
  %call33.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 277, i32 noundef %or.i) #7
  %ovcd_th.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %ovcd_th.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ovcd_th.i, align 4
  %or36.i = or i32 %17, 2096
  %call37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 147, i32 noundef 3632, i32 noundef %or36.i) #7
  %call38.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 190, i32 noundef 2048, i32 noundef 2048) #7
  %hp_jack39.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %hp_jack39.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %jack, ptr %hp_jack39.i, align 4
  %status.i.i = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 4
  %19 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i.i, align 4
  %and.i.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end42.i_crit_edge, label %rt5651_support_button_press.exit.i

if.end.i.i.if.end42.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

rt5651_support_button_press.exit.i:               ; preds = %if.end.i.i
  %gpiod_hp_det.i.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %gpiod_hp_det.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpiod_hp_det.i.i, align 4
  %cmp.i.i = icmp eq ptr %22, null
  br i1 %cmp.i.i, label %if.then41.i, label %rt5651_support_button_press.exit.i.if.end42.i_crit_edge

rt5651_support_button_press.exit.i.if.end42.i_crit_edge: ; preds = %rt5651_support_button_press.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then41.i:                                      ; preds = %rt5651_support_button_press.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dapm.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %card.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %23 = ptrtoint ptr %card.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i.i.i, align 4
  %dapm_mutex.i.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %24, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i.i, i32 noundef 1) #7
  %call1.i.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i.i, ptr noundef nonnull @.str.38) #7
  %call2.i.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i.i, ptr noundef nonnull @.str.37) #7
  %call3.i.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i.i, ptr noundef nonnull @.str.36) #7
  %call4.i.i = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i.i) #7
  %25 = ptrtoint ptr %card.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i.i.i, align 4
  %dapm_mutex.i11.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %26, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i.i) #7
  %27 = ptrtoint ptr %dev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i3, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call1.i78.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 190, i32 noundef 32768, i32 noundef 32768) #7
  %ovcd_irq_enabled.i.i = getelementptr inbounds %struct.rt5651_priv, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ovcd_irq_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %ovcd_irq_enabled.i.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %rt5651_support_button_press.exit.i.if.end42.i_crit_edge, %if.end.i.i.if.end42.i_crit_edge
  %irq.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 16
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %33) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %34 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %jack_detect_work.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %irq.i5 = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 16
  %35 = ptrtoint ptr %irq.i5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i5, align 4
  tail call void @disable_irq(i32 noundef %36) #7
  %jack_detect_work.i.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 4
  %call.i.i6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %jack_detect_work.i.i) #7
  %bp_work.i.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 5
  %call1.i.i7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bp_work.i.i) #7
  %hp_jack.i.i = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %hp_jack.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hp_jack.i.i, align 4
  %tobool.not.i.i8 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i8, label %if.else.rt5651_disable_jack_detect.exit_crit_edge, label %if.end.i.i12

if.else.rt5651_disable_jack_detect.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5651_disable_jack_detect.exit

if.end.i.i12:                                     ; preds = %if.else
  %status.i.i9 = getelementptr inbounds %struct.snd_soc_jack, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %status.i.i9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status.i.i9, align 4
  %and.i.i10 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool2.not.i.i11 = icmp eq i32 %and.i.i10, 0
  br i1 %tobool2.not.i.i11, label %if.end.i.i12.rt5651_disable_jack_detect.exit_crit_edge, label %rt5651_support_button_press.exit.i15

if.end.i.i12.rt5651_disable_jack_detect.exit_crit_edge: ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5651_disable_jack_detect.exit

rt5651_support_button_press.exit.i15:             ; preds = %if.end.i.i12
  %gpiod_hp_det.i.i13 = getelementptr inbounds %struct.rt5651_priv, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %gpiod_hp_det.i.i13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpiod_hp_det.i.i13, align 4
  %cmp.i.i14 = icmp eq ptr %42, null
  br i1 %cmp.i.i14, label %if.then.i, label %rt5651_support_button_press.exit.i15.rt5651_disable_jack_detect.exit_crit_edge

rt5651_support_button_press.exit.i15.rt5651_disable_jack_detect.exit_crit_edge: ; preds = %rt5651_support_button_press.exit.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5651_disable_jack_detect.exit

if.then.i:                                        ; preds = %rt5651_support_button_press.exit.i15
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i3, align 4
  %driver_data.i.i.i.i16 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i.i.i16, align 4
  %call1.i9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 190, i32 noundef 32768, i32 noundef 0) #7
  %ovcd_irq_enabled.i.i17 = getelementptr inbounds %struct.rt5651_priv, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %ovcd_irq_enabled.i.i17 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %ovcd_irq_enabled.i.i17, align 4
  %dapm.i.i.i18 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %card.i.i.i19 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %48 = ptrtoint ptr %card.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card.i.i.i19, align 4
  %dapm_mutex.i.i.i20 = getelementptr inbounds %struct.snd_soc_card, ptr %49, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i.i20, i32 noundef 1) #7
  %call1.i10.i = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i.i18, ptr noundef nonnull @.str.36) #7
  %call2.i.i21 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i.i18, ptr noundef nonnull @.str.37) #7
  %call3.i.i22 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i.i18, ptr noundef nonnull @.str.38) #7
  %call4.i.i23 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i.i18) #7
  %50 = ptrtoint ptr %card.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card.i.i.i19, align 4
  %dapm_mutex.i11.i.i24 = getelementptr inbounds %struct.snd_soc_card, ptr %51, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i.i24) #7
  %52 = ptrtoint ptr %hp_jack.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hp_jack.i.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %53, i32 noundef 0, i32 noundef 16384) #7
  br label %rt5651_disable_jack_detect.exit

rt5651_disable_jack_detect.exit:                  ; preds = %if.then.i, %rt5651_support_button_press.exit.i15.rt5651_disable_jack_detect.exit_crit_edge, %if.end.i.i12.rt5651_disable_jack_detect.exit_crit_edge, %if.else.rt5651_disable_jack_detect.exit_crit_edge
  %54 = ptrtoint ptr %hp_jack.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %hp_jack.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %rt5651_disable_jack_detect.exit, %if.end42.i, %do.end.i, %sw.bb.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb5
    i32 0, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 131) #7
  %and = and i32 %call1, 37376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %if.then2

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 3072, i32 noundef 3072) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %dapm.i.i34 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %3 = ptrtoint ptr %dapm.i.i34 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dapm.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.then8, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #7
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 250, i32 noundef 16) #7
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 97, i32 noundef 0) #7
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 98, i32 noundef 0) #7
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 102, i32 noundef 0) #7
  %call18 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 101, i32 noundef 0) #7
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef -4, i32 noundef 0) #7
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 100, i32 noundef -517, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.then8, %sw.bb5.sw.epilog_crit_edge, %if.then2, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dmic_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %regmap = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @rl6231_get_pre_div(ptr noundef %9, i32 noundef 115, i32 noundef 12) #7
  %div = sdiv i32 %7, %call2
  %call3 = tail call i32 @rl6231_calc_dmic_clk(i32 noundef %div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.191) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shl = shl i32 %call3, 5
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 117, i32 noundef 224, i32 noundef %shl) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_bst1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 32, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 32, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_bst2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 16, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 16, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_bst3_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 8, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 8, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_amp_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %regmap = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 292, i32 noundef 1792, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 143, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 142, i32 noundef 13, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 375, i32 noundef 40704) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 99, i32 noundef 16392, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 99, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 99, i32 noundef 16392, i32 noundef 16392, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 143, i32 noundef 8256, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 145, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 144, i32 noundef 1911, i32 noundef 1847, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 311, i32 noundef 7168) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 142, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 292, i32 noundef 1792, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %hp_mute = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 26
  %19 = ptrtoint ptr %hp_mute to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %hp_mute, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hp_mute14 = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 26
  %20 = ptrtoint ptr %hp_mute14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %hp_mute14, align 4
  tail call void @usleep_range_state(i32 noundef 70000, i32 noundef 75000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_hp_post_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
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
  %hp_mute = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %hp_mute to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hp_mute, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 80000, i32 noundef 85000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_pre_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_calc_dmic_clk(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clk_id)
  %cmp2 = icmp eq i32 %9, %clk_id
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %10 = icmp ult i32 %clk_id, 3
  br i1 %10, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.307, i32 noundef %clk_id) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.mult = shl i32 %clk_id, 14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rt5651_set_dai_sysclk, i32 0, i32 %clk_id
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 100, i32 noundef 512, i32 noundef %switch.load) #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef %switch.idx.mult) #7
  %12 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src11 = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 18
  %13 = ptrtoint ptr %sysclk_src11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %clk_id, ptr %sysclk_src11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_set_dai_sysclk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_set_dai_sysclk, %if.then16)) #7
          to label %cleanup [label %if.then16], !srcloc !687

if.then16:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %14 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_set_dai_sysclk.__UNIQUE_ID_ddebug298, ptr noundef %15, ptr noundef nonnull @.str.309, i32 noundef %freq, i32 noundef %clk_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %switch.lookup, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #7
  %6 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  %pll_src = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %source)
  %cmp = icmp eq i32 %8, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_in = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 23
  %9 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq_in)
  %cmp2 = icmp eq i32 %10, %freq_in
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %pll_out = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 24
  %11 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %freq_out)
  %cmp4 = icmp eq i32 %12, %freq_out
  br i1 %cmp4, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool5.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_set_dai_pll.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_set_dai_pll, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !687

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_set_dai_pll.__UNIQUE_ID_ddebug299, ptr noundef %14, ptr noundef nonnull @.str.311) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pll_in13 = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 23
  %15 = ptrtoint ptr %pll_in13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pll_in13, align 4
  %pll_out14 = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 24
  %16 = ptrtoint ptr %pll_out14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pll_out14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %source)
  %17 = icmp ult i32 %source, 3
  br i1 %17, label %switch.lookup, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.312, i32 noundef %source) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end16
  %switch.idx.mult = shl i32 %source, 12
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 12288, i32 noundef %switch.idx.mult) #7
  %call26 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %do.body34

do.end31:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.314, i32 noundef %freq_in) #10
  br label %cleanup

do.body34:                                        ; preds = %switch.lookup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_set_dai_pll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_set_dai_pll, %if.then46)) #7
          to label %do.end54 [label %if.then46], !srcloc !687

if.then46:                                        ; preds = %do.body34
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pll_code, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool48.not = icmp eq i8 %25, 0
  %26 = zext i8 %25 to i32
  br i1 %tobool48.not, label %cond.false, label %if.then46.cond.end_crit_edge

if.then46.cond.end_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %27 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then46.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.false ], [ 0, %if.then46.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %29 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %31 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_set_dai_pll.__UNIQUE_ID_ddebug300, ptr noundef %23, ptr noundef nonnull @.str.316, i32 noundef %26, i32 noundef %cond, i32 noundef %30, i32 noundef %32) #7
  br label %do.end54

do.end54:                                         ; preds = %cond.end, %do.body34
  %n_code55 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %33 = ptrtoint ptr %n_code55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_code55, align 4
  %shl = shl i32 %34, 7
  %k_code56 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %35 = ptrtoint ptr %k_code56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %k_code56, align 4
  %or = or i32 %shl, %36
  %call57 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 129, i32 noundef %or) #7
  %37 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pll_code, align 4, !range !688
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool59.not = icmp eq i8 %38, 0
  br i1 %tobool59.not, label %cond.false62, label %do.end54.cond.end64_crit_edge

do.end54.cond.end64_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end64

cond.false62:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  %m_code63 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %39 = ptrtoint ptr %m_code63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %m_code63, align 4
  %phi.bo = shl i32 %40, 12
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false62, %do.end54.cond.end64_crit_edge
  %cond65 = phi i32 [ %phi.bo, %cond.false62 ], [ 0, %do.end54.cond.end64_crit_edge ]
  %41 = zext i8 %38 to i32
  %shl70 = shl nuw nsw i32 %41, 11
  %or71 = or i32 %cond65, %shl70
  %call72 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 130, i32 noundef %or71) #7
  %pll_in73 = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 23
  %42 = ptrtoint ptr %pll_in73 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %freq_in, ptr %pll_in73, align 4
  %pll_out74 = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 24
  %43 = ptrtoint ptr %pll_out74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %freq_out, ptr %pll_out74, align 4
  %44 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end64, %do.end31, %do.end24, %do.end, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %call26, %do.end31 ], [ 0, %cond.end64 ], [ 0, %do.end ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.337)
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
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %reg_val.0 = phi i32 [ 32768, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 4
  %arrayidx5 = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 21, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %arrayidx5, align 4
  %and6 = and i32 %fmt, 3840
  %11 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %and6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog10_crit_edge
    i32 768, label %sw.bb7
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %reg_val.0, 128
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb7, %sw.epilog.sw.epilog10_crit_edge
  %reg_val.1 = phi i32 [ %or8, %sw.bb7 ], [ %reg_val.0, %sw.epilog.sw.epilog10_crit_edge ]
  %and11 = and i32 %fmt, 15
  %12 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %and11, label %sw.epilog10.cleanup_crit_edge [
    i32 1, label %sw.epilog10.sw.epilog19_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog10.sw.epilog19_crit_edge:                ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %reg_val.1, 1
  br label %sw.epilog19

sw.bb14:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %reg_val.1, 2
  br label %sw.epilog19

sw.bb16:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #9
  %or17 = or i32 %reg_val.1, 3
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.epilog10.sw.epilog19_crit_edge
  %reg_val.2 = phi i32 [ %or17, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %reg_val.1, %sw.epilog10.sw.epilog19_crit_edge ]
  %id20 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %13 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id20, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %14, label %do.end [
    i32 0, label %sw.bb21
    i32 1, label %sw.bb23
  ]

sw.bb21:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 32899, i32 noundef %reg_val.2) #7
  br label %cleanup

sw.bb23:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 32899, i32 noundef %reg_val.2) #7
  br label %cleanup

do.end:                                           ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.317, i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb23, %sw.bb21, %sw.epilog10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog10.cleanup_crit_edge ], [ 0, %sw.bb23 ], [ 0, %sw.bb21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5651_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 19, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %sysclk = getelementptr inbounds %struct.rt5651_priv, ptr %5, i32 0, i32 17
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  %13 = load i32, ptr %id, align 4
  %arrayidx5 = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 19, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @rl6231_get_clk_info(i32 noundef %12, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.319) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.322, i32 noundef %call7) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call7)
  %cmp15 = icmp ugt i32 %call7, 32
  %cond = zext i1 %cmp15 to i32
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %arrayidx18 = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 19, i32 %21
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %shl = shl nuw nsw i32 32, %cond
  %mul = mul i32 %23, %shl
  %arrayidx20 = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 20, i32 %21
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %arrayidx20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_hw_params, %if.then25)) #7
          to label %do.body36 [label %if.then25], !srcloc !687

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %25 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev26, align 4
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %arrayidx29 = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 20, i32 %28
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.rt5651_priv, ptr %5, i32 0, i32 19, i32 %28
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %26, ptr noundef nonnull @.str.324, i32 noundef %30, i32 noundef %32) #7
  br label %do.body36

do.body36:                                        ; preds = %if.then25, %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5651_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5651_hw_params, %if.then48)) #7
          to label %do.end53 [label %if.then48], !srcloc !687

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %33 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev49, align 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5651_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %34, ptr noundef nonnull @.str.325, i32 noundef %cond, i32 noundef %call6, i32 noundef %36) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end53.if.then.i.i.i_crit_edge

do.end53.if.then.i.i.i_crit_edge:                 ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end53.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end53.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %38, %do.end53.if.then.i.i.i_crit_edge ], [ %41, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %39 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !690
  %add.i.i.i = or i32 %39, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end53
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.1.i.i.i = icmp eq i32 %41, 0
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
  %42 = add i32 %call1.i, -8
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %43)
  %44 = icmp ult i32 %43, 5
  br i1 %44, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %43 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %45 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %switch.lobit.not = icmp eq i8 %45, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt5651_hw_params, i32 0, i32 %43
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %48, label %do.end71 [
    i32 0, label %sw.bb60
    i32 1, label %sw.bb64
  ]

sw.bb60:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %shl61 = shl i32 %call6, 12
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 12, i32 noundef %switch.load) #7
  %call63 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 28672, i32 noundef %shl61) #7
  br label %cleanup

sw.bb64:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %shl65 = shl i32 %call6, 8
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 12, i32 noundef %switch.load) #7
  %call67 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 3840, i32 noundef %shl65) #7
  br label %cleanup

do.end71:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.317, i32 noundef %48) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %sw.bb64, %sw.bb60, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end71 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %sw.bb64 ], [ 0, %sw.bb60 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 413)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 413)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !389, !390, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !606, !607, !608, !610, !612, !613, !614, !616, !617, !618, !619, !621, !623, !625, !627, !629, !630, !631, !632, !634, !635, !637, !638, !639, !641, !642, !643, !645, !646, !647, !649, !650, !652, !653, !654, !655, !657, !658, !659, !660, !662, !663, !664, !666, !667, !669, !670, !672, !673, !675}
!llvm.module.flags = !{!677, !678, !679, !680, !681, !682, !683, !684}
!llvm.ident = !{!685}

!0 = !{ptr @__initcall__kmod_snd_soc_rt5651__311_2287_rt5651_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt5651__311_2287_rt5651_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5651.c", i32 2287, i32 1}
!2 = !{ptr @__exitcall_rt5651_i2c_driver_exit, !1, !"__exitcall_rt5651_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description312, !4, !"__UNIQUE_ID_description312", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5651.c", i32 2289, i32 1}
!5 = !{ptr @__UNIQUE_ID_author313, !6, !"__UNIQUE_ID_author313", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5651.c", i32 2290, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5651.c", i32 2291, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5651.c", i32 2280, i32 11}
!12 = !{ptr @rt5651_i2c_driver, !13, !"rt5651_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5651.c", i32 2278, i32 26}
!14 = !{ptr @rt5651_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5651.c", i32 2226, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5651.c", i32 2229, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt5651_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt5651_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt5651.c", i32 2239, i32 3}
!27 = !{ptr @rt5651_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt5651_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt5651.c", i32 2249, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rt5651_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt5651_i2c_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rt5651_i2c_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt5651.c", i32 2254, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rt5651_i2c_probe.__key.15, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rt5651_i2c_probe.__key.17, !40, !"__key", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/rt5651.c", i32 2255, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt5651.c", i32 2266, i32 3}
!44 = !{ptr @rt5651_i2c_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rt5651_i2c_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @rt5651_regmap, !47, !"rt5651_regmap", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt5651.c", i32 2167, i32 35}
!48 = !{ptr @rt5651_reg, !49, !"rt5651_reg", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt5651.c", i32 52, i32 33}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt5651.c", i32 39, i32 12}
!52 = !{ptr @rt5651_ranges, !53, !"rt5651_ranges", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt5651.c", i32 38, i32 38}
!54 = !{ptr @init_list, !55, !"init_list", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt5651.c", i32 48, i32 34}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt5651.c", i32 1707, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rt5651_button_press_work.__UNIQUE_ID_ddebug304, !57, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt5651.c", i32 1715, i32 4}
!63 = !{ptr @rt5651_button_press_work.__UNIQUE_ID_ddebug305, !62, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt5651.c", i32 1624, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rt5651_jack_inserted.__UNIQUE_ID_ddebug302, !65, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt5651.c", i32 1629, i32 2}
!70 = !{ptr @rt5651_jack_inserted.__UNIQUE_ID_ddebug303, !69, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt5651.c", i32 1612, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rt5651_micbias1_ovcd.__UNIQUE_ID_ddebug301, !72, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt5651.c", i32 1798, i32 4}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rt5651_jack_detect_work.__UNIQUE_ID_ddebug308, !76, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt5651.c", i32 1805, i32 3}
!81 = !{ptr @rt5651_jack_detect_work.__UNIQUE_ID_ddebug309, !80, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt5651.c", i32 1815, i32 3}
!84 = !{ptr @rt5651_jack_detect_work.__UNIQUE_ID_ddebug310, !83, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt5651.c", i32 1576, i32 42}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt5651.c", i32 1577, i32 42}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt5651.c", i32 1578, i32 42}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5651.c", i32 1753, i32 4}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rt5651_detect_headset.__UNIQUE_ID_ddebug306, !92, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt5651.c", i32 1759, i32 4}
!97 = !{ptr @rt5651_detect_headset.__UNIQUE_ID_ddebug307, !96, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt5651.c", i32 1767, i32 2}
!100 = !{ptr @rt5651_detect_headset._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rt5651_detect_headset._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @soc_component_dev_rt5651, !103, !"soc_component_dev_rt5651", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt5651.c", i32 2150, i32 46}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt5651.c", i32 316, i32 2}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt5651.c", i32 319, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt5651.c", i32 323, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt5651.c", i32 325, i32 2}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt5651.c", i32 328, i32 2}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt5651.c", i32 332, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt5651.c", i32 334, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt5651.c", i32 336, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt5651.c", i32 339, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt5651.c", i32 343, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt5651.c", i32 345, i32 2}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt5651.c", i32 348, i32 2}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt5651.c", i32 352, i32 2}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt5651.c", i32 357, i32 2}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt5651.c", i32 359, i32 2}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt5651.c", i32 361, i32 2}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt5651.c", i32 364, i32 2}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5651.c", i32 365, i32 2}
!140 = !{ptr @rt5651_snd_controls, !141, !"rt5651_snd_controls", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/rt5651.c", i32 314, i32 38}
!142 = !{ptr @out_vol_tlv, !143, !"out_vol_tlv", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt5651.c", i32 287, i32 14}
!144 = !{ptr @dac_vol_tlv, !145, !"dac_vol_tlv", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt5651.c", i32 288, i32 14}
!146 = !{ptr @bst_tlv, !147, !"bst_tlv", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt5651.c", i32 294, i32 14}
!148 = !{ptr @in_vol_tlv, !149, !"in_vol_tlv", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt5651.c", i32 289, i32 14}
!150 = !{ptr @adc_vol_tlv, !151, !"adc_vol_tlv", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt5651.c", i32 290, i32 14}
!152 = !{ptr @adc_bst_tlv, !153, !"adc_bst_tlv", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt5651.c", i32 291, i32 14}
!154 = !{ptr @rt5651_if2_adc_enum, !155, !"rt5651_if2_adc_enum", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt5651.c", i32 311, i32 8}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt5651.c", i32 306, i32 2}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt5651.c", i32 306, i32 12}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt5651.c", i32 306, i32 20}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt5651.c", i32 306, i32 42}
!164 = !{ptr @rt5651_data_select, !165, !"rt5651_data_select", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/rt5651.c", i32 305, i32 27}
!166 = !{ptr @rt5651_if2_dac_enum, !167, !"rt5651_if2_dac_enum", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt5651.c", i32 308, i32 8}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt5651.c", i32 855, i32 2}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt5651.c", i32 857, i32 2}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt5651.c", i32 859, i32 2}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt5651.c", i32 861, i32 2}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt5651.c", i32 863, i32 2}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt5651.c", i32 872, i32 2}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt5651.c", i32 873, i32 2}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt5651.c", i32 874, i32 2}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt5651.c", i32 876, i32 2}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt5651.c", i32 877, i32 2}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/rt5651.c", i32 878, i32 2}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt5651.c", i32 879, i32 2}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/rt5651.c", i32 880, i32 2}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt5651.c", i32 881, i32 2}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt5651.c", i32 882, i32 2}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt5651.c", i32 885, i32 2}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt5651.c", i32 888, i32 2}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt5651.c", i32 891, i32 2}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/rt5651.c", i32 895, i32 2}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt5651.c", i32 897, i32 2}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/rt5651.c", i32 899, i32 2}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt5651.c", i32 901, i32 2}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/rt5651.c", i32 905, i32 2}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt5651.c", i32 907, i32 2}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/rt5651.c", i32 910, i32 2}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/rt5651.c", i32 911, i32 2}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/rt5651.c", i32 912, i32 2}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt5651.c", i32 914, i32 2}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/rt5651.c", i32 917, i32 2}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt5651.c", i32 919, i32 2}
!228 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/rt5651.c", i32 921, i32 2}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/rt5651.c", i32 923, i32 2}
!232 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt5651.c", i32 925, i32 2}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/rt5651.c", i32 927, i32 2}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/rt5651.c", i32 929, i32 2}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/rt5651.c", i32 931, i32 2}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/rt5651.c", i32 934, i32 2}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/rt5651.c", i32 936, i32 2}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/rt5651.c", i32 938, i32 2}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/rt5651.c", i32 941, i32 2}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/rt5651.c", i32 944, i32 2}
!250 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/rt5651.c", i32 947, i32 2}
!252 = !{ptr @.str.122, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/rt5651.c", i32 952, i32 2}
!254 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/rt5651.c", i32 954, i32 2}
!256 = !{ptr @.str.124, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/rt5651.c", i32 955, i32 2}
!258 = !{ptr @.str.125, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/rt5651.c", i32 956, i32 2}
!260 = !{ptr @.str.126, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/rt5651.c", i32 957, i32 2}
!262 = !{ptr @.str.127, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/rt5651.c", i32 958, i32 2}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/rt5651.c", i32 959, i32 2}
!266 = !{ptr @.str.129, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/rt5651.c", i32 960, i32 2}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/rt5651.c", i32 961, i32 2}
!270 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/rt5651.c", i32 963, i32 2}
!272 = !{ptr @.str.132, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/rt5651.c", i32 964, i32 2}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/rt5651.c", i32 965, i32 2}
!276 = !{ptr @.str.134, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/rt5651.c", i32 966, i32 2}
!278 = !{ptr @.str.135, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/rt5651.c", i32 971, i32 2}
!280 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/rt5651.c", i32 973, i32 2}
!282 = !{ptr @.str.137, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/rt5651.c", i32 976, i32 2}
!284 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/rt5651.c", i32 977, i32 2}
!287 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/rt5651.c", i32 978, i32 2}
!290 = !{ptr @.str.142, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt5651.c", i32 979, i32 2}
!293 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.145, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/rt5651.c", i32 982, i32 2}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/rt5651.c", i32 986, i32 2}
!298 = !{ptr @.str.147, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/rt5651.c", i32 988, i32 2}
!300 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/rt5651.c", i32 992, i32 2}
!302 = !{ptr @.str.149, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/rt5651.c", i32 993, i32 2}
!304 = !{ptr @.str.150, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/rt5651.c", i32 994, i32 2}
!306 = !{ptr @.str.151, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/rt5651.c", i32 995, i32 2}
!308 = !{ptr @.str.152, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/rt5651.c", i32 997, i32 2}
!310 = !{ptr @.str.153, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/rt5651.c", i32 999, i32 2}
!312 = !{ptr @.str.154, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/rt5651.c", i32 1002, i32 2}
!314 = !{ptr @.str.155, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/rt5651.c", i32 1005, i32 2}
!316 = !{ptr @.str.156, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/rt5651.c", i32 1008, i32 2}
!318 = !{ptr @.str.157, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/rt5651.c", i32 1011, i32 2}
!320 = !{ptr @.str.158, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/rt5651.c", i32 1016, i32 2}
!322 = !{ptr @.str.159, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/rt5651.c", i32 1017, i32 2}
!324 = !{ptr @.str.160, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/rt5651.c", i32 1018, i32 2}
!326 = !{ptr @.str.161, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/rt5651.c", i32 1020, i32 2}
!328 = !{ptr @.str.162, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/rt5651.c", i32 1023, i32 2}
!330 = !{ptr @.str.163, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/rt5651.c", i32 1025, i32 2}
!332 = !{ptr @.str.164, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/rt5651.c", i32 1028, i32 2}
!334 = !{ptr @.str.165, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/rt5651.c", i32 1030, i32 2}
!336 = !{ptr @.str.166, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/rt5651.c", i32 1032, i32 2}
!338 = !{ptr @.str.167, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/rt5651.c", i32 1034, i32 2}
!340 = !{ptr @.str.168, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/rt5651.c", i32 1036, i32 2}
!342 = !{ptr @.str.169, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/rt5651.c", i32 1038, i32 2}
!344 = !{ptr @.str.170, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/rt5651.c", i32 1040, i32 2}
!346 = !{ptr @.str.171, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/rt5651.c", i32 1042, i32 2}
!348 = !{ptr @.str.172, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/rt5651.c", i32 1045, i32 2}
!350 = !{ptr @.str.173, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/rt5651.c", i32 1047, i32 2}
!352 = !{ptr @.str.174, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/rt5651.c", i32 1049, i32 2}
!354 = !{ptr @.str.175, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/rt5651.c", i32 1051, i32 2}
!356 = !{ptr @.str.176, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/rt5651.c", i32 1053, i32 2}
!358 = !{ptr @.str.177, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/rt5651.c", i32 1056, i32 2}
!360 = !{ptr @.str.178, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/rt5651.c", i32 1059, i32 2}
!362 = !{ptr @.str.179, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/rt5651.c", i32 1061, i32 2}
!364 = !{ptr @.str.180, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/rt5651.c", i32 1063, i32 2}
!366 = !{ptr @.str.181, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/rt5651.c", i32 1065, i32 2}
!368 = !{ptr @.str.182, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/rt5651.c", i32 1067, i32 2}
!370 = !{ptr @.str.183, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/rt5651.c", i32 1069, i32 2}
!372 = !{ptr @.str.184, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/rt5651.c", i32 1072, i32 2}
!374 = !{ptr @.str.185, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/rt5651.c", i32 1073, i32 2}
!376 = !{ptr @.str.186, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/rt5651.c", i32 1074, i32 2}
!378 = !{ptr @.str.187, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/rt5651.c", i32 1075, i32 2}
!380 = !{ptr @.str.188, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/rt5651.c", i32 1076, i32 2}
!382 = !{ptr @.str.189, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/rt5651.c", i32 1077, i32 2}
!384 = !{ptr @rt5651_dapm_widgets, !385, !"rt5651_dapm_widgets", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/rt5651.c", i32 853, i32 41}
!386 = !{ptr @.str.191, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/rt5651.c", i32 387, i32 3}
!388 = !{ptr @.str.192, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @set_dmic_clk._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @set_dmic_clk._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.193, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/rt5651.c", i32 476, i32 2}
!393 = !{ptr @.str.195, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/rt5651.c", i32 478, i32 2}
!395 = !{ptr @.str.197, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/rt5651.c", i32 480, i32 2}
!397 = !{ptr @.str.199, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/rt5651.c", i32 482, i32 2}
!399 = !{ptr @rt5651_rec_l_mix, !400, !"rt5651_rec_l_mix", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/rt5651.c", i32 475, i32 38}
!401 = !{ptr @.str.201, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/rt5651.c", i32 487, i32 2}
!403 = !{ptr @rt5651_rec_r_mix, !404, !"rt5651_rec_r_mix", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/rt5651.c", i32 486, i32 38}
!405 = !{ptr @.str.206, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/rt5651.c", i32 595, i32 2}
!407 = !{ptr @rt5651_sto1_adc_l2_mux, !408, !"rt5651_sto1_adc_l2_mux", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/rt5651.c", i32 594, i32 38}
!409 = !{ptr @rt5651_stereo1_adc2_enum, !410, !"rt5651_stereo1_adc2_enum", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/rt5651.c", i32 590, i32 8}
!411 = !{ptr @.str.207, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/rt5651.c", i32 588, i32 56}
!413 = !{ptr @.str.208, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/rt5651.c", i32 588, i32 64}
!415 = !{ptr @rt5651_stereo1_adc2_src, !416, !"rt5651_stereo1_adc2_src", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/rt5651.c", i32 588, i32 27}
!417 = !{ptr @.str.209, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/rt5651.c", i32 598, i32 2}
!419 = !{ptr @rt5651_sto1_adc_r2_mux, !420, !"rt5651_sto1_adc_r2_mux", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/rt5651.c", i32 597, i32 38}
!421 = !{ptr @.str.210, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/rt5651.c", i32 583, i32 2}
!423 = !{ptr @rt5651_sto1_adc_l1_mux, !424, !"rt5651_sto1_adc_l1_mux", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/rt5651.c", i32 582, i32 38}
!425 = !{ptr @rt5651_stereo1_adc1_enum, !426, !"rt5651_stereo1_adc1_enum", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/rt5651.c", i32 578, i32 8}
!427 = !{ptr @.str.211, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/rt5651.c", i32 576, i32 66}
!429 = !{ptr @rt5651_stereo1_adc1_src, !430, !"rt5651_stereo1_adc1_src", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/rt5651.c", i32 576, i32 27}
!431 = !{ptr @.str.212, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/rt5651.c", i32 586, i32 2}
!433 = !{ptr @rt5651_sto1_adc_r1_mux, !434, !"rt5651_sto1_adc_r1_mux", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/rt5651.c", i32 585, i32 38}
!435 = !{ptr @.str.213, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/rt5651.c", i32 617, i32 2}
!437 = !{ptr @rt5651_sto2_adc_l2_mux, !438, !"rt5651_sto2_adc_l2_mux", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/rt5651.c", i32 616, i32 38}
!439 = !{ptr @rt5651_sto2_adc_l2_enum, !440, !"rt5651_sto2_adc_l2_enum", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/rt5651.c", i32 612, i32 8}
!441 = !{ptr @.str.214, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/rt5651.c", i32 610, i32 55}
!443 = !{ptr @rt5651_sto2_adc_l2_src, !444, !"rt5651_sto2_adc_l2_src", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/rt5651.c", i32 610, i32 27}
!445 = !{ptr @.str.215, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/rt5651.c", i32 608, i32 2}
!447 = !{ptr @rt5651_sto2_adc_l1_mux, !448, !"rt5651_sto2_adc_l1_mux", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/rt5651.c", i32 607, i32 38}
!449 = !{ptr @rt5651_sto2_adc_l1_enum, !450, !"rt5651_sto2_adc_l1_enum", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/rt5651.c", i32 603, i32 8}
!451 = !{ptr @.str.216, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/rt5651.c", i32 601, i32 66}
!453 = !{ptr @rt5651_sto2_adc_l1_src, !454, !"rt5651_sto2_adc_l1_src", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/rt5651.c", i32 601, i32 27}
!455 = !{ptr @.str.217, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/rt5651.c", i32 626, i32 2}
!457 = !{ptr @rt5651_sto2_adc_r1_mux, !458, !"rt5651_sto2_adc_r1_mux", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/rt5651.c", i32 625, i32 38}
!459 = !{ptr @rt5651_sto2_adc_r1_enum, !460, !"rt5651_sto2_adc_r1_enum", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/rt5651.c", i32 621, i32 8}
!461 = !{ptr @.str.218, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/rt5651.c", i32 619, i32 66}
!463 = !{ptr @rt5651_sto2_adc_r1_src, !464, !"rt5651_sto2_adc_r1_src", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/rt5651.c", i32 619, i32 27}
!465 = !{ptr @.str.219, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/rt5651.c", i32 635, i32 2}
!467 = !{ptr @rt5651_sto2_adc_r2_mux, !468, !"rt5651_sto2_adc_r2_mux", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/rt5651.c", i32 634, i32 38}
!469 = !{ptr @rt5651_sto2_adc_r2_enum, !470, !"rt5651_sto2_adc_r2_enum", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/rt5651.c", i32 630, i32 8}
!471 = !{ptr @.str.220, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/rt5651.c", i32 628, i32 55}
!473 = !{ptr @rt5651_sto2_adc_r2_src, !474, !"rt5651_sto2_adc_r2_src", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/rt5651.c", i32 628, i32 27}
!475 = !{ptr @.str.221, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/rt5651.c", i32 397, i32 2}
!477 = !{ptr @.str.223, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/rt5651.c", i32 399, i32 2}
!479 = !{ptr @rt5651_sto1_adc_l_mix, !480, !"rt5651_sto1_adc_l_mix", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/rt5651.c", i32 396, i32 38}
!481 = !{ptr @rt5651_sto1_adc_r_mix, !482, !"rt5651_sto1_adc_r_mix", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/rt5651.c", i32 403, i32 38}
!483 = !{ptr @rt5651_sto2_adc_l_mix, !484, !"rt5651_sto2_adc_l_mix", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/rt5651.c", i32 410, i32 38}
!485 = !{ptr @rt5651_sto2_adc_r_mix, !486, !"rt5651_sto2_adc_r_mix", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/rt5651.c", i32 417, i32 38}
!487 = !{ptr @.str.231, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/rt5651.c", i32 662, i32 2}
!489 = !{ptr @rt5651_if2_adc_src_mux, !490, !"rt5651_if2_adc_src_mux", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/rt5651.c", i32 661, i32 38}
!491 = !{ptr @rt5651_if2_adc_src_enum, !492, !"rt5651_if2_adc_src_enum", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/rt5651.c", i32 658, i32 8}
!493 = !{ptr @rt5651_adc_src, !494, !"rt5651_adc_src", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/rt5651.c", i32 656, i32 27}
!495 = !{ptr @.str.232, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/rt5651.c", i32 676, i32 2}
!497 = !{ptr @rt5651_pdm_l_mux, !498, !"rt5651_pdm_l_mux", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/rt5651.c", i32 675, i32 38}
!499 = !{ptr @rt5651_pdm_l_sel_enum, !500, !"rt5651_pdm_l_sel_enum", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/rt5651.c", i32 667, i32 8}
!501 = !{ptr @.str.233, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/rt5651.c", i32 665, i32 57}
!503 = !{ptr @rt5651_pdm_sel, !504, !"rt5651_pdm_sel", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/rt5651.c", i32 665, i32 27}
!505 = !{ptr @.str.234, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/rt5651.c", i32 679, i32 2}
!507 = !{ptr @rt5651_pdm_r_mux, !508, !"rt5651_pdm_r_mux", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/rt5651.c", i32 678, i32 38}
!509 = !{ptr @rt5651_pdm_r_sel_enum, !510, !"rt5651_pdm_r_sel_enum", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/rt5651.c", i32 671, i32 8}
!511 = !{ptr @.str.235, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/rt5651.c", i32 425, i32 2}
!513 = !{ptr @.str.237, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/rt5651.c", i32 427, i32 2}
!515 = !{ptr @rt5651_dac_l_mix, !516, !"rt5651_dac_l_mix", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/rt5651.c", i32 424, i32 38}
!517 = !{ptr @rt5651_dac_r_mix, !518, !"rt5651_dac_r_mix", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/rt5651.c", i32 431, i32 38}
!519 = !{ptr @.str.241, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/rt5651.c", i32 645, i32 2}
!521 = !{ptr @rt5651_dac_l2_mux, !522, !"rt5651_dac_l2_mux", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/rt5651.c", i32 644, i32 38}
!523 = !{ptr @rt5651_dac_l2_enum, !524, !"rt5651_dac_l2_enum", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/rt5651.c", i32 641, i32 8}
!525 = !{ptr @.str.242, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/rt5651.c", i32 639, i32 47}
!527 = !{ptr @.str.243, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/rt5651.c", i32 639, i32 54}
!529 = !{ptr @rt5651_dac_src, !530, !"rt5651_dac_src", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/rt5651.c", i32 639, i32 27}
!531 = !{ptr @.str.244, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/rt5651.c", i32 652, i32 2}
!533 = !{ptr @rt5651_dac_r2_mux, !534, !"rt5651_dac_r2_mux", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/rt5651.c", i32 651, i32 38}
!535 = !{ptr @rt5651_dac_r2_enum, !536, !"rt5651_dac_r2_enum", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/rt5651.c", i32 647, i32 8}
!537 = !{ptr @.str.245, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/rt5651.c", i32 439, i32 2}
!539 = !{ptr @.str.247, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/rt5651.c", i32 441, i32 2}
!541 = !{ptr @.str.249, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/rt5651.c", i32 443, i32 2}
!543 = !{ptr @rt5651_sto_dac_l_mix, !544, !"rt5651_sto_dac_l_mix", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/rt5651.c", i32 438, i32 38}
!545 = !{ptr @.str.252, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/rt5651.c", i32 450, i32 2}
!547 = !{ptr @rt5651_sto_dac_r_mix, !548, !"rt5651_sto_dac_r_mix", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/rt5651.c", i32 447, i32 38}
!549 = !{ptr @rt5651_dd_dac_l_mix, !550, !"rt5651_dd_dac_l_mix", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/rt5651.c", i32 456, i32 38}
!551 = !{ptr @rt5651_dd_dac_r_mix, !552, !"rt5651_dd_dac_r_mix", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/rt5651.c", i32 465, i32 38}
!553 = !{ptr @.str.264, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/rt5651.c", i32 506, i32 2}
!555 = !{ptr @rt5651_out_l_mix, !556, !"rt5651_out_l_mix", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/rt5651.c", i32 499, i32 38}
!557 = !{ptr @.str.270, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/rt5651.c", i32 519, i32 2}
!559 = !{ptr @rt5651_out_r_mix, !560, !"rt5651_out_r_mix", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/rt5651.c", i32 512, i32 38}
!561 = !{ptr @.str.273, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/rt5651.c", i32 544, i32 2}
!563 = !{ptr @outvol_l_control, !564, !"outvol_l_control", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/rt5651.c", i32 543, i32 38}
!565 = !{ptr @outvol_r_control, !566, !"outvol_r_control", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/rt5651.c", i32 547, i32 38}
!567 = !{ptr @hpovol_l_control, !568, !"hpovol_l_control", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/rt5651.c", i32 559, i32 38}
!569 = !{ptr @hpovol_r_control, !570, !"hpovol_r_control", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/rt5651.c", i32 563, i32 38}
!571 = !{ptr @.str.278, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/rt5651.c", i32 526, i32 2}
!573 = !{ptr @.str.280, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/rt5651.c", i32 528, i32 2}
!575 = !{ptr @rt5651_hpo_mix, !576, !"rt5651_hpo_mix", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/rt5651.c", i32 525, i32 38}
!577 = !{ptr @.str.284, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/rt5651.c", i32 537, i32 2}
!579 = !{ptr @.str.286, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/rt5651.c", i32 539, i32 2}
!581 = !{ptr @rt5651_lout_mix, !582, !"rt5651_lout_mix", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/rt5651.c", i32 532, i32 38}
!583 = !{ptr @hpo_l_mute_control, !584, !"hpo_l_mute_control", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/rt5651.c", i32 567, i32 38}
!585 = !{ptr @hpo_r_mute_control, !586, !"hpo_r_mute_control", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/rt5651.c", i32 571, i32 38}
!587 = !{ptr @lout_l_mute_control, !588, !"lout_l_mute_control", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/rt5651.c", i32 551, i32 38}
!589 = !{ptr @lout_r_mute_control, !590, !"lout_r_mute_control", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/rt5651.c", i32 555, i32 38}
!591 = !{ptr @rt5651_dapm_routes, !592, !"rt5651_dapm_routes", i1 false, i1 false}
!592 = !{!"../sound/soc/codecs/rt5651.c", i32 1080, i32 40}
!593 = !{ptr @.str.292, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../sound/soc/codecs/rt5651.c", i32 2007, i32 48}
!595 = !{ptr @.str.293, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/rt5651.c", i32 2011, i32 48}
!597 = !{ptr @.str.294, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/rt5651.c", i32 2016, i32 10}
!599 = !{ptr @.str.295, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/rt5651.c", i32 2019, i32 48}
!601 = !{ptr @.str.296, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/rt5651.c", i32 2031, i32 4}
!603 = !{ptr @.str.297, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/rt5651.c", i32 2043, i32 4}
!605 = !{ptr @.str.298, !604, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @rt5651_apply_properties._entry, !604, !"_entry", i1 false, i1 false}
!607 = !{ptr @rt5651_apply_properties._entry_ptr, !604, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.299, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/rt5651.c", i32 2049, i32 4}
!610 = !{ptr @.str.301, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/rt5651.c", i32 2053, i32 4}
!612 = !{ptr @rt5651_apply_properties._entry.300, !611, !"_entry", i1 false, i1 false}
!613 = !{ptr @rt5651_apply_properties._entry_ptr.302, !611, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @.str.303, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/rt5651.c", i32 1917, i32 3}
!616 = !{ptr @.str.304, !615, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @rt5651_enable_jack_detect._entry, !615, !"_entry", i1 false, i1 false}
!618 = !{ptr @rt5651_enable_jack_detect._entry_ptr, !615, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.305, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../sound/soc/codecs/rt5651.c", i32 2111, i32 11}
!621 = !{ptr @.str.306, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../sound/soc/codecs/rt5651.c", i32 2130, i32 11}
!623 = !{ptr @rt5651_dai, !624, !"rt5651_dai", i1 false, i1 false}
!624 = !{!"../sound/soc/codecs/rt5651.c", i32 2109, i32 34}
!625 = !{ptr @rt5651_aif_dai_ops, !626, !"rt5651_aif_dai_ops", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/rt5651.c", i32 2102, i32 37}
!627 = !{ptr @.str.307, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/rt5651.c", i32 1433, i32 3}
!629 = !{ptr @.str.308, !628, !"<string literal>", i1 false, i1 false}
!630 = !{ptr @rt5651_set_dai_sysclk._entry, !628, !"_entry", i1 false, i1 false}
!631 = !{ptr @rt5651_set_dai_sysclk._entry_ptr, !628, !"_entry_ptr", i1 false, i1 false}
!632 = !{ptr @.str.309, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/rt5651.c", i32 1443, i32 2}
!634 = !{ptr @rt5651_set_dai_sysclk.__UNIQUE_ID_ddebug298, !633, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!635 = !{ptr @.str.310, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../sound/soc/codecs/rt5651.c", i32 1461, i32 3}
!637 = !{ptr @.str.311, !636, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @rt5651_set_dai_pll.__UNIQUE_ID_ddebug299, !636, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!639 = !{ptr @.str.312, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../sound/soc/codecs/rt5651.c", i32 1484, i32 3}
!641 = !{ptr @rt5651_set_dai_pll._entry, !640, !"_entry", i1 false, i1 false}
!642 = !{ptr @rt5651_set_dai_pll._entry_ptr, !640, !"_entry_ptr", i1 false, i1 false}
!643 = !{ptr @.str.314, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../sound/soc/codecs/rt5651.c", i32 1490, i32 3}
!645 = !{ptr @rt5651_set_dai_pll._entry.313, !644, !"_entry", i1 false, i1 false}
!646 = !{ptr @rt5651_set_dai_pll._entry_ptr.315, !644, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.316, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../sound/soc/codecs/rt5651.c", i32 1494, i32 2}
!649 = !{ptr @rt5651_set_dai_pll.__UNIQUE_ID_ddebug300, !648, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!650 = !{ptr @.str.317, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/soc/codecs/rt5651.c", i32 1404, i32 3}
!652 = !{ptr @.str.318, !651, !"<string literal>", i1 false, i1 false}
!653 = !{ptr @rt5651_set_dai_fmt._entry, !651, !"_entry", i1 false, i1 false}
!654 = !{ptr @rt5651_set_dai_fmt._entry_ptr, !651, !"_entry_ptr", i1 false, i1 false}
!655 = !{ptr @.str.319, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../sound/soc/codecs/rt5651.c", i32 1293, i32 3}
!657 = !{ptr @.str.320, !656, !"<string literal>", i1 false, i1 false}
!658 = !{ptr @rt5651_hw_params._entry, !656, !"_entry", i1 false, i1 false}
!659 = !{ptr @rt5651_hw_params._entry_ptr, !656, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @.str.322, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/codecs/rt5651.c", i32 1298, i32 3}
!662 = !{ptr @rt5651_hw_params._entry.321, !661, !"_entry", i1 false, i1 false}
!663 = !{ptr @rt5651_hw_params._entry_ptr.323, !661, !"_entry_ptr", i1 false, i1 false}
!664 = !{ptr @.str.324, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/rt5651.c", i32 1304, i32 2}
!666 = !{ptr @rt5651_hw_params.__UNIQUE_ID_ddebug296, !665, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!667 = !{ptr @.str.325, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../sound/soc/codecs/rt5651.c", i32 1306, i32 2}
!669 = !{ptr @rt5651_hw_params.__UNIQUE_ID_ddebug297, !668, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!670 = !{ptr @rt5651_hw_params._entry.326, !671, !"_entry", i1 false, i1 false}
!671 = !{!"../sound/soc/codecs/rt5651.c", i32 1341, i32 3}
!672 = !{ptr @rt5651_hw_params._entry_ptr.327, !671, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @rt5651_of_match, !674, !"rt5651_of_match", i1 false, i1 false}
!674 = !{!"../sound/soc/codecs/rt5651.c", i32 2186, i32 34}
!675 = !{ptr @rt5651_i2c_id, !676, !"rt5651_i2c_id", i1 false, i1 false}
!676 = !{!"../sound/soc/codecs/rt5651.c", i32 2202, i32 35}
!677 = !{i32 1, !"wchar_size", i32 2}
!678 = !{i32 1, !"min_enum_size", i32 4}
!679 = !{i32 8, !"branch-target-enforcement", i32 0}
!680 = !{i32 8, !"sign-return-address", i32 0}
!681 = !{i32 8, !"sign-return-address-all", i32 0}
!682 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!683 = !{i32 7, !"uwtable", i32 1}
!684 = !{i32 7, !"frame-pointer", i32 2}
!685 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!686 = !{!"auto-init"}
!687 = !{i64 2149022643, i64 2149022648, i64 2149022661, i64 2149022705, i64 2149022739, i64 2149022760}
!688 = !{i8 0, i8 2}
!689 = !{!"branch_weights", i32 2000, i32 1}
!690 = !{i32 0, i32 33}
