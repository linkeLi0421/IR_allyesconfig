; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5660.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5660.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.rt5660_priv = type { ptr, %struct.rt5660_platform_data, ptr, ptr, i32, i32, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32 }
%struct.rt5660_platform_data = type { i8, i8, i8, i8, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_rt5660__301_1349_rt5660_i2c_driver_init6 = internal global ptr @rt5660_i2c_driver_init, section ".initcall6.init", align 4
@rt5660_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5660_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5660_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5660_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5660_i2c_driver_exit = internal global ptr @rt5660_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [46 x i8] c"snd_soc_rt5660.description=ASoC RT5660 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [58 x i8] c"snd_soc_rt5660.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [52 x i8] c"snd_soc_rt5660.file=sound/soc/codecs/snd-soc-rt5660\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [30 x i8] c"snd_soc_rt5660.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5660\00", [25 x i8] zeroinitializer }, align 32
@rt5660_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5660_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5660\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@rt5660_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5660_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5660_readable_register, ptr @rt5660_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5660_reg, i32 95, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5660_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5660:1295:(&rt5660_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5660_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1299, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5660_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5660.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5660_i2c_probe._entry_ptr = internal global ptr @rt5660_i2c_probe._entry, section ".printk_index", align 4
@rt5660_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1306, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device with ID register %#x is not rt5660\0A\00", [53 x i8] zeroinitializer }, align 32
@rt5660_i2c_probe._entry_ptr.10 = internal global ptr @rt5660_i2c_probe._entry.8, section ".printk_index", align 4
@rt5660_patch = internal constant { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 235, i32 17603, i32 0 }, %struct.reg_sequence { i32 317, i32 9728, i32 0 }], [40 x i8] zeroinitializer }, align 32
@rt5660_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1315, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5660_i2c_probe._entry_ptr.14 = internal global ptr @rt5660_i2c_probe._entry.11, section ".printk_index", align 4
@soc_component_dev_rt5660 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5660_snd_controls, i32 11, ptr @rt5660_dapm_widgets, i32 60, ptr @rt5660_dapm_routes, i32 100, ptr @rt5660_probe, ptr @rt5660_remove, ptr @rt5660_suspend, ptr @rt5660_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5660_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5660_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.177, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5660_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.79, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.77, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"realtek,in1-differential\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"realtek,in3-differential\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"realtek,poweroff-in-suspend\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"realtek,dmic1-data-pin\00", [41 x i8] zeroinitializer }, align 32
@rt5660_reg = internal constant { [95 x %struct.reg_default], [168 x i8] } { [95 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 51200 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 13, i32 4112 }, %struct.reg_default { i32 14, i32 4112 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 39, i32 24672 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 16962 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 69, i32 57344 }, %struct.reg_default { i32 70, i32 62 }, %struct.reg_default { i32 72, i32 63488 }, %struct.reg_default { i32 74, i32 4 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 511 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 511 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 192 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 115, i32 28672 }, %struct.reg_default { i32 116, i32 15360 }, %struct.reg_default { i32 117, i32 10240 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 140, i32 552 }, %struct.reg_default { i32 141, i32 40960 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 12288 }, %struct.reg_default { i32 161, i32 89 }, %struct.reg_default { i32 162, i32 1 }, %struct.reg_default { i32 163, i32 23680 }, %struct.reg_default { i32 164, i32 326 }, %struct.reg_default { i32 165, i32 7967 }, %struct.reg_default { i32 166, i32 30918 }, %struct.reg_default { i32 167, i32 58860 }, %struct.reg_default { i32 168, i32 47713 }, %struct.reg_default { i32 169, i32 15480 }, %struct.reg_default { i32 170, i32 35554 }, %struct.reg_default { i32 171, i32 58860 }, %struct.reg_default { i32 172, i32 50688 }, %struct.reg_default { i32 173, i32 47713 }, %struct.reg_default { i32 174, i32 6125 }, %struct.reg_default { i32 176, i32 8320 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 179, i32 31 }, %struct.reg_default { i32 180, i32 524 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 16384 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 256 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 211, i32 41504 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 224, i32 32768 }, %struct.reg_default { i32 225, i32 512 }, %struct.reg_default { i32 226, i32 32768 }, %struct.reg_default { i32 227, i32 512 }, %struct.reg_default { i32 228, i32 3872 }, %struct.reg_default { i32 229, i32 31 }, %struct.reg_default { i32 230, i32 524 }, %struct.reg_default { i32 231, i32 7936 }, %struct.reg_default { i32 232, i32 0 }, %struct.reg_default { i32 233, i32 16384 }, %struct.reg_default { i32 234, i32 166 }, %struct.reg_default { i32 235, i32 1219 }, %struct.reg_default { i32 236, i32 10184 }, %struct.reg_default { i32 237, i32 29720 }, %struct.reg_default { i32 238, i32 48976 }, %struct.reg_default { i32 239, i32 69 }, %struct.reg_default { i32 240, i32 7 }, %struct.reg_default { i32 250, i32 0 }, %struct.reg_default { i32 253, i32 0 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25400 }], [168 x i8] zeroinitializer }, align 32
@rt5660_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.19, i32 256, i32 499, i32 106, i32 255, i32 0, i32 108, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@rt5660_snd_controls = internal constant { [11 x %struct.snd_kcontrol_new], [144 x i8] } { [11 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @rt5660_adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }], [144 x i8] zeroinitializer }, align 32
@rt5660_dapm_routes = internal constant { [100 x %struct.snd_soc_dapm_route], [1296 x i8] } { [100 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.106, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.108, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.110, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.112, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.106, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.108, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.110, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.117, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.119, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.121, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.119, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.121, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.42, ptr @rt5660_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.42, ptr @rt5660_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.126, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.127, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.128, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.129, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.126, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.127, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.129, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.131, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.133, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.131, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.133, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.137, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.139, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.42, ptr @rt5660_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.139, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.137, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.42, ptr @rt5660_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.106, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.110, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.145, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.147, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.149, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.106, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.108, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.110, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.154, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.147, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.145, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.108, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.110, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.160, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.147, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.145, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.147, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.145, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.170, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.110, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.164, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.164, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.164, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.173, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.175, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1296 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@rt5660_out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 1, i32 1, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@rt5660_dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 25, i32 25, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN1 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@rt5660_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 69, i32 69, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN2 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 69, i32 69, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN3 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 69, i32 69, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@rt5660_adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 28, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"STO1 ADC Boost Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@rt5660_adc_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L1\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R1\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1N\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2P\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3P\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3N\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMIC Power\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST1\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST2\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST3\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXL\00", [24 x i8] zeroinitializer }, align 32
@rt5660_rec_l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXR\00", [24 x i8] zeroinitializer }, align 32
@rt5660_rec_r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC L power\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC R power\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC clock\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc stereo1 filter\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5660_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5660_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF1 DAC L\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF1 DAC R\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IF1 DAC Swap Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5660_if1_dac_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5660_if1_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IF1 ADC Swap Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5660_if1_adc_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt5660_if1_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXL\00", [22 x i8] zeroinitializer }, align 32
@rt5660_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXR\00", [22 x i8] zeroinitializer }, align 32
@rt5660_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dac stereo1 filter\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXL\00", [16 x i8] zeroinitializer }, align 32
@rt5660_sto_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXR\00", [16 x i8] zeroinitializer }, align 32
@rt5660_sto_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPK MIX\00", [24 x i8] zeroinitializer }, align 32
@rt5660_spk_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5660_out_l_mix = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5660_out_r_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVOL\00", [25 x i8] zeroinitializer }, align 32
@spk_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 1\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOUTVOL\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOUTVOL L\00", [22 x i8] zeroinitializer }, align 32
@lout_l_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOUTVOL R\00", [22 x i8] zeroinitializer }, align 32
@lout_r_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPO MIX\00", [24 x i8] zeroinitializer }, align 32
@rt5660_spo_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5660_lout_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VREF HP\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT amp\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPK amp\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTR\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPO\00", [28 x i8] zeroinitializer }, align 32
@rt5660_dapm_widgets = internal constant { [60 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2704 x i8] } { [60 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @rt5660_set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5660_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5660_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 317, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 28, i8 15, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 28, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5660_if1_dac_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5660_if1_adc_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.76, ptr @.str.77, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.78, ptr @.str.79, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5660_spk_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @rt5660_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5660_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lout_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lout_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5660_spo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5660_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 250, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5660_lout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2704 x i8] zeroinitializer }, align 32
@rt5660_set_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set DMIC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt5660_set_dmic_clk\00", [44 x i8] zeroinitializer }, align 32
@rt5660_set_dmic_clk._entry_ptr = internal global ptr @rt5660_set_dmic_clk._entry, section ".printk_index", align 4
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUT MIXL Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUT MIXR Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 DAC Swap Source\00", [44 x i8] zeroinitializer }, align 32
@rt5660_if1_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 14, i8 14, i32 4, i32 3, ptr @rt5660_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5660_data_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/R\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/L\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/L\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/R\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 ADC Swap Source\00", [44 x i8] zeroinitializer }, align 32
@rt5660_if1_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 12, i8 12, i32 4, i32 3, ptr @rt5660_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo ADC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OUTMIXL Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECMIXL Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECMIXR Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPKVOL Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OUTMIX Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5660-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5660_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rt5660_set_dai_sysclk, ptr @rt5660_set_dai_pll, ptr null, ptr null, ptr @rt5660_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5660_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt5660_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.5, i32 994, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5660_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@rt5660_set_dai_sysclk._entry_ptr = internal global ptr @rt5660_set_dai_sysclk._entry, section ".printk_index", align 4
@rt5660_set_dai_sysclk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.180, ptr @.str.179, ptr @.str.5, ptr @.str.181, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5660\00", [17 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5660_set_dai_pll.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.180, ptr @.str.182, ptr @.str.5, ptr @.str.183, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5660_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5660_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.5, i32 1043, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5660_set_dai_pll._entry_ptr = internal global ptr @rt5660_set_dai_pll._entry, section ".printk_index", align 4
@rt5660_set_dai_pll._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.182, ptr @.str.5, i32 1049, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5660_set_dai_pll._entry_ptr.187 = internal global ptr @rt5660_set_dai_pll._entry.185, section ".printk_index", align 4
@rt5660_set_dai_pll.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.180, ptr @.str.182, ptr @.str.5, ptr @.str.188, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5660_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.5, i32 963, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid dai->id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5660_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@rt5660_set_dai_fmt._entry_ptr = internal global ptr @rt5660_set_dai_fmt._entry, section ".printk_index", align 4
@rt5660_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.5, i32 847, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5660_hw_params\00", [47 x i8] zeroinitializer }, align 32
@rt5660_hw_params._entry_ptr = internal global ptr @rt5660_hw_params._entry, section ".printk_index", align 4
@rt5660_hw_params._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.5, i32 853, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5660_hw_params._entry_ptr.195 = internal global ptr @rt5660_hw_params._entry.193, section ".printk_index", align 4
@rt5660_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.180, ptr @.str.192, ptr @.str.5, ptr @.str.196, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5660_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.180, ptr @.str.192, ptr @.str.5, ptr @.str.197, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.197 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rt5660_hw_params._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.192, ptr @.str.5, i32 896, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rt5660_hw_params._entry_ptr.199 = internal global ptr @rt5660_hw_params._entry.198, section ".printk_index", align 4
@switch.table.rt5660_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12, i32 0, i32 0, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [101 x i64] [i64 99, i64 32, i64 0, i64 1, i64 2, i64 13, i64 14, i64 25, i64 28, i64 30, i64 39, i64 41, i64 42, i64 47, i64 59, i64 60, i64 61, i64 62, i64 69, i64 70, i64 72, i64 74, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 106, i64 108, i64 112, i64 115, i64 116, i64 117, i64 128, i64 129, i64 130, i64 140, i64 141, i64 142, i64 146, i64 147, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 176, i64 177, i64 179, i64 180, i64 181, i64 182, i64 183, i64 187, i64 189, i64 190, i64 191, i64 192, i64 194, i64 211, i64 217, i64 218, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.201 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 108, i64 176, i64 190, i64 191, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.207 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"rt5660_i2c_driver\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1340, i32 26 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1342, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant [16 x i8] c"rt5660_of_match\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1239, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant [14 x i8] c"rt5660_i2c_id\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1232, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1284, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [14 x i8] c"rt5660_regmap\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1214, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1295, i32 19 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1298, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1305, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"rt5660_patch\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 50, i32 34 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1315, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5660\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1197, i32 46 }
@___asan_gen_.271 = private unnamed_addr constant [11 x i8] c"rt5660_dai\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1175, i32 34 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1258, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1260, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1262, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1263, i32 32 }
@___asan_gen_.286 = private unnamed_addr constant [11 x i8] c"rt5660_reg\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 55, i32 33 }
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"rt5660_ranges\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 40, i32 38 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 41, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"rt5660_snd_controls\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 304, i32 38 }
@___asan_gen_.298 = private unnamed_addr constant [19 x i8] c"rt5660_dapm_routes\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 706, i32 40 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 306, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 308, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [19 x i8] c"rt5660_out_vol_tlv\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 298, i32 14 }
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 312, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 314, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 318, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [19 x i8] c"rt5660_dac_vol_tlv\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 299, i32 14 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 323, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [15 x i8] c"rt5660_bst_tlv\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 302, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 325, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 327, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 331, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 333, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [19 x i8] c"rt5660_adc_vol_tlv\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 300, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 338, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [19 x i8] c"rt5660_adc_bst_tlv\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 301, i32 14 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 564, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 566, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 570, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 572, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 577, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 578, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 580, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 581, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 582, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 583, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 584, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 586, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 588, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 592, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 594, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 596, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 600, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"rt5660_rec_l_mix\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 428, i32 38 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 602, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [17 x i8] c"rt5660_rec_r_mix\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 439, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 606, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 607, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 609, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 611, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 613, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 617, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 619, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [22 x i8] c"rt5660_sto1_adc_l_mix\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 385, i32 38 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 621, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [22 x i8] c"rt5660_sto1_adc_r_mix\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 392, i32 38 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 625, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 627, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 631, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 633, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 634, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 635, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 636, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [24 x i8] c"rt5660_if1_dac_swap_mux\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 532, i32 38 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 638, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 639, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [24 x i8] c"rt5660_if1_adc_swap_mux\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 535, i32 38 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 643, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 644, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 648, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"rt5660_dac_l_mix\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 399, i32 38 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 650, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [17 x i8] c"rt5660_dac_r_mix\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 406, i32 38 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 654, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 656, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [21 x i8] c"rt5660_sto_dac_l_mix\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 413, i32 38 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 658, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c"rt5660_sto_dac_r_mix\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 420, i32 38 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 662, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 664, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 668, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [15 x i8] c"rt5660_spk_mix\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 450, i32 38 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 670, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [17 x i8] c"rt5660_out_l_mix\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 463, i32 38 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 672, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [17 x i8] c"rt5660_out_r_mix\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 478, i32 38 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 676, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [16 x i8] c"spk_vol_control\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 509, i32 38 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 678, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 680, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 682, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [19 x i8] c"lout_l_vol_control\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 513, i32 38 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 684, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [19 x i8] c"lout_r_vol_control\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 517, i32 38 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 688, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [15 x i8] c"rt5660_spo_mix\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 491, i32 38 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 690, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [16 x i8] c"rt5660_lout_mix\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 502, i32 38 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 692, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 694, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 697, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 701, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 702, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 703, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [20 x i8] c"rt5660_dapm_widgets\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 563, i32 41 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 362, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 429, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 431, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 433, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 435, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 446, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 386, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 388, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 533, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [20 x i8] c"rt5660_if1_dac_enum\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 526, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant [19 x i8] c"rt5660_data_select\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 522, i32 27 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 523, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 523, i32 9 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 523, i32 16 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 523, i32 23 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 536, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [20 x i8] c"rt5660_if1_adc_enum\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 529, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 400, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 402, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 414, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 416, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 455, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 457, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 459, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 470, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.713 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 483, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 510, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 496, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 503, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 505, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1177, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant [19 x i8] c"rt5660_aif_dai_ops\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1168, i32 37 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 994, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1004, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1022, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1043, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1049, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1053, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 963, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 846, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 853, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 864, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 866, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.817 = private constant [29 x i8] c"../sound/soc/codecs/rt5660.c\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 896, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant [30 x i8] c"switch.table.rt5660_hw_params\00", align 1
@llvm.compiler.used = appending global [260 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_rt5660_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5660__301_1349_rt5660_i2c_driver_init6, ptr @rt5660_hw_params._entry, ptr @rt5660_hw_params._entry.193, ptr @rt5660_hw_params._entry.198, ptr @rt5660_hw_params._entry_ptr, ptr @rt5660_hw_params._entry_ptr.195, ptr @rt5660_hw_params._entry_ptr.199, ptr @rt5660_i2c_driver_exit, ptr @rt5660_i2c_probe._entry, ptr @rt5660_i2c_probe._entry.11, ptr @rt5660_i2c_probe._entry.8, ptr @rt5660_i2c_probe._entry_ptr, ptr @rt5660_i2c_probe._entry_ptr.10, ptr @rt5660_i2c_probe._entry_ptr.14, ptr @rt5660_set_dai_fmt._entry, ptr @rt5660_set_dai_fmt._entry_ptr, ptr @rt5660_set_dai_pll._entry, ptr @rt5660_set_dai_pll._entry.185, ptr @rt5660_set_dai_pll._entry_ptr, ptr @rt5660_set_dai_pll._entry_ptr.187, ptr @rt5660_set_dai_sysclk._entry, ptr @rt5660_set_dai_sysclk._entry_ptr, ptr @rt5660_set_dmic_clk._entry, ptr @rt5660_set_dmic_clk._entry_ptr, ptr @rt5660_i2c_driver, ptr @.str, ptr @rt5660_of_match, ptr @rt5660_i2c_id, ptr @.str.1, ptr @rt5660_i2c_probe._key, ptr @rt5660_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rt5660_patch, ptr @.str.12, ptr @.str.13, ptr @soc_component_dev_rt5660, ptr @rt5660_dai, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rt5660_reg, ptr @rt5660_ranges, ptr @.str.19, ptr @rt5660_snd_controls, ptr @rt5660_dapm_routes, ptr @.str.20, ptr @.compoundliteral, ptr @.str.21, ptr @rt5660_out_vol_tlv, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @rt5660_dac_vol_tlv, ptr @.compoundliteral.28, ptr @.str.29, ptr @rt5660_bst_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @rt5660_adc_vol_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @rt5660_adc_bst_tlv, ptr @.compoundliteral.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @rt5660_rec_l_mix, ptr @.str.58, ptr @rt5660_rec_r_mix, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @rt5660_sto1_adc_l_mix, ptr @.str.66, ptr @rt5660_sto1_adc_r_mix, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @rt5660_if1_dac_swap_mux, ptr @.str.74, ptr @.str.75, ptr @rt5660_if1_adc_swap_mux, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @rt5660_dac_l_mix, ptr @.str.81, ptr @rt5660_dac_r_mix, ptr @.str.82, ptr @.str.83, ptr @rt5660_sto_dac_l_mix, ptr @.str.84, ptr @rt5660_sto_dac_r_mix, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @rt5660_spk_mix, ptr @.str.88, ptr @rt5660_out_l_mix, ptr @.str.89, ptr @rt5660_out_r_mix, ptr @.str.90, ptr @spk_vol_control, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @lout_l_vol_control, ptr @.str.94, ptr @lout_r_vol_control, ptr @.str.95, ptr @rt5660_spo_mix, ptr @.str.96, ptr @rt5660_lout_mix, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @rt5660_dapm_widgets, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @rt5660_if1_dac_enum, ptr @rt5660_data_select, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @rt5660_if1_adc_enum, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @rt5660_aif_dai_ops, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @switch.table.rt5660_hw_params], section "llvm.metadata"
@0 = internal global [242 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_patch to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5660 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_reg to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_snd_controls to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_dapm_routes to i32), i32 5200, i32 6496, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_adc_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_rec_l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_rec_r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_if1_dac_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_if1_adc_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_sto_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_sto_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_spk_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_out_l_mix to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_out_r_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lout_l_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lout_r_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_spo_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_lout_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_dapm_widgets to i32), i32 10800, i32 13504, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_set_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_if1_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_data_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_if1_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_set_dai_pll._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_hw_params._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5660_hw_params._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5660_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5660_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5660_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5660_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !381
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %mclk = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %mclk, align 4
  %cmp7 = icmp eq ptr %call4, inttoptr (i32 -517 to ptr)
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %pdata11 = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %1, align 4
  %7 = ptrtoint ptr %pdata11 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %pdata11, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end9
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.else.if.end18_crit_edge, label %if.then14

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  %pdata.i = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 1
  %frombool.i = zext i1 %call.i.i to i8
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool.i, ptr %pdata.i, align 4
  %call.i1.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  %in3_diff.i = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 1, i32 1
  %frombool3.i = zext i1 %call.i1.i to i8
  %11 = ptrtoint ptr %in3_diff.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool3.i, ptr %in3_diff.i, align 1
  %call.i2.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  %poweroff_codec_in_suspend.i = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 1, i32 3
  %frombool6.i = zext i1 %call.i2.i to i8
  %12 = ptrtoint ptr %poweroff_codec_in_suspend.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool6.i, ptr %poweroff_codec_in_suspend.i, align 1
  %dmic1_data_pin.i = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 1, i32 4
  %call.i3.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %dmic1_data_pin.i, i32 noundef 1) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else.if.end18_crit_edge, %if.then10
  %call19 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5660_regmap, ptr noundef nonnull @rt5660_i2c_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %14) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call28 = call i32 @regmap_read(ptr noundef %call19, i32 noundef 255, ptr noundef nonnull %val) #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25400, i32 %16)
  %cmp29.not = icmp eq i32 %16, 25400
  br i1 %cmp29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %16) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call37 = call i32 @regmap_write(ptr noundef %18, i32 noundef 0, i32 noundef 0) #8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call39 = call i32 @regmap_register_patch(ptr noundef %20, ptr noundef nonnull @rt5660_patch, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end35.if.end46_crit_edge, label %do.end44

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call39) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end35.if.end46_crit_edge
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i108 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 250, i32 noundef 98, i32 noundef 98, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dmic1_data_pin = getelementptr inbounds %struct.rt5660_priv, ptr %call.i, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %dmic1_data_pin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dmic1_data_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool50.not = icmp eq i32 %24, 0
  br i1 %tobool50.not, label %if.end46.if.end69_crit_edge, label %if.then51

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then51:                                        ; preds = %if.end46
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i109 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 192, i32 noundef 12288, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %27 = ptrtoint ptr %dmic1_data_pin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dmic1_data_pin, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.then51.if.end69_crit_edge [
    i32 1, label %if.then51.if.end69.sink.split_crit_edge
    i32 2, label %if.then64
  ]

if.then51.if.end69.sink.split_crit_edge:          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.sink.split

if.then51.if.end69_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then64:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.then64, %if.then51.if.end69.sink.split_crit_edge
  %.sink112 = phi i32 [ 2048, %if.then64 ], [ 0, %if.then51.if.end69.sink.split_crit_edge ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i110 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 117, i32 noundef 2048, i32 noundef %.sink112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.then51.if.end69_crit_edge, %if.end46.if.end69_crit_edge
  %call71 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5660, ptr noundef nonnull @rt5660_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end33, %if.then22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then22 ], [ -19, %do.end33 ], [ %call71, %if.end69 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5660_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %0)
  %1 = icmp eq i32 %0, 108
  %2 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %2)
  %3 = icmp ult i32 %2, 244
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 1, label %for.end.cleanup_crit_edge23
    i32 2, label %for.end.cleanup_crit_edge24
    i32 13, label %for.end.cleanup_crit_edge25
    i32 14, label %for.end.cleanup_crit_edge26
    i32 25, label %for.end.cleanup_crit_edge27
    i32 28, label %for.end.cleanup_crit_edge28
    i32 30, label %for.end.cleanup_crit_edge29
    i32 39, label %for.end.cleanup_crit_edge30
    i32 41, label %for.end.cleanup_crit_edge31
    i32 42, label %for.end.cleanup_crit_edge32
    i32 47, label %for.end.cleanup_crit_edge33
    i32 59, label %for.end.cleanup_crit_edge34
    i32 60, label %for.end.cleanup_crit_edge35
    i32 61, label %for.end.cleanup_crit_edge36
    i32 62, label %for.end.cleanup_crit_edge37
    i32 69, label %for.end.cleanup_crit_edge38
    i32 70, label %for.end.cleanup_crit_edge39
    i32 72, label %for.end.cleanup_crit_edge40
    i32 74, label %for.end.cleanup_crit_edge41
    i32 77, label %for.end.cleanup_crit_edge42
    i32 78, label %for.end.cleanup_crit_edge43
    i32 79, label %for.end.cleanup_crit_edge44
    i32 80, label %for.end.cleanup_crit_edge45
    i32 81, label %for.end.cleanup_crit_edge46
    i32 82, label %for.end.cleanup_crit_edge47
    i32 97, label %for.end.cleanup_crit_edge48
    i32 98, label %for.end.cleanup_crit_edge49
    i32 99, label %for.end.cleanup_crit_edge50
    i32 100, label %for.end.cleanup_crit_edge51
    i32 101, label %for.end.cleanup_crit_edge52
    i32 102, label %for.end.cleanup_crit_edge53
    i32 106, label %for.end.cleanup_crit_edge54
    i32 108, label %for.end.cleanup_crit_edge55
    i32 112, label %for.end.cleanup_crit_edge56
    i32 115, label %for.end.cleanup_crit_edge57
    i32 116, label %for.end.cleanup_crit_edge58
    i32 117, label %for.end.cleanup_crit_edge59
    i32 128, label %for.end.cleanup_crit_edge60
    i32 129, label %for.end.cleanup_crit_edge61
    i32 130, label %for.end.cleanup_crit_edge62
    i32 140, label %for.end.cleanup_crit_edge63
    i32 141, label %for.end.cleanup_crit_edge64
    i32 142, label %for.end.cleanup_crit_edge65
    i32 146, label %for.end.cleanup_crit_edge66
    i32 147, label %for.end.cleanup_crit_edge67
    i32 161, label %for.end.cleanup_crit_edge68
    i32 162, label %for.end.cleanup_crit_edge69
    i32 163, label %for.end.cleanup_crit_edge70
    i32 164, label %for.end.cleanup_crit_edge71
    i32 165, label %for.end.cleanup_crit_edge72
    i32 166, label %for.end.cleanup_crit_edge73
    i32 167, label %for.end.cleanup_crit_edge74
    i32 168, label %for.end.cleanup_crit_edge75
    i32 169, label %for.end.cleanup_crit_edge76
    i32 170, label %for.end.cleanup_crit_edge77
    i32 171, label %for.end.cleanup_crit_edge78
    i32 172, label %for.end.cleanup_crit_edge79
    i32 173, label %for.end.cleanup_crit_edge80
    i32 174, label %for.end.cleanup_crit_edge81
    i32 176, label %for.end.cleanup_crit_edge82
    i32 177, label %for.end.cleanup_crit_edge83
    i32 179, label %for.end.cleanup_crit_edge84
    i32 180, label %for.end.cleanup_crit_edge85
    i32 181, label %for.end.cleanup_crit_edge86
    i32 182, label %for.end.cleanup_crit_edge87
    i32 183, label %for.end.cleanup_crit_edge88
    i32 187, label %for.end.cleanup_crit_edge89
    i32 189, label %for.end.cleanup_crit_edge90
    i32 190, label %for.end.cleanup_crit_edge91
    i32 191, label %for.end.cleanup_crit_edge92
    i32 192, label %for.end.cleanup_crit_edge93
    i32 194, label %for.end.cleanup_crit_edge94
    i32 211, label %for.end.cleanup_crit_edge95
    i32 217, label %for.end.cleanup_crit_edge96
    i32 218, label %for.end.cleanup_crit_edge97
    i32 224, label %for.end.cleanup_crit_edge98
    i32 225, label %for.end.cleanup_crit_edge99
    i32 226, label %for.end.cleanup_crit_edge100
    i32 227, label %for.end.cleanup_crit_edge101
    i32 228, label %for.end.cleanup_crit_edge102
    i32 229, label %for.end.cleanup_crit_edge103
    i32 230, label %for.end.cleanup_crit_edge104
    i32 231, label %for.end.cleanup_crit_edge105
    i32 232, label %for.end.cleanup_crit_edge106
    i32 233, label %for.end.cleanup_crit_edge107
    i32 234, label %for.end.cleanup_crit_edge108
    i32 235, label %for.end.cleanup_crit_edge109
    i32 236, label %for.end.cleanup_crit_edge110
    i32 237, label %for.end.cleanup_crit_edge111
    i32 238, label %for.end.cleanup_crit_edge112
    i32 239, label %for.end.cleanup_crit_edge113
    i32 240, label %for.end.cleanup_crit_edge114
    i32 250, label %for.end.cleanup_crit_edge115
    i32 251, label %for.end.cleanup_crit_edge116
    i32 252, label %for.end.cleanup_crit_edge117
    i32 253, label %for.end.cleanup_crit_edge118
    i32 254, label %for.end.cleanup_crit_edge119
    i32 255, label %for.end.cleanup_crit_edge120
  ]

for.end.cleanup_crit_edge120:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge119:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge118:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge117:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge116:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge115:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge114:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge113:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge112:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge111:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge110:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge109:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge108:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge107:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge106:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge105:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge104:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge103:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge102:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge101:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge100:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge99:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge98:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge97:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge96:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge95:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge94:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge93:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge92:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge91:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge90:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge89:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge88:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge87:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge86:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge85:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge84:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge83:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge82:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge81:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge80:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge79:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge77:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge76:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge75:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge74:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge73:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge72:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge71:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge70:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge69:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge68:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge67:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge66:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge65:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge64:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge63:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge62:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge61:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge60:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge59:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge58:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge57:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge56:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge55:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge54:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge53:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge52:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge51:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge50:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge49:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge48:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge47:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge46:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge45:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge44:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge43:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge42:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge41:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge40:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge39:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge38:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge37:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge36:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge35:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge34:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge33:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge32:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %for.end.cleanup_crit_edge48, %for.end.cleanup_crit_edge49, %for.end.cleanup_crit_edge50, %for.end.cleanup_crit_edge51, %for.end.cleanup_crit_edge52, %for.end.cleanup_crit_edge53, %for.end.cleanup_crit_edge54, %for.end.cleanup_crit_edge55, %for.end.cleanup_crit_edge56, %for.end.cleanup_crit_edge57, %for.end.cleanup_crit_edge58, %for.end.cleanup_crit_edge59, %for.end.cleanup_crit_edge60, %for.end.cleanup_crit_edge61, %for.end.cleanup_crit_edge62, %for.end.cleanup_crit_edge63, %for.end.cleanup_crit_edge64, %for.end.cleanup_crit_edge65, %for.end.cleanup_crit_edge66, %for.end.cleanup_crit_edge67, %for.end.cleanup_crit_edge68, %for.end.cleanup_crit_edge69, %for.end.cleanup_crit_edge70, %for.end.cleanup_crit_edge71, %for.end.cleanup_crit_edge72, %for.end.cleanup_crit_edge73, %for.end.cleanup_crit_edge74, %for.end.cleanup_crit_edge75, %for.end.cleanup_crit_edge76, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %for.end.cleanup_crit_edge84, %for.end.cleanup_crit_edge85, %for.end.cleanup_crit_edge86, %for.end.cleanup_crit_edge87, %for.end.cleanup_crit_edge88, %for.end.cleanup_crit_edge89, %for.end.cleanup_crit_edge90, %for.end.cleanup_crit_edge91, %for.end.cleanup_crit_edge92, %for.end.cleanup_crit_edge93, %for.end.cleanup_crit_edge94, %for.end.cleanup_crit_edge95, %for.end.cleanup_crit_edge96, %for.end.cleanup_crit_edge97, %for.end.cleanup_crit_edge98, %for.end.cleanup_crit_edge99, %for.end.cleanup_crit_edge100, %for.end.cleanup_crit_edge101, %for.end.cleanup_crit_edge102, %for.end.cleanup_crit_edge103, %for.end.cleanup_crit_edge104, %for.end.cleanup_crit_edge105, %for.end.cleanup_crit_edge106, %for.end.cleanup_crit_edge107, %for.end.cleanup_crit_edge108, %for.end.cleanup_crit_edge109, %for.end.cleanup_crit_edge110, %for.end.cleanup_crit_edge111, %for.end.cleanup_crit_edge112, %for.end.cleanup_crit_edge113, %for.end.cleanup_crit_edge114, %for.end.cleanup_crit_edge115, %for.end.cleanup_crit_edge116, %for.end.cleanup_crit_edge117, %for.end.cleanup_crit_edge118, %for.end.cleanup_crit_edge119, %for.end.cleanup_crit_edge120, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ], [ true, %for.end.cleanup_crit_edge48 ], [ true, %for.end.cleanup_crit_edge49 ], [ true, %for.end.cleanup_crit_edge50 ], [ true, %for.end.cleanup_crit_edge51 ], [ true, %for.end.cleanup_crit_edge52 ], [ true, %for.end.cleanup_crit_edge53 ], [ true, %for.end.cleanup_crit_edge54 ], [ true, %for.end.cleanup_crit_edge55 ], [ true, %for.end.cleanup_crit_edge56 ], [ true, %for.end.cleanup_crit_edge57 ], [ true, %for.end.cleanup_crit_edge58 ], [ true, %for.end.cleanup_crit_edge59 ], [ true, %for.end.cleanup_crit_edge60 ], [ true, %for.end.cleanup_crit_edge61 ], [ true, %for.end.cleanup_crit_edge62 ], [ true, %for.end.cleanup_crit_edge63 ], [ true, %for.end.cleanup_crit_edge64 ], [ true, %for.end.cleanup_crit_edge65 ], [ true, %for.end.cleanup_crit_edge66 ], [ true, %for.end.cleanup_crit_edge67 ], [ true, %for.end.cleanup_crit_edge68 ], [ true, %for.end.cleanup_crit_edge69 ], [ true, %for.end.cleanup_crit_edge70 ], [ true, %for.end.cleanup_crit_edge71 ], [ true, %for.end.cleanup_crit_edge72 ], [ true, %for.end.cleanup_crit_edge73 ], [ true, %for.end.cleanup_crit_edge74 ], [ true, %for.end.cleanup_crit_edge75 ], [ true, %for.end.cleanup_crit_edge76 ], [ true, %for.end.cleanup_crit_edge77 ], [ true, %for.end.cleanup_crit_edge78 ], [ true, %for.end.cleanup_crit_edge79 ], [ true, %for.end.cleanup_crit_edge80 ], [ true, %for.end.cleanup_crit_edge81 ], [ true, %for.end.cleanup_crit_edge82 ], [ true, %for.end.cleanup_crit_edge83 ], [ true, %for.end.cleanup_crit_edge84 ], [ true, %for.end.cleanup_crit_edge85 ], [ true, %for.end.cleanup_crit_edge86 ], [ true, %for.end.cleanup_crit_edge87 ], [ true, %for.end.cleanup_crit_edge88 ], [ true, %for.end.cleanup_crit_edge89 ], [ true, %for.end.cleanup_crit_edge90 ], [ true, %for.end.cleanup_crit_edge91 ], [ true, %for.end.cleanup_crit_edge92 ], [ true, %for.end.cleanup_crit_edge93 ], [ true, %for.end.cleanup_crit_edge94 ], [ true, %for.end.cleanup_crit_edge95 ], [ true, %for.end.cleanup_crit_edge96 ], [ true, %for.end.cleanup_crit_edge97 ], [ true, %for.end.cleanup_crit_edge98 ], [ true, %for.end.cleanup_crit_edge99 ], [ true, %for.end.cleanup_crit_edge100 ], [ true, %for.end.cleanup_crit_edge101 ], [ true, %for.end.cleanup_crit_edge102 ], [ true, %for.end.cleanup_crit_edge103 ], [ true, %for.end.cleanup_crit_edge104 ], [ true, %for.end.cleanup_crit_edge105 ], [ true, %for.end.cleanup_crit_edge106 ], [ true, %for.end.cleanup_crit_edge107 ], [ true, %for.end.cleanup_crit_edge108 ], [ true, %for.end.cleanup_crit_edge109 ], [ true, %for.end.cleanup_crit_edge110 ], [ true, %for.end.cleanup_crit_edge111 ], [ true, %for.end.cleanup_crit_edge112 ], [ true, %for.end.cleanup_crit_edge113 ], [ true, %for.end.cleanup_crit_edge114 ], [ true, %for.end.cleanup_crit_edge115 ], [ true, %for.end.cleanup_crit_edge116 ], [ true, %for.end.cleanup_crit_edge117 ], [ true, %for.end.cleanup_crit_edge118 ], [ true, %for.end.cleanup_crit_edge119 ], [ true, %for.end.cleanup_crit_edge120 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5660_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %0)
  %1 = icmp eq i32 %0, 108
  %2 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %2)
  %3 = icmp ult i32 %2, 244
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 108, label %for.end.cleanup_crit_edge23
    i32 176, label %for.end.cleanup_crit_edge24
    i32 190, label %for.end.cleanup_crit_edge25
    i32 191, label %for.end.cleanup_crit_edge26
    i32 253, label %for.end.cleanup_crit_edge27
    i32 254, label %for.end.cleanup_crit_edge28
    i32 255, label %for.end.cleanup_crit_edge29
  ]

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5660_probe(ptr noundef %component) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5660_remove(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5660_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %poweroff_codec_in_suspend = getelementptr inbounds %struct.rt5660_priv, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %poweroff_codec_in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %poweroff_codec_in_suspend, align 1, !range !382
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 350) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.rt5660_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb18
    i32 2, label %sw.bb
    i32 1, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #8
  %mclk = getelementptr inbounds %struct.rt5660_priv, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %dapm.i.i30 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then14, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %if.then14, %sw.bb11.cleanup_crit_edge, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then4, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.then4 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb18 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_set_dmic_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %regmap = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @rl6231_get_pre_div(ptr noundef %9, i32 noundef 115, i32 noundef 12) #8
  %div = sdiv i32 %7, %call2
  %call3 = tail call i32 @rl6231_calc_dmic_clk(i32 noundef %div) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.104) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shl = shl i32 %call3, 5
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 117, i32 noundef 224, i32 noundef %shl) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_lout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 17, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 17, i32 noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_pre_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_calc_dmic_clk(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 128) #8
  %and = and i32 %call1, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp = icmp eq i32 %and, 16384
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sysclk = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clk_id)
  %cmp2 = icmp eq i32 %9, %clk_id
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %10 = icmp ult i32 %clk_id, 3
  br i1 %10, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.178, i32 noundef %clk_id) #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.mult = shl i32 %clk_id, 14
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef %switch.idx.mult) #8
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src9 = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %sysclk_src9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %sysclk_src9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5660_set_dai_sysclk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5660_set_dai_sysclk, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !383

if.then14:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5660_set_dai_sysclk.__UNIQUE_ID_ddebug298, ptr noundef %14, ptr noundef nonnull @.str.181, i32 noundef %freq, i32 noundef %clk_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %switch.lookup, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #8
  %6 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  %pll_src = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %source)
  %cmp = icmp eq i32 %8, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_in = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq_in)
  %cmp2 = icmp eq i32 %10, %freq_in
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %pll_out = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %freq_out)
  %cmp4 = icmp eq i32 %12, %freq_out
  br i1 %cmp4, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool5.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5660_set_dai_pll.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5660_set_dai_pll, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !383

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5660_set_dai_pll.__UNIQUE_ID_ddebug299, ptr noundef %14, ptr noundef nonnull @.str.183) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pll_in13 = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %pll_in13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pll_in13, align 4
  %pll_out14 = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %pll_out14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pll_out14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %17 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %source, label %do.end22 [
    i32 0, label %if.end16.sw.epilog_crit_edge
    i32 1, label %sw.bb18
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.184, i32 noundef %source) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18, %if.end16.sw.epilog_crit_edge
  %.sink = phi i32 [ 4096, %sw.bb18 ], [ %source, %if.end16.sw.epilog_crit_edge ]
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 12288, i32 noundef %.sink) #8
  %call24 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %do.body32

do.end29:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.186, i32 noundef %freq_in) #11
  br label %cleanup

do.body32:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5660_set_dai_pll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5660_set_dai_pll, %if.then44)) #8
          to label %do.end52 [label %if.then44], !srcloc !383

if.then44:                                        ; preds = %do.body32
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pll_code, align 4, !range !382
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool46.not = icmp eq i8 %25, 0
  %26 = zext i8 %25 to i32
  br i1 %tobool46.not, label %cond.false, label %if.then44.cond.end_crit_edge

if.then44.cond.end_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %27 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then44.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.false ], [ 0, %if.then44.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %29 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %31 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5660_set_dai_pll.__UNIQUE_ID_ddebug300, ptr noundef %23, ptr noundef nonnull @.str.188, i32 noundef %26, i32 noundef %cond, i32 noundef %30, i32 noundef %32) #8
  br label %do.end52

do.end52:                                         ; preds = %cond.end, %do.body32
  %n_code53 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %33 = ptrtoint ptr %n_code53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_code53, align 4
  %shl = shl i32 %34, 7
  %k_code54 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %35 = ptrtoint ptr %k_code54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %k_code54, align 4
  %or = or i32 %shl, %36
  %call55 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 129, i32 noundef %or) #8
  %37 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pll_code, align 4, !range !382
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool57.not = icmp eq i8 %38, 0
  br i1 %tobool57.not, label %cond.false60, label %do.end52.cond.end62_crit_edge

do.end52.cond.end62_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end62

cond.false60:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %m_code61 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %39 = ptrtoint ptr %m_code61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %m_code61, align 4
  %phi.bo = shl i32 %40, 12
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false60, %do.end52.cond.end62_crit_edge
  %cond63 = phi i32 [ %phi.bo, %cond.false60 ], [ 0, %do.end52.cond.end62_crit_edge ]
  %41 = zext i8 %38 to i32
  %shl68 = shl nuw nsw i32 %41, 11
  %or69 = or i32 %cond63, %shl68
  %call70 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 130, i32 noundef %or69) #8
  %pll_in71 = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 10
  %42 = ptrtoint ptr %pll_in71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %freq_in, ptr %pll_in71, align 4
  %pll_out72 = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 11
  %43 = ptrtoint ptr %pll_out72 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %freq_out, ptr %pll_out72, align 4
  %44 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end62, %do.end29, %do.end22, %do.end, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ %call24, %do.end29 ], [ 0, %cond.end62 ], [ 0, %do.end ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.205)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %reg_val.0 = phi i32 [ 32768, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 4
  %arrayidx5 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %arrayidx5, align 4
  %and6 = and i32 %fmt, 3840
  %11 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %and6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog10_crit_edge
    i32 768, label %sw.bb7
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %reg_val.0, 128
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb7, %sw.epilog.sw.epilog10_crit_edge
  %reg_val.1 = phi i32 [ %or8, %sw.bb7 ], [ %reg_val.0, %sw.epilog.sw.epilog10_crit_edge ]
  %and11 = and i32 %fmt, 15
  %12 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %and11, label %sw.epilog10.cleanup_crit_edge [
    i32 1, label %sw.epilog10.sw.epilog19_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog10.sw.epilog19_crit_edge:                ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog19

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  %or13 = or i32 %reg_val.1, 1
  br label %sw.epilog19

sw.bb14:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  %or15 = or i32 %reg_val.1, 2
  br label %sw.epilog19

sw.bb16:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  %or17 = or i32 %reg_val.1, 3
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.epilog10.sw.epilog19_crit_edge
  %reg_val.2 = phi i32 [ %or17, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %reg_val.1, %sw.epilog10.sw.epilog19_crit_edge ]
  %id20 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %13 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cond = icmp eq i32 %14, 0
  br i1 %cond, label %sw.bb21, label %do.end

sw.bb21:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 32899, i32 noundef %reg_val.2) #8
  br label %cleanup

do.end:                                           ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.189, i32 noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb21, %sw.epilog10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb21 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5660_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %sysclk = getelementptr inbounds %struct.rt5660_priv, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  %13 = load i32, ptr %id, align 4
  %arrayidx5 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @rl6231_get_clk_info(i32 noundef %12, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %arrayidx9 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 6, i32 %19
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.191, i32 noundef %21, i32 noundef %19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.194, i32 noundef %call11) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call11)
  %cmp19 = icmp ugt i32 %call11, 32
  %. = zext i1 %cmp19 to i32
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %arrayidx24 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 6, i32 %25
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24, align 4
  %shl = shl nuw nsw i32 32, %.
  %mul = mul i32 %27, %shl
  %arrayidx26 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 7, i32 %25
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %arrayidx26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5660_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5660_hw_params, %if.then31)) #8
          to label %do.body42 [label %if.then31], !srcloc !383

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %29 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev32, align 4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %arrayidx35 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 7, i32 %32
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx35, align 4
  %arrayidx38 = getelementptr %struct.rt5660_priv, ptr %5, i32 0, i32 6, i32 %32
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5660_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %30, ptr noundef nonnull @.str.196, i32 noundef %34, i32 noundef %36) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then31, %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5660_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5660_hw_params, %if.then54)) #8
          to label %do.end59 [label %if.then54], !srcloc !383

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %37 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev55, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5660_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %38, ptr noundef nonnull @.str.197, i32 noundef %., i32 noundef %call6, i32 noundef %40) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end59.if.then.i.i.i_crit_edge

do.end59.if.then.i.i.i_crit_edge:                 ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end59.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end59.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %42, %do.end59.if.then.i.i.i_crit_edge ], [ %45, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !384
  %add.i.i.i = or i32 %43, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end59
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1.i.i.i = icmp eq i32 %45, 0
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
  %46 = add i32 %call1.i, -8
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %48 = icmp ult i32 %47, 5
  br i1 %48, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %47 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %49 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %switch.lobit.not = icmp eq i8 %49, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cond = icmp eq i32 %51, 0
  br i1 %cond, label %sw.bb66, label %do.end75

sw.bb66:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt5660_hw_params, i32 0, i32 %47
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shl67 = select i1 %cmp19, i32 32768, i32 0
  %shl68 = shl i32 %call6, 12
  %or69 = or i32 %shl67, %shl68
  %call70 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 12, i32 noundef %switch.load) #8
  %call71 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 61440, i32 noundef %or69) #8
  br label %cleanup

do.end75:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.189, i32 noundef %51) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %sw.bb66, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call11, %do.end16 ], [ 0, %sw.bb66 ], [ -22, %do.end75 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 242)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 242)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !347, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !367, !368, !370}
!llvm.module.flags = !{!372, !373, !374, !375, !376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !{ptr @__initcall__kmod_snd_soc_rt5660__301_1349_rt5660_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt5660__301_1349_rt5660_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5660.c", i32 1349, i32 1}
!2 = !{ptr @__exitcall_rt5660_i2c_driver_exit, !1, !"__exitcall_rt5660_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5660.c", i32 1351, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5660.c", i32 1352, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5660.c", i32 1353, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5660.c", i32 1342, i32 11}
!12 = !{ptr @rt5660_i2c_driver, !13, !"rt5660_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5660.c", i32 1340, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5660.c", i32 1284, i32 41}
!16 = !{ptr @rt5660_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rt5660.c", i32 1295, i32 19}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt5660.c", i32 1298, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rt5660_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @rt5660_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt5660.c", i32 1305, i32 3}
!29 = !{ptr @rt5660_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rt5660_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt5660.c", i32 1315, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rt5660_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rt5660_i2c_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt5660.c", i32 1258, i32 6}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt5660.c", i32 1260, i32 6}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5660.c", i32 1262, i32 6}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt5660.c", i32 1263, i32 32}
!44 = !{ptr @rt5660_regmap, !45, !"rt5660_regmap", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt5660.c", i32 1214, i32 35}
!46 = !{ptr @rt5660_reg, !47, !"rt5660_reg", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt5660.c", i32 55, i32 33}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt5660.c", i32 41, i32 12}
!50 = !{ptr @rt5660_ranges, !51, !"rt5660_ranges", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt5660.c", i32 40, i32 38}
!52 = !{ptr @rt5660_patch, !53, !"rt5660_patch", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt5660.c", i32 50, i32 34}
!54 = !{ptr @soc_component_dev_rt5660, !55, !"soc_component_dev_rt5660", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt5660.c", i32 1197, i32 46}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt5660.c", i32 306, i32 2}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5660.c", i32 308, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt5660.c", i32 312, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt5660.c", i32 314, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt5660.c", i32 318, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt5660.c", i32 323, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt5660.c", i32 325, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/rt5660.c", i32 327, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt5660.c", i32 331, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/rt5660.c", i32 333, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt5660.c", i32 338, i32 2}
!78 = !{ptr @rt5660_snd_controls, !79, !"rt5660_snd_controls", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt5660.c", i32 304, i32 38}
!80 = !{ptr @rt5660_out_vol_tlv, !81, !"rt5660_out_vol_tlv", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/rt5660.c", i32 298, i32 14}
!82 = !{ptr @rt5660_dac_vol_tlv, !83, !"rt5660_dac_vol_tlv", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt5660.c", i32 299, i32 14}
!84 = !{ptr @rt5660_bst_tlv, !85, !"rt5660_bst_tlv", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/rt5660.c", i32 302, i32 14}
!86 = !{ptr @rt5660_adc_vol_tlv, !87, !"rt5660_adc_vol_tlv", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt5660.c", i32 300, i32 14}
!88 = !{ptr @rt5660_adc_bst_tlv, !89, !"rt5660_adc_bst_tlv", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/rt5660.c", i32 301, i32 14}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/rt5660.c", i32 564, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/rt5660.c", i32 566, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/rt5660.c", i32 570, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/rt5660.c", i32 572, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt5660.c", i32 577, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/rt5660.c", i32 578, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt5660.c", i32 580, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt5660.c", i32 581, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt5660.c", i32 582, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt5660.c", i32 583, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt5660.c", i32 584, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt5660.c", i32 586, i32 2}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt5660.c", i32 588, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt5660.c", i32 592, i32 2}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt5660.c", i32 594, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt5660.c", i32 596, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt5660.c", i32 600, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt5660.c", i32 602, i32 2}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt5660.c", i32 606, i32 2}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt5660.c", i32 607, i32 2}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt5660.c", i32 609, i32 2}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt5660.c", i32 611, i32 2}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt5660.c", i32 613, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt5660.c", i32 617, i32 2}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5660.c", i32 619, i32 2}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/rt5660.c", i32 621, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt5660.c", i32 625, i32 2}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt5660.c", i32 627, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt5660.c", i32 631, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt5660.c", i32 633, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt5660.c", i32 634, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt5660.c", i32 635, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt5660.c", i32 636, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt5660.c", i32 638, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt5660.c", i32 639, i32 2}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt5660.c", i32 643, i32 2}
!162 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/rt5660.c", i32 644, i32 2}
!165 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt5660.c", i32 648, i32 2}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt5660.c", i32 650, i32 2}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt5660.c", i32 654, i32 2}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt5660.c", i32 656, i32 2}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt5660.c", i32 658, i32 2}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt5660.c", i32 662, i32 2}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt5660.c", i32 664, i32 2}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt5660.c", i32 668, i32 2}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt5660.c", i32 670, i32 2}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt5660.c", i32 672, i32 2}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt5660.c", i32 676, i32 2}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/rt5660.c", i32 678, i32 2}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt5660.c", i32 680, i32 2}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/rt5660.c", i32 682, i32 2}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt5660.c", i32 684, i32 2}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt5660.c", i32 688, i32 2}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt5660.c", i32 690, i32 2}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt5660.c", i32 692, i32 2}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt5660.c", i32 694, i32 2}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/rt5660.c", i32 697, i32 2}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt5660.c", i32 701, i32 2}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/rt5660.c", i32 702, i32 2}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt5660.c", i32 703, i32 2}
!212 = !{ptr @rt5660_dapm_widgets, !213, !"rt5660_dapm_widgets", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/rt5660.c", i32 563, i32 41}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt5660.c", i32 362, i32 3}
!216 = !{ptr @.str.105, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @rt5660_set_dmic_clk._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @rt5660_set_dmic_clk._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/rt5660.c", i32 429, i32 2}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/rt5660.c", i32 431, i32 2}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/rt5660.c", i32 433, i32 2}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/rt5660.c", i32 435, i32 2}
!227 = !{ptr @rt5660_rec_l_mix, !228, !"rt5660_rec_l_mix", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/rt5660.c", i32 428, i32 38}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/rt5660.c", i32 446, i32 2}
!231 = !{ptr @rt5660_rec_r_mix, !232, !"rt5660_rec_r_mix", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/rt5660.c", i32 439, i32 38}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/rt5660.c", i32 386, i32 2}
!235 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/rt5660.c", i32 388, i32 2}
!237 = !{ptr @rt5660_sto1_adc_l_mix, !238, !"rt5660_sto1_adc_l_mix", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/rt5660.c", i32 385, i32 38}
!239 = !{ptr @rt5660_sto1_adc_r_mix, !240, !"rt5660_sto1_adc_r_mix", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/rt5660.c", i32 392, i32 38}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/rt5660.c", i32 533, i32 2}
!243 = !{ptr @rt5660_if1_dac_swap_mux, !244, !"rt5660_if1_dac_swap_mux", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/rt5660.c", i32 532, i32 38}
!245 = !{ptr @rt5660_if1_dac_enum, !246, !"rt5660_if1_dac_enum", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/rt5660.c", i32 526, i32 8}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/rt5660.c", i32 523, i32 2}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/rt5660.c", i32 523, i32 9}
!251 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/rt5660.c", i32 523, i32 16}
!253 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/rt5660.c", i32 523, i32 23}
!255 = !{ptr @rt5660_data_select, !256, !"rt5660_data_select", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/rt5660.c", i32 522, i32 27}
!257 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/rt5660.c", i32 536, i32 2}
!259 = !{ptr @rt5660_if1_adc_swap_mux, !260, !"rt5660_if1_adc_swap_mux", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/rt5660.c", i32 535, i32 38}
!261 = !{ptr @rt5660_if1_adc_enum, !262, !"rt5660_if1_adc_enum", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/rt5660.c", i32 529, i32 8}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/rt5660.c", i32 400, i32 2}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/rt5660.c", i32 402, i32 2}
!267 = !{ptr @rt5660_dac_l_mix, !268, !"rt5660_dac_l_mix", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/rt5660.c", i32 399, i32 38}
!269 = !{ptr @rt5660_dac_r_mix, !270, !"rt5660_dac_r_mix", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/rt5660.c", i32 406, i32 38}
!271 = !{ptr @.str.137, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/rt5660.c", i32 414, i32 2}
!273 = !{ptr @.str.139, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/rt5660.c", i32 416, i32 2}
!275 = !{ptr @rt5660_sto_dac_l_mix, !276, !"rt5660_sto_dac_l_mix", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/rt5660.c", i32 413, i32 38}
!277 = !{ptr @rt5660_sto_dac_r_mix, !278, !"rt5660_sto_dac_r_mix", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/rt5660.c", i32 420, i32 38}
!279 = !{ptr @.str.145, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/rt5660.c", i32 455, i32 2}
!281 = !{ptr @.str.147, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/rt5660.c", i32 457, i32 2}
!283 = !{ptr @.str.149, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/rt5660.c", i32 459, i32 2}
!285 = !{ptr @rt5660_spk_mix, !286, !"rt5660_spk_mix", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/rt5660.c", i32 450, i32 38}
!287 = !{ptr @.str.154, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/rt5660.c", i32 470, i32 2}
!289 = !{ptr @rt5660_out_l_mix, !290, !"rt5660_out_l_mix", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/rt5660.c", i32 463, i32 38}
!291 = !{ptr @.str.160, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt5660.c", i32 483, i32 2}
!293 = !{ptr @rt5660_out_r_mix, !294, !"rt5660_out_r_mix", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/rt5660.c", i32 478, i32 38}
!295 = !{ptr @.str.164, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/rt5660.c", i32 510, i32 2}
!297 = !{ptr @spk_vol_control, !298, !"spk_vol_control", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/rt5660.c", i32 509, i32 38}
!299 = !{ptr @lout_l_vol_control, !300, !"lout_l_vol_control", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/rt5660.c", i32 513, i32 38}
!301 = !{ptr @lout_r_vol_control, !302, !"lout_r_vol_control", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/rt5660.c", i32 517, i32 38}
!303 = !{ptr @.str.170, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/rt5660.c", i32 496, i32 2}
!305 = !{ptr @rt5660_spo_mix, !306, !"rt5660_spo_mix", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/rt5660.c", i32 491, i32 38}
!307 = !{ptr @.str.173, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/rt5660.c", i32 503, i32 2}
!309 = !{ptr @.str.175, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/rt5660.c", i32 505, i32 2}
!311 = !{ptr @rt5660_lout_mix, !312, !"rt5660_lout_mix", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/rt5660.c", i32 502, i32 38}
!313 = !{ptr @rt5660_dapm_routes, !314, !"rt5660_dapm_routes", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/rt5660.c", i32 706, i32 40}
!315 = !{ptr @.str.177, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/rt5660.c", i32 1177, i32 11}
!317 = !{ptr @rt5660_dai, !318, !"rt5660_dai", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/rt5660.c", i32 1175, i32 34}
!319 = !{ptr @rt5660_aif_dai_ops, !320, !"rt5660_aif_dai_ops", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/rt5660.c", i32 1168, i32 37}
!321 = !{ptr @.str.178, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/rt5660.c", i32 994, i32 3}
!323 = !{ptr @.str.179, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @rt5660_set_dai_sysclk._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @rt5660_set_dai_sysclk._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.180, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/rt5660.c", i32 1004, i32 2}
!328 = !{ptr @.str.181, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @rt5660_set_dai_sysclk.__UNIQUE_ID_ddebug298, !327, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!330 = !{ptr @.str.182, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/rt5660.c", i32 1022, i32 3}
!332 = !{ptr @.str.183, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @rt5660_set_dai_pll.__UNIQUE_ID_ddebug299, !331, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!334 = !{ptr @.str.184, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/rt5660.c", i32 1043, i32 3}
!336 = !{ptr @rt5660_set_dai_pll._entry, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @rt5660_set_dai_pll._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.186, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/rt5660.c", i32 1049, i32 3}
!340 = !{ptr @rt5660_set_dai_pll._entry.185, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @rt5660_set_dai_pll._entry_ptr.187, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.188, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/rt5660.c", i32 1053, i32 2}
!344 = !{ptr @rt5660_set_dai_pll.__UNIQUE_ID_ddebug300, !343, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!345 = !{ptr @.str.189, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/rt5660.c", i32 963, i32 3}
!347 = !{ptr @.str.190, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @rt5660_set_dai_fmt._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @rt5660_set_dai_fmt._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.191, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/rt5660.c", i32 846, i32 3}
!352 = !{ptr @.str.192, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @rt5660_hw_params._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @rt5660_hw_params._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.194, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/rt5660.c", i32 853, i32 3}
!357 = !{ptr @rt5660_hw_params._entry.193, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @rt5660_hw_params._entry_ptr.195, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.196, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/rt5660.c", i32 864, i32 2}
!361 = !{ptr @rt5660_hw_params.__UNIQUE_ID_ddebug296, !360, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!362 = !{ptr @.str.197, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/rt5660.c", i32 866, i32 2}
!364 = !{ptr @rt5660_hw_params.__UNIQUE_ID_ddebug297, !363, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!365 = !{ptr @rt5660_hw_params._entry.198, !366, !"_entry", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/rt5660.c", i32 896, i32 3}
!367 = !{ptr @rt5660_hw_params._entry_ptr.199, !366, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @rt5660_of_match, !369, !"rt5660_of_match", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/rt5660.c", i32 1239, i32 34}
!370 = !{ptr @rt5660_i2c_id, !371, !"rt5660_i2c_id", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/rt5660.c", i32 1232, i32 35}
!372 = !{i32 1, !"wchar_size", i32 2}
!373 = !{i32 1, !"min_enum_size", i32 4}
!374 = !{i32 8, !"branch-target-enforcement", i32 0}
!375 = !{i32 8, !"sign-return-address", i32 0}
!376 = !{i32 8, !"sign-return-address-all", i32 0}
!377 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!378 = !{i32 7, !"uwtable", i32 1}
!379 = !{i32 7, !"frame-pointer", i32 2}
!380 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!381 = !{!"auto-init"}
!382 = !{i8 0, i8 2}
!383 = !{i64 2148990248, i64 2148990253, i64 2148990266, i64 2148990310, i64 2148990344, i64 2148990365}
!384 = !{i32 0, i32 33}
