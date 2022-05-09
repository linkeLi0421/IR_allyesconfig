; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8993.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8993.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.anon.108 = type { i32, i32, i16, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.109 = type { i32, i32 }
%struct.anon.110 = type { i32, i32 }
%struct.anon.111 = type { i32, i32 }
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
%struct.wm8993_priv = type { %struct.wm_hubs_data, ptr, ptr, [6 x %struct.regulator_bulk_data], %struct.wm8993_platform_data, %struct.completion, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wm_hubs_data = type { i32, i32, i32, i32, i32, i32, i8, i8, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.completion, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.wm8993_platform_data = type { ptr, i32, i8, i32, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct._fll_div = type { i16, i16, i16, i16, i16 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.wm8993_retune_mobile_setting = type { ptr, i32, [24 x i16] }

@__initcall__kmod_snd_soc_wm8993__315_1753_wm8993_i2c_driver_init6 = internal global ptr @wm8993_i2c_driver_init, section ".initcall6.init", align 4
@wm8993_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8993_i2c_probe, ptr @wm8993_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8993_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8993_i2c_driver_exit = internal global ptr @wm8993_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description316 = internal constant [46 x i8] c"snd_soc_wm8993.description=ASoC WM8993 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [71 x i8] c"snd_soc_wm8993.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [52 x i8] c"snd_soc_wm8993.file=sound/soc/codecs/snd-soc-wm8993\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [27 x i8] c"snd_soc_wm8993.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8993\00", [25 x i8] zeroinitializer }, align 32
@wm8993_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8993\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8993_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8993_readable, ptr @wm8993_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 126, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8993_reg_defaults, i32 106, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8993:1642:(&wm8993_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1645, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8993_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8993.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr = internal global ptr @wm8993_i2c_probe._entry, section ".printk_index", align 4
@wm8993_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1657, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr.9 = internal global ptr @wm8993_i2c_probe._entry.7, section ".printk_index", align 4
@wm8993_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr.12 = internal global ptr @wm8993_i2c_probe._entry.10, section ".printk_index", align 4
@wm8993_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr.15 = internal global ptr @wm8993_i2c_probe._entry.13, section ".printk_index", align 4
@wm8993_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid ID register value %x\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr.18 = internal global ptr @wm8993_i2c_probe._entry.16, section ".printk_index", align 4
@wm8993_regmap_patch = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 68, i32 3, i32 0 }, %struct.reg_sequence { i32 86, i32 3, i32 0 }, %struct.reg_sequence { i32 68, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1688, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr.22 = internal global ptr @wm8993_i2c_probe._entry.19, section ".printk_index", align 4
@soc_component_dev_wm8993 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @wm8993_probe, ptr null, ptr @wm8993_suspend, ptr @wm8993_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8993_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8993_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.229, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8993_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.159, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.162, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 24 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8993_i2c_probe._entry_ptr.25 = internal global ptr @wm8993_i2c_probe._entry.23, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wm8993_reg_defaults = internal constant { [106 x %struct.reg_default], [208 x i8] } { [106 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 16464 }, %struct.reg_default { i32 5, i32 16384 }, %struct.reg_default { i32 6, i32 456 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 64 }, %struct.reg_default { i32 10, i32 4 }, %struct.reg_default { i32 11, i32 192 }, %struct.reg_default { i32 12, i32 192 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 768 }, %struct.reg_default { i32 15, i32 192 }, %struct.reg_default { i32 16, i32 192 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 16 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 32768 }, %struct.reg_default { i32 23, i32 2048 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 256 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 12000 }, %struct.reg_default { i32 64, i32 2 }, %struct.reg_default { i32 65, i32 8839 }, %struct.reg_default { i32 66, i32 607 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 69, i32 2 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 96, i32 256 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 12 }, %struct.reg_default { i32 100, i32 12 }, %struct.reg_default { i32 101, i32 12 }, %struct.reg_default { i32 102, i32 12 }, %struct.reg_default { i32 103, i32 12 }, %struct.reg_default { i32 104, i32 4042 }, %struct.reg_default { i32 105, i32 1024 }, %struct.reg_default { i32 106, i32 216 }, %struct.reg_default { i32 107, i32 7861 }, %struct.reg_default { i32 108, i32 61765 }, %struct.reg_default { i32 109, i32 2933 }, %struct.reg_default { i32 110, i32 453 }, %struct.reg_default { i32 111, i32 7256 }, %struct.reg_default { i32 112, i32 62323 }, %struct.reg_default { i32 113, i32 2644 }, %struct.reg_default { i32 114, i32 1368 }, %struct.reg_default { i32 115, i32 5774 }, %struct.reg_default { i32 116, i32 63529 }, %struct.reg_default { i32 117, i32 1965 }, %struct.reg_default { i32 118, i32 4355 }, %struct.reg_default { i32 119, i32 1380 }, %struct.reg_default { i32 120, i32 1369 }, %struct.reg_default { i32 121, i32 16384 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 3848 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 128 }, %struct.reg_default { i32 126, i32 0 }], [208 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVDD\00", [25 x i8] zeroinitializer }, align 32
@wm8993_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 1412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read interrupt status: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8993_irq\00", [21 x i8] zeroinitializer }, align 32
@wm8993_irq._entry_ptr = internal global ptr @wm8993_irq._entry, section ".printk_index", align 4
@wm8993_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 1419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read interrupt mask: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8993_irq._entry_ptr.37 = internal global ptr @wm8993_irq._entry.35, section ".printk_index", align 4
@wm8993_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.4, i32 1429, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Thermal warning\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@wm8993_irq._entry_ptr.41 = internal global ptr @wm8993_irq._entry.38, section ".printk_index", align 4
@wm8993_irq.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.34, ptr @.str.4, ptr @.str.43, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8993\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FLL locked\0A\00", [20 x i8] zeroinitializer }, align 32
@wm8993_irq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.4, i32 1438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to ack interrupt: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8993_irq._entry_ptr.46 = internal global ptr @wm8993_irq._entry.44, section ".printk_index", align 4
@wm8993_snd_controls = internal constant { [29 x %struct.snd_kcontrol_new], [336 x i8] } { [29 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_path to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_comp_threash }, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_comp_amp }, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_r0 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_r1 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_min_tlv }, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_attack to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_decay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_ff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_qr_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_qr_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_smooth to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_startup_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac_deemph to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }], [336 x i8] zeroinitializer }, align 32
@wm8993_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8993_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using ReTune Mobile\0A\00", [43 x i8] zeroinitializer }, align 32
@wm8993_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.47, ptr @.str.4, ptr @.str.49, i8 1, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No ReTune Mobile, using normal EQ\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8993_eq_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }], [48 x i8] zeroinitializer }, align 32
@routes = internal constant { [38 x %struct.snd_soc_dapm_route], [488 x i8] } { [38 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.181, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.182, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.181, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.182, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.181, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.182, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.181, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.182, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.181, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.182, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.181, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.182, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.193, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.193, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.193, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.193, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.98, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.98, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }], [488 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Sidetone Volume\00", [40 x i8] zeroinitializer }, align 32
@sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 13, i32 13, i32 5, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 123, i32 123, i32 15, i32 15, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DRC Path\00", [23 x i8] zeroinitializer }, align 32
@drc_path = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 123, i8 14, i8 14, i32 2, i32 1, ptr @drc_path_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRC Compressor Threshold Volume\00", [32 x i8] zeroinitializer }, align 32
@drc_comp_threash = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4500, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 124, i32 124, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRC Compressor Amplitude Volume\00", [32 x i8] zeroinitializer }, align 32
@drc_comp_amp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2250, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 125, i32 125, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DRC R0\00", [25 x i8] zeroinitializer }, align 32
@drc_r0 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 125, i8 8, i8 8, i32 6, i32 7, ptr @drc_r0_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DRC R1\00", [25 x i8] zeroinitializer }, align 32
@drc_r1 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 126, i8 13, i8 13, i32 5, i32 7, ptr @drc_r1_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Minimum Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_min_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1800, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 123, i32 123, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Maximum Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_max_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 2, i32 1, i32 8, i32 1200, i32 600, i32 3, i32 3, i32 1, i32 8, i32 3600, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 123, i32 123, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRC Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@drc_attack = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 124, i8 12, i8 12, i32 12, i32 15, ptr @drc_attack_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DRC Decay Rate\00", [17 x i8] zeroinitializer }, align 32
@drc_decay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 124, i8 8, i8 8, i32 9, i32 15, ptr @drc_decay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DRC FF Delay\00", [19 x i8] zeroinitializer }, align 32
@drc_ff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 125, i8 7, i8 7, i32 2, i32 1, ptr @drc_ff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRC Anti-clip Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 123, i32 123, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRC Quick Release Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 123, i32 123, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRC Quick Release Volume\00", [39 x i8] zeroinitializer }, align 32
@drc_qr_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 125, i32 125, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRC Quick Release Rate\00", [41 x i8] zeroinitializer }, align 32
@drc_qr_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 125, i8 0, i8 0, i32 3, i32 3, ptr @drc_qr_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRC Smoothing Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 123, i32 123, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRC Smoothing Hysteresis Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 123, i32 123, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DRC Smoothing Hysteresis Threshold\00", [61 x i8] zeroinitializer }, align 32
@drc_smooth = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 123, i8 4, i8 4, i32 3, i32 3, ptr @drc_smooth_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Startup Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_startup_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1800, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 126, i32 126, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EQ Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 98, i32 98, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 15, i32 16, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC High Pass Filter Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ADC High Pass Filter Mode\00", [38 x i8] zeroinitializer }, align 32
@adc_hpf = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 5, i8 5, i32 4, i32 3, ptr @adc_hpf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 11, i32 12, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Playback Boost Volume\00", [42 x i8] zeroinitializer }, align 32
@dac_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 5, i32 5, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Deemphasis\00", [17 x i8] zeroinitializer }, align 32
@dac_deemph = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 4, i8 4, i32 4, i32 3, ptr @dac_deemph_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPKL DAC Volume\00", [16 x i8] zeroinitializer }, align 32
@wm_hubs_spkmix_tlv = external dso_local constant [0 x i32], align 4
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPKR DAC Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@drc_path_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.97, ptr @.str.98], [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@drc_r0_text = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/2\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/8\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@drc_r1_text = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104], [44 x i8] zeroinitializer }, align 32
@drc_attack_text = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116], [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"181us\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"363us\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"726us\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.45ms\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.9ms\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.8ms\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"11.6ms\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"23.2ms\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"46.4ms\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"92.8ms\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"185.6ms\00", [24 x i8] zeroinitializer }, align 32
@drc_decay_text = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"186ms\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"372ms\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"743ms\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.49s\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.97ms\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.94ms\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"11.89ms\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"23.78ms\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"47.56ms\00", [24 x i8] zeroinitializer }, align 32
@drc_ff_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.126, ptr @.str.127], [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"5 samples\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"9 samples\00", [22 x i8] zeroinitializer }, align 32
@drc_qr_rate_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.128, ptr @.str.109, ptr @.str.111], [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.725ms\00", [24 x i8] zeroinitializer }, align 32
@drc_smooth_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.131], [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Low\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Medium\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"High\00", [27 x i8] zeroinitializer }, align 32
@adc_hpf_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135], [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hi-Fi\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 1\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 2\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 3\00", [24 x i8] zeroinitializer }, align 32
@dac_deemph_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139], [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Volume\00", [21 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 99, i32 99, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 100, i32 100, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 101, i32 101, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 102, i32 102, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 103, i32 103, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_SYS\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TOCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMID\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIFOUTL Mux\00", [20 x i8] zeroinitializer }, align 32
@aifoutl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifoutl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIFOUTR Mux\00", [20 x i8] zeroinitializer }, align 32
@aifoutr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifoutr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTR\00", [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINL\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINR\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACL Mux\00", [23 x i8] zeroinitializer }, align 32
@aifinl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifinl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACR Mux\00", [23 x i8] zeroinitializer }, align 32
@aifinr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifinr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DACL Sidetone\00", [18 x i8] zeroinitializer }, align 32
@sidetonel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sidetonel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DACR Sidetone\00", [18 x i8] zeroinitializer }, align 32
@sidetoner_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sidetoner_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Headphone Mux\00", [45 x i8] zeroinitializer }, align 32
@wm_hubs_hpl_mux = external dso_local constant %struct.snd_kcontrol_new, align 4
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Headphone Mux\00", [44 x i8] zeroinitializer }, align 32
@wm_hubs_hpr_mux = external dso_local constant %struct.snd_kcontrol_new, align 4
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@left_speaker_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.189, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@right_speaker_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Direct Voice\00", [19 x i8] zeroinitializer }, align 32
@wm8993_dapm_widgets = internal constant { [23 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1044 x i8] } { [23 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @clk_sys_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 65, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifoutl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifoutr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.158, ptr @.str.159, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.160, ptr @.str.159, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.161, ptr @.str.162, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.163, ptr @.str.162, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifinl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifinr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sidetonel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sidetoner_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm_hubs_hpl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm_hubs_hpr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @left_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @right_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1044 x i8] zeroinitializer }, align 32
@configure_clock.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.176, ptr @.str.4, ptr @.str.177, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"configure_clock\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using %dHz MCLK\0A\00", [47 x i8] zeroinitializer }, align 32
@configure_clock.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.176, ptr @.str.4, ptr @.str.178, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using %dHz FLL clock\0A\00", [42 x i8] zeroinitializer }, align 32
@configure_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.176, ptr @.str.4, i32 615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"System clock not configured\0A\00", [35 x i8] zeroinitializer }, align 32
@configure_clock._entry_ptr = internal global ptr @configure_clock._entry, section ".printk_index", align 4
@configure_clock.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.176, ptr @.str.4, ptr @.str.180, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLK_SYS is %dHz\0A\00", [47 x i8] zeroinitializer }, align 32
@aifoutl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 15, i8 15, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aif_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.181, ptr @.str.182], [24 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@aifoutr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 14, i8 14, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIFINL Mux\00", [21 x i8] zeroinitializer }, align 32
@aifinl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 15, i8 15, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIFINR Mux\00", [21 x i8] zeroinitializer }, align 32
@aifinr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 14, i8 14, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Sidetone\00", [18 x i8] zeroinitializer }, align 32
@sidetonel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sidetone_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.136, ptr @.str.181, ptr @.str.182], [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Sidetone\00", [17 x i8] zeroinitializer }, align 32
@sidetoner_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Input Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IN1LP Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Output Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IN1RP Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Output Mixer\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Output Mixer\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Output PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Output PGA\00", [47 x i8] zeroinitializer }, align 32
@wm8993_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.4, i32 1556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to stop FLL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8993_suspend\00", [17 x i8] zeroinitializer }, align 32
@wm8993_suspend._entry_ptr = internal global ptr @wm8993_suspend._entry, section ".printk_index", align 4
@_wm8993_set_fll.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.208, ptr @.str.4, ptr @.str.209, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_wm8993_set_fll\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@_wm8993_set_fll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown FLL ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@_wm8993_set_fll._entry_ptr = internal global ptr @_wm8993_set_fll._entry, section ".printk_index", align 4
@_wm8993_set_fll._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.208, ptr @.str.4, i32 559, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Timed out waiting for FLL\0A\00", [37 x i8] zeroinitializer }, align 32
@_wm8993_set_fll._entry_ptr.213 = internal global ptr @_wm8993_set_fll._entry.211, section ".printk_index", align 4
@_wm8993_set_fll.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.208, ptr @.str.4, ptr @.str.214, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FLL enabled at %dHz->%dHz\0A\00", [37 x i8] zeroinitializer }, align 32
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.4, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Can't scale %dMHz input down to <=13.5MHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.216, ptr @.str.4, ptr @.str.217, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fref=%u Fout=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@fll_factors._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.216, ptr @.str.4, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.220 = internal global ptr @fll_factors._entry.218, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.216, ptr @.str.4, ptr @.str.221, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fvco=%dHz\0A\00", [21 x i8] zeroinitializer }, align 32
@fll_fratios = internal constant { [5 x %struct.anon.108], [48 x i8] } { [5 x %struct.anon.108] [%struct.anon.108 { i32 0, i32 64000, i16 4, i32 16 }, %struct.anon.108 { i32 64000, i32 128000, i16 3, i32 8 }, %struct.anon.108 { i32 128000, i32 256000, i16 2, i32 4 }, %struct.anon.108 { i32 256000, i32 1000000, i16 1, i32 2 }, %struct.anon.108 { i32 1000000, i32 13500000, i16 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@fll_factors._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.216, ptr @.str.4, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_FRATIO for Fref=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.224 = internal global ptr @fll_factors._entry.222, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.216, ptr @.str.4, ptr @.str.225, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Nmod=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@fll_factors.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.216, ptr @.str.4, ptr @.str.226, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.226 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8993_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.4, i32 1586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to restart FLL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm8993_resume\00", [18 x i8] zeroinitializer }, align 32
@wm8993_resume._entry_ptr = internal global ptr @wm8993_resume._entry, section ".printk_index", align 4
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8993-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8993_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8993_set_sysclk, ptr @wm8993_set_fll, ptr null, ptr null, ptr @wm8993_set_dai_fmt, ptr null, ptr @wm8993_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8993_mute, ptr null, ptr null, ptr @wm8993_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.231, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8993_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Configuring for %d %d bit TDM slots\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.232, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Target BCLK is %dHz\0A\00", [43 x i8] zeroinitializer }, align 32
@clk_sys_rates = internal constant { [10 x %struct.anon.109], [48 x i8] } { [10 x %struct.anon.109] [%struct.anon.109 { i32 64, i32 0 }, %struct.anon.109 { i32 128, i32 1 }, %struct.anon.109 { i32 192, i32 2 }, %struct.anon.109 { i32 256, i32 3 }, %struct.anon.109 { i32 384, i32 4 }, %struct.anon.109 { i32 512, i32 5 }, %struct.anon.109 { i32 768, i32 6 }, %struct.anon.109 { i32 1024, i32 7 }, %struct.anon.109 { i32 1408, i32 8 }, %struct.anon.109 { i32 1536, i32 9 }], [48 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.233, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected CLK_SYS_RATIO of %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sample_rates = internal constant { [9 x %struct.anon.110], [56 x i8] } { [9 x %struct.anon.110] [%struct.anon.110 { i32 8000, i32 0 }, %struct.anon.110 { i32 11025, i32 1 }, %struct.anon.110 { i32 12000, i32 1 }, %struct.anon.110 { i32 16000, i32 2 }, %struct.anon.110 { i32 22050, i32 3 }, %struct.anon.110 { i32 24000, i32 3 }, %struct.anon.110 { i32 32000, i32 4 }, %struct.anon.110 { i32 44100, i32 5 }, %struct.anon.110 { i32 48000, i32 5 }], [56 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.234, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.234 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected SAMPLE_RATE of %dHz\0A\00", [34 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [16 x %struct.anon.111], [32 x i8] } { [16 x %struct.anon.111] [%struct.anon.111 { i32 10, i32 0 }, %struct.anon.111 { i32 15, i32 1 }, %struct.anon.111 { i32 20, i32 2 }, %struct.anon.111 { i32 30, i32 3 }, %struct.anon.111 { i32 40, i32 4 }, %struct.anon.111 { i32 55, i32 5 }, %struct.anon.111 { i32 60, i32 6 }, %struct.anon.111 { i32 80, i32 7 }, %struct.anon.111 { i32 110, i32 8 }, %struct.anon.111 { i32 120, i32 9 }, %struct.anon.111 { i32 160, i32 10 }, %struct.anon.111 { i32 220, i32 11 }, %struct.anon.111 { i32 240, i32 12 }, %struct.anon.111 { i32 320, i32 13 }, %struct.anon.111 { i32 440, i32 14 }, %struct.anon.111 { i32 480, i32 15 }], [32 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.235, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.235 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Selected BCLK_DIV of %d for %dHz BCLK\0A\00", [57 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.236, i8 1, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.236 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LRCLK_RATE is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wm8993_hw_params.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.230, ptr @.str.4, ptr @.str.237, i8 1, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ReTune Mobile %s tuned for %dHz\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [112 x i64] [i64 110, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 81, i64 84, i64 85, i64 87, i64 88, i64 89, i64 90, i64 96, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126]
@__sancov_gen_cov_switch_values.238 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 18, i64 84, i64 88, i64 89, i64 90]
@__sancov_gen_cov_switch_values.239 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.241 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.243 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.244 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.246 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 12]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 12]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"wm8993_i2c_driver\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1744, i32 26 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1746, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant [14 x i8] c"wm8993_i2c_id\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1738, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [14 x i8] c"wm8993_regmap\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1603, i32 35 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1642, i32 19 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1645, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1657, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1664, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1670, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1675, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"wm8993_regmap_patch\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1597, i32 34 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1687, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8993\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1616, i32 46 }
@___asan_gen_.325 = private unnamed_addr constant [11 x i8] c"wm8993_dai\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1460, i32 34 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1713, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 87, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"wm8993_reg_defaults\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 41, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 33, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 34, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 35, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 36, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 37, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 38, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1411, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1418, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1429, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1432, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1438, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c"wm8993_snd_controls\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 748, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1520, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1522, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [19 x i8] c"wm8993_eq_controls\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 798, i32 38 }
@___asan_gen_.412 = private unnamed_addr constant [7 x i8] c"routes\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 918, i32 40 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 749, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant [13 x i8] c"sidetone_tlv\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 624, i32 14 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 752, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 753, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant [9 x i8] c"drc_path\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 663, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 754, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"drc_comp_threash\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 625, i32 14 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 756, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant [13 x i8] c"drc_comp_amp\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 626, i32 14 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 758, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant [7 x i8] c"drc_r0\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 675, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 759, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant [7 x i8] c"drc_r1\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 686, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 760, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant [12 x i8] c"drc_min_tlv\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 627, i32 14 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 762, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant [12 x i8] c"drc_max_tlv\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 628, i32 14 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 764, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant [11 x i8] c"drc_attack\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 704, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 765, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant [10 x i8] c"drc_decay\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 719, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 766, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant [7 x i8] c"drc_ff\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 727, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 767, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 768, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 769, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant [11 x i8] c"drc_qr_tlv\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 632, i32 14 }
@___asan_gen_.504 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 771, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant [12 x i8] c"drc_qr_rate\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 736, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 772, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 773, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 774, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant [11 x i8] c"drc_smooth\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 745, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 775, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant [16 x i8] c"drc_startup_tlv\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 633, i32 14 }
@___asan_gen_.531 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 778, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 780, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 635, i32 14 }
@___asan_gen_.542 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 782, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 783, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant [8 x i8] c"adc_hpf\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 655, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 785, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 787, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant [14 x i8] c"dac_boost_tlv\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 636, i32 14 }
@___asan_gen_.563 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 789, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant [11 x i8] c"dac_deemph\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 645, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 791, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 794, i32 1 }
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [14 x i8] c"drc_path_text\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 658, i32 20 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 659, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 660, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [12 x i8] c"drc_r0_text\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 666, i32 20 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 667, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 668, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 669, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 670, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 671, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 672, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [12 x i8] c"drc_r1_text\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 678, i32 20 }
@___asan_gen_.611 = private unnamed_addr constant [16 x i8] c"drc_attack_text\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 689, i32 20 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 690, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 691, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 692, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 693, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 694, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 695, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 696, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 697, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 698, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 699, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 700, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 701, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [15 x i8] c"drc_decay_text\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 707, i32 20 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 708, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 709, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 710, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 711, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 712, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 713, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 714, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 715, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 716, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [12 x i8] c"drc_ff_text\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 722, i32 20 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 723, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 724, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant [17 x i8] c"drc_qr_rate_text\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 730, i32 20 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 731, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [16 x i8] c"drc_smooth_text\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 739, i32 20 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 740, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 741, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 742, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [13 x i8] c"adc_hpf_text\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 648, i32 20 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 649, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 650, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 651, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 652, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [16 x i8] c"dac_deemph_text\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 638, i32 20 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 639, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 640, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 641, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 642, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 799, i32 1 }
@___asan_gen_.740 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 634, i32 14 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 800, i32 1 }
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 801, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 802, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 803, i32 1 }
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 881, i32 1 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 883, i32 1 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 884, i32 1 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 885, i32 1 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 887, i32 1 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 888, i32 1 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 890, i32 1 }
@___asan_gen_.781 = private unnamed_addr constant [12 x i8] c"aifoutl_mux\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 843, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 891, i32 1 }
@___asan_gen_.787 = private unnamed_addr constant [12 x i8] c"aifoutr_mux\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 849, i32 38 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 893, i32 1 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 894, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 896, i32 1 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 897, i32 1 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 899, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant [11 x i8] c"aifinl_mux\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 855, i32 38 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 900, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant [11 x i8] c"aifinr_mux\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 861, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 902, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant [14 x i8] c"sidetonel_mux\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 871, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 903, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant [14 x i8] c"sidetoner_mux\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 877, i32 38 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 905, i32 1 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 906, i32 1 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 908, i32 1 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 909, i32 1 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 911, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant [19 x i8] c"left_speaker_mixer\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 822, i32 38 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 913, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant [20 x i8] c"right_speaker_mixer\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 829, i32 38 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 915, i32 1 }
@___asan_gen_.859 = private unnamed_addr constant [20 x i8] c"wm8993_dapm_widgets\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 880, i32 41 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 584, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 599, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 615, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 619, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [13 x i8] c"aifoutl_enum\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 840, i32 8 }
@___asan_gen_.883 = private unnamed_addr constant [9 x i8] c"aif_text\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 836, i32 20 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 837, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 837, i32 10 }
@___asan_gen_.892 = private unnamed_addr constant [13 x i8] c"aifoutr_enum\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 846, i32 8 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 856, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant [12 x i8] c"aifinl_enum\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 852, i32 8 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 862, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant [12 x i8] c"aifinr_enum\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 858, i32 8 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 872, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant [15 x i8] c"sidetonel_enum\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 868, i32 8 }
@___asan_gen_.913 = private unnamed_addr constant [14 x i8] c"sidetone_text\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 864, i32 20 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 878, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [15 x i8] c"sidetoner_enum\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 874, i32 8 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 823, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 824, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 825, i32 1 }
@___asan_gen_.933 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 826, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.938 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 831, i32 1 }
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.943 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 919, i32 4 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 920, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 954, i32 4 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 956, i32 4 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 958, i32 4 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 960, i32 4 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1556, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 482, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 513, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 559, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 561, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 398, i32 4 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 404, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 416, i32 4 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 423, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant [12 x i8] c"fll_fratios\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 374, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 434, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 443, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 458, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1586, i32 4 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1461, i32 10 }
@___asan_gen_.1041 = private unnamed_addr constant [11 x i8] c"wm8993_ops\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1443, i32 37 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1209, i32 3 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1234, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant [14 x i8] c"clk_sys_rates\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 153, i32 3 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1252, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant [13 x i8] c"sample_rates\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 169, i32 3 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1268, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 184, i32 3 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1287, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1292, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1075 = private constant [29 x i8] c"../sound/soc/codecs/wm8993.c\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1075, i32 1318, i32 3 }
@llvm.compiler.used = appending global [323 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_wm8993_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8993__315_1753_wm8993_i2c_driver_init6, ptr @_wm8993_set_fll._entry, ptr @_wm8993_set_fll._entry.211, ptr @_wm8993_set_fll._entry_ptr, ptr @_wm8993_set_fll._entry_ptr.213, ptr @configure_clock._entry, ptr @configure_clock._entry_ptr, ptr @fll_factors._entry, ptr @fll_factors._entry.218, ptr @fll_factors._entry.222, ptr @fll_factors._entry_ptr, ptr @fll_factors._entry_ptr.220, ptr @fll_factors._entry_ptr.224, ptr @wm8993_i2c_driver_exit, ptr @wm8993_i2c_probe._entry, ptr @wm8993_i2c_probe._entry.10, ptr @wm8993_i2c_probe._entry.13, ptr @wm8993_i2c_probe._entry.16, ptr @wm8993_i2c_probe._entry.19, ptr @wm8993_i2c_probe._entry.23, ptr @wm8993_i2c_probe._entry.7, ptr @wm8993_i2c_probe._entry_ptr, ptr @wm8993_i2c_probe._entry_ptr.12, ptr @wm8993_i2c_probe._entry_ptr.15, ptr @wm8993_i2c_probe._entry_ptr.18, ptr @wm8993_i2c_probe._entry_ptr.22, ptr @wm8993_i2c_probe._entry_ptr.25, ptr @wm8993_i2c_probe._entry_ptr.9, ptr @wm8993_irq._entry, ptr @wm8993_irq._entry.35, ptr @wm8993_irq._entry.38, ptr @wm8993_irq._entry.44, ptr @wm8993_irq._entry_ptr, ptr @wm8993_irq._entry_ptr.37, ptr @wm8993_irq._entry_ptr.41, ptr @wm8993_irq._entry_ptr.46, ptr @wm8993_resume._entry, ptr @wm8993_resume._entry_ptr, ptr @wm8993_suspend._entry, ptr @wm8993_suspend._entry_ptr, ptr @wm8993_i2c_driver, ptr @.str, ptr @wm8993_i2c_id, ptr @wm8993_i2c_probe._key, ptr @wm8993_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @wm8993_regmap_patch, ptr @.str.20, ptr @.str.21, ptr @soc_component_dev_wm8993, ptr @wm8993_dai, ptr @.str.24, ptr @init_completion.__key, ptr @.str.26, ptr @wm8993_reg_defaults, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @wm8993_snd_controls, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @wm8993_eq_controls, ptr @routes, ptr @.str.50, ptr @sidetone_tlv, ptr @.compoundliteral, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @drc_path, ptr @.str.54, ptr @drc_comp_threash, ptr @.compoundliteral.55, ptr @.str.56, ptr @drc_comp_amp, ptr @.compoundliteral.57, ptr @.str.58, ptr @drc_r0, ptr @.str.59, ptr @drc_r1, ptr @.str.60, ptr @drc_min_tlv, ptr @.compoundliteral.61, ptr @.str.62, ptr @drc_max_tlv, ptr @.compoundliteral.63, ptr @.str.64, ptr @drc_attack, ptr @.str.65, ptr @drc_decay, ptr @.str.66, ptr @drc_ff, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @drc_qr_tlv, ptr @.compoundliteral.72, ptr @.str.73, ptr @drc_qr_rate, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @drc_smooth, ptr @.str.79, ptr @drc_startup_tlv, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @digital_tlv, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @adc_hpf, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @dac_boost_tlv, ptr @.compoundliteral.91, ptr @.str.92, ptr @dac_deemph, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @drc_path_text, ptr @.str.97, ptr @.str.98, ptr @drc_r0_text, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @drc_r1_text, ptr @drc_attack_text, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @drc_decay_text, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @drc_ff_text, ptr @.str.126, ptr @.str.127, ptr @drc_qr_rate_text, ptr @.str.128, ptr @drc_smooth_text, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @adc_hpf_text, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @dac_deemph_text, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @eq_tlv, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @aifoutl_mux, ptr @.str.157, ptr @aifoutr_mux, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @aifinl_mux, ptr @.str.165, ptr @aifinr_mux, ptr @.str.166, ptr @sidetonel_mux, ptr @.str.167, ptr @sidetoner_mux, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @left_speaker_mixer, ptr @.str.173, ptr @right_speaker_mixer, ptr @.str.174, ptr @wm8993_dapm_widgets, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @aifoutl_enum, ptr @aif_text, ptr @.str.181, ptr @.str.182, ptr @aifoutr_enum, ptr @.str.183, ptr @aifinl_enum, ptr @.str.184, ptr @aifinr_enum, ptr @.str.185, ptr @sidetonel_enum, ptr @sidetone_text, ptr @.str.186, ptr @sidetoner_enum, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.compoundliteral.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @.str.221, ptr @fll_fratios, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @wm8993_ops, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @clk_sys_rates, ptr @.str.233, ptr @sample_rates, ptr @.str.234, ptr @bclk_divs, ptr @.str.235, ptr @.str.236, ptr @.str.237], section "llvm.metadata"
@0 = internal global [297 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_regmap_patch to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8993 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_reg_defaults to i32), i32 848, i32 1056, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_irq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_snd_controls to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_eq_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routes to i32), i32 1976, i32 2464, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_path to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_comp_threash to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_comp_amp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_r0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_r1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_min_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_max_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_attack to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_decay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_ff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_smooth to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_startup_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_hpf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_deemph to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_path_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_r0_text to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_r1_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_attack_text to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_decay_text to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_ff_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_rate_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_smooth_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_hpf_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_deemph_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetonel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetoner_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_speaker_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_speaker_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_dapm_widgets to i32), i32 4140, i32 5184, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetonel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetoner_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_wm8993_set_fll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_wm8993_set_fll._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_fratios to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8993_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sys_rates to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_rates to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8993_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8993_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8993_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !551
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.wm8993_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 4
  %fll_lock = getelementptr inbounds %struct.wm8993_priv, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %fll_lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fll_lock, align 4
  %wait.i = getelementptr inbounds %struct.wm8993_priv, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #8
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8993_regmap, ptr noundef nonnull @wm8993_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.wm8993_priv, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx12 = getelementptr %struct.wm8993_priv, ptr %call.i, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.27, ptr %arrayidx12, align 4
  %arrayidx12.1 = getelementptr %struct.wm8993_priv, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.28, ptr %arrayidx12.1, align 4
  %arrayidx12.2 = getelementptr %struct.wm8993_priv, ptr %call.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.29, ptr %arrayidx12.2, align 4
  %arrayidx12.3 = getelementptr %struct.wm8993_priv, ptr %call.i, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.30, ptr %arrayidx12.3, align 4
  %arrayidx12.4 = getelementptr %struct.wm8993_priv, ptr %call.i, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.31, ptr %arrayidx12.4, align 4
  %arrayidx12.5 = getelementptr %struct.wm8993_priv, ptr %call.i, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.32, ptr %arrayidx12.5, align 4
  %call15 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 6, ptr noundef %arrayidx12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call15) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %call25 = tail call i32 @regulator_bulk_enable(i32 noundef 6, ptr noundef %arrayidx12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call25) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call34 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call34) #11
  br label %err_enable

if.end41:                                         ; preds = %if.end32
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35219, i32 %15)
  %cmp42.not = icmp eq i32 %15, 35219
  br i1 %cmp42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %15) #11
  br label %err_enable

if.end48:                                         ; preds = %if.end41
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call50 = call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef 65535) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.end53, label %if.end48.err_enable_crit_edge

if.end48.err_enable_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable

if.end53:                                         ; preds = %if.end48
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call55 = call i32 @regmap_register_patch(ptr noundef %19, ptr noundef nonnull @wm8993_regmap_patch, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 0
  br i1 %cmp56.not, label %if.end53.if.end62_crit_edge, label %do.end60

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.20, i32 noundef %call55) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %if.end53.if.end62_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.end62.if.end74_crit_edge, label %if.then63

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then63:                                        ; preds = %if.end62
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i155 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 19, i32 noundef 31, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp66.not = icmp eq i32 %call.i155, 0
  br i1 %cmp66.not, label %if.end68, label %if.then63.err_enable_crit_edge

if.then63.err_enable_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable

if.end68:                                         ; preds = %if.then63
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call70 = call i32 @request_threaded_irq(i32 noundef %27, ptr noundef null, ptr noundef nonnull @wm8993_irq, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.end68.if.end74_crit_edge, label %if.end68.err_enable_crit_edge

if.end68.err_enable_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end74:                                         ; preds = %if.end68.if.end74_crit_edge, %if.end62.if.end74_crit_edge
  %call77 = call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %arrayidx12) #8
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %29, i1 noundef zeroext true) #8
  %call80 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8993, ptr noundef nonnull @wm8993_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.end74.cleanup_crit_edge, label %do.end85

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end85:                                         ; preds = %if.end74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call80) #11
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool89.not = icmp eq i32 %31, 0
  br i1 %tobool89.not, label %do.end85.err_enable_crit_edge, label %if.then90

do.end85.err_enable_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable

if.then90:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %call92 = call ptr @free_irq(i32 noundef %31, ptr noundef nonnull %call.i) #8
  br label %err_enable

err_enable:                                       ; preds = %if.then90, %do.end85.err_enable_crit_edge, %if.end68.err_enable_crit_edge, %if.then63.err_enable_crit_edge, %if.end48.err_enable_crit_edge, %do.end46, %do.end39
  %ret.0 = phi i32 [ %call34, %do.end39 ], [ -22, %do.end46 ], [ %call50, %if.end48.err_enable_crit_edge ], [ %call.i155, %if.then63.err_enable_crit_edge ], [ %call70, %if.end68.err_enable_crit_edge ], [ %call80, %if.then90 ], [ %call80, %do.end85.err_enable_crit_edge ]
  %call96 = call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %arrayidx12) #8
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end74.cleanup_crit_edge, %do.end30, %do.end20, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %call15, %do.end20 ], [ %call25, %do.end30 ], [ %ret.0, %err_enable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_i2c_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.wm8993_priv, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %supplies) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !551
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !551
  %regmap = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 18, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 22, ptr noundef nonnull %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef %call2) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %12 = and i32 %11, -4097
  %neg = xor i32 %12, -4097
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %neg, %14
  store i32 %and, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %and12 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %do.end17

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %16, ptr noundef nonnull @.str.39) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end11.if.end19_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and20 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end33_crit_edge, label %do.body23

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.body23:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_irq.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_irq, %if.then28)) #8
          to label %do.end32 [label %if.then28], !srcloc !552

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_irq.__UNIQUE_ID_ddebug312, ptr noundef %20, ptr noundef nonnull @.str.43) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body23
  %fll_lock = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 5
  call void @complete(ptr noundef %fll_lock) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end19.if.end33_crit_edge
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %call35 = call i32 @regmap_write(ptr noundef %22, i32 noundef 18, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end33.cleanup_crit_edge, label %do.end40

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.wm8993_priv, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev41, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.45, i32 noundef %call35) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end33.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end7 ], [ 0, %if.end9.cleanup_crit_edge ], [ 1, %do.end40 ], [ 1, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8993_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
    i32 12, label %entry.return_crit_edge12
    i32 13, label %entry.return_crit_edge13
    i32 14, label %entry.return_crit_edge14
    i32 15, label %entry.return_crit_edge15
    i32 16, label %entry.return_crit_edge16
    i32 18, label %entry.return_crit_edge17
    i32 19, label %entry.return_crit_edge18
    i32 20, label %entry.return_crit_edge19
    i32 22, label %entry.return_crit_edge20
    i32 23, label %entry.return_crit_edge21
    i32 24, label %entry.return_crit_edge22
    i32 25, label %entry.return_crit_edge23
    i32 26, label %entry.return_crit_edge24
    i32 27, label %entry.return_crit_edge25
    i32 28, label %entry.return_crit_edge26
    i32 29, label %entry.return_crit_edge27
    i32 30, label %entry.return_crit_edge28
    i32 31, label %entry.return_crit_edge29
    i32 32, label %entry.return_crit_edge30
    i32 33, label %entry.return_crit_edge31
    i32 34, label %entry.return_crit_edge32
    i32 35, label %entry.return_crit_edge33
    i32 36, label %entry.return_crit_edge34
    i32 37, label %entry.return_crit_edge35
    i32 38, label %entry.return_crit_edge36
    i32 39, label %entry.return_crit_edge37
    i32 40, label %entry.return_crit_edge38
    i32 41, label %entry.return_crit_edge39
    i32 42, label %entry.return_crit_edge40
    i32 43, label %entry.return_crit_edge41
    i32 44, label %entry.return_crit_edge42
    i32 45, label %entry.return_crit_edge43
    i32 46, label %entry.return_crit_edge44
    i32 47, label %entry.return_crit_edge45
    i32 48, label %entry.return_crit_edge46
    i32 49, label %entry.return_crit_edge47
    i32 50, label %entry.return_crit_edge48
    i32 51, label %entry.return_crit_edge49
    i32 52, label %entry.return_crit_edge50
    i32 53, label %entry.return_crit_edge51
    i32 54, label %entry.return_crit_edge52
    i32 55, label %entry.return_crit_edge53
    i32 56, label %entry.return_crit_edge54
    i32 57, label %entry.return_crit_edge55
    i32 58, label %entry.return_crit_edge56
    i32 60, label %entry.return_crit_edge57
    i32 61, label %entry.return_crit_edge58
    i32 62, label %entry.return_crit_edge59
    i32 63, label %entry.return_crit_edge60
    i32 64, label %entry.return_crit_edge61
    i32 65, label %entry.return_crit_edge62
    i32 66, label %entry.return_crit_edge63
    i32 67, label %entry.return_crit_edge64
    i32 69, label %entry.return_crit_edge65
    i32 70, label %entry.return_crit_edge66
    i32 71, label %entry.return_crit_edge67
    i32 72, label %entry.return_crit_edge68
    i32 73, label %entry.return_crit_edge69
    i32 74, label %entry.return_crit_edge70
    i32 75, label %entry.return_crit_edge71
    i32 76, label %entry.return_crit_edge72
    i32 81, label %entry.return_crit_edge73
    i32 84, label %entry.return_crit_edge74
    i32 85, label %entry.return_crit_edge75
    i32 87, label %entry.return_crit_edge76
    i32 88, label %entry.return_crit_edge77
    i32 89, label %entry.return_crit_edge78
    i32 90, label %entry.return_crit_edge79
    i32 96, label %entry.return_crit_edge80
    i32 98, label %entry.return_crit_edge81
    i32 99, label %entry.return_crit_edge82
    i32 100, label %entry.return_crit_edge83
    i32 101, label %entry.return_crit_edge84
    i32 102, label %entry.return_crit_edge85
    i32 103, label %entry.return_crit_edge86
    i32 104, label %entry.return_crit_edge87
    i32 105, label %entry.return_crit_edge88
    i32 106, label %entry.return_crit_edge89
    i32 107, label %entry.return_crit_edge90
    i32 108, label %entry.return_crit_edge91
    i32 109, label %entry.return_crit_edge92
    i32 110, label %entry.return_crit_edge93
    i32 111, label %entry.return_crit_edge94
    i32 112, label %entry.return_crit_edge95
    i32 113, label %entry.return_crit_edge96
    i32 114, label %entry.return_crit_edge97
    i32 115, label %entry.return_crit_edge98
    i32 116, label %entry.return_crit_edge99
    i32 117, label %entry.return_crit_edge100
    i32 118, label %entry.return_crit_edge101
    i32 119, label %entry.return_crit_edge102
    i32 120, label %entry.return_crit_edge103
    i32 121, label %entry.return_crit_edge104
    i32 122, label %entry.return_crit_edge105
    i32 123, label %entry.return_crit_edge106
    i32 124, label %entry.return_crit_edge107
    i32 125, label %entry.return_crit_edge108
    i32 126, label %entry.return_crit_edge109
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8993_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 18, label %entry.return_crit_edge1
    i32 84, label %entry.return_crit_edge2
    i32 88, label %entry.return_crit_edge3
    i32 89, label %entry.return_crit_edge4
    i32 90, label %entry.return_crit_edge5
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_probe(ptr noundef %component) #2 align 64 {
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
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %hp_startup_mode = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hp_startup_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %hp_startup_mode, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2, ptr %3, align 4
  %dcs_codes_r = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dcs_codes_r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %dcs_codes_r, align 4
  %series_startup = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %series_startup to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %series_startup, align 4
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12, i32 noundef 256, i32 noundef 256) #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 256, i32 noundef 256) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef 256, i32 noundef 0) #8
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 66, i32 noundef 1, i32 noundef 0) #8
  %lineout1_diff = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %lineout1_diff to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %lineout1_diff, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr11 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr11, 1
  %bf.cast12 = zext i8 %bf.clear to i32
  %bf.lshr15 = lshr i8 %bf.load, 5
  %bf.clear16 = and i8 %bf.lshr15, 1
  %bf.cast17 = zext i8 %bf.clear16 to i32
  %bf.lshr20 = lshr i8 %bf.load, 4
  %bf.clear21 = and i8 %bf.lshr20, 1
  %bf.cast22 = zext i8 %bf.clear21 to i32
  %jd_scthr = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 4, i32 5
  %9 = ptrtoint ptr %jd_scthr to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load24 = load i8, ptr %jd_scthr, align 4
  %bf.lshr25 = lshr i8 %bf.load24, 4
  %bf.clear26 = and i8 %bf.lshr25, 3
  %bf.cast27 = zext i8 %bf.clear26 to i32
  %bf.lshr30 = lshr i8 %bf.load24, 2
  %bf.clear31 = and i8 %bf.lshr30, 3
  %bf.cast32 = zext i8 %bf.clear31 to i32
  %micbias1_delay = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %micbias1_delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %micbias1_delay, align 4
  %micbias2_delay = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %micbias2_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %micbias2_delay, align 4
  %bf.lshr37 = lshr i8 %bf.load24, 7
  %bf.cast38 = zext i8 %bf.lshr37 to i32
  %bf.lshr41 = lshr i8 %bf.load24, 6
  %bf.clear42 = and i8 %bf.lshr41, 1
  %bf.cast43 = zext i8 %bf.clear42 to i32
  %call44 = tail call i32 @wm_hubs_handle_analogue_pdata(ptr noundef %component, i32 noundef %bf.cast, i32 noundef %bf.cast12, i32 noundef %bf.cast17, i32 noundef %bf.cast22, i32 noundef %bf.cast27, i32 noundef %bf.cast32, i32 noundef %11, i32 noundef %13, i32 noundef %bf.cast38, i32 noundef %bf.cast43) #8
  %call45 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8993_snd_controls, i32 noundef 29) #8
  %num_retune_configs = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %num_retune_configs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_retune_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %do.body51, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_probe, %if.then50)) #8
          to label %if.end69 [label %if.then50], !srcloc !552

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_probe.__UNIQUE_ID_ddebug313, ptr noundef %17, ptr noundef nonnull @.str.48) #8
  br label %if.end69

do.body51:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_probe, %if.then63)) #8
          to label %do.end67 [label %if.then63], !srcloc !552

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_probe.__UNIQUE_ID_ddebug314, ptr noundef %19, ptr noundef nonnull @.str.49) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %call68 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8993_eq_controls, i32 noundef 5) #8
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %if.then50, %do.body
  %call70 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @wm8993_dapm_widgets, i32 noundef 23) #8
  %call71 = tail call i32 @wm_hubs_add_analogue_controls(ptr noundef %component) #8
  %call72 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @routes, i32 noundef 38) #8
  %20 = ptrtoint ptr %lineout1_diff to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load75 = load i8, ptr %lineout1_diff, align 4
  %bf.lshr76 = lshr i8 %bf.load75, 7
  %bf.cast77 = zext i8 %bf.lshr76 to i32
  %bf.lshr81 = lshr i8 %bf.load75, 6
  %bf.clear82 = and i8 %bf.lshr81, 1
  %bf.cast83 = zext i8 %bf.clear82 to i32
  %call84 = tail call i32 @wm_hubs_add_analogue_routes(ptr noundef %component, i32 noundef %bf.cast77, i32 noundef %bf.cast83) #8
  %21 = ptrtoint ptr %lineout1_diff to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load87 = load i8, ptr %lineout1_diff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load87)
  %.not = icmp ugt i8 %bf.load87, -65
  br i1 %.not, label %if.then98, label %if.end69.if.end101_crit_edge

if.end69.if.end101_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then98:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %idle_bias_off = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %idle_bias_off to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load99 = load i8, ptr %idle_bias_off, align 4
  %bf.set = or i8 %bf.load99, -128
  store i8 %bf.set, ptr %idle_bias_off, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end69.if.end101_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_suspend(ptr noundef %component) #2 align 64 {
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
  %fll_fout1 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %fll_fout1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fll_fout1, align 4
  %fll_fref2 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %fll_fref2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fll_fref2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wm8993_set_fll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_suspend, %if.then8.i)) #8
          to label %do.end.i [label %if.then8.i], !srcloc !552

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_wm8993_set_fll.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.209) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %if.end.i
  %10 = ptrtoint ptr %fll_fref2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fll_fref2, align 4
  %11 = ptrtoint ptr %fll_fout1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fll_fout1, align 4
  %call13.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 60) #8
  %conv15.i = and i32 %call13.i, 65534
  %call17.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 60, i32 noundef %conv15.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %entry.cleanup_crit_edge
  %12 = ptrtoint ptr %fll_fout1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %fll_fout1, align 4
  %13 = ptrtoint ptr %fll_fref2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %fll_fref2, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_resume(ptr noundef %component) #2 align 64 {
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
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #8
  %fll_fout = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fll_fout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %fll_fref4 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %fll_fref4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fll_fref4, align 4
  store i32 0, ptr %fll_fref4, align 4
  %8 = ptrtoint ptr %fll_fout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fll_fout, align 4
  %fll_src = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %fll_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fll_src, align 4
  %call7 = tail call fastcc i32 @_wm8993_set_fll(ptr noundef %component, i32 noundef 0, i32 noundef %10, i32 noundef %7, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.227) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
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
  tail call void @wm_hubs_set_bias_level(ptr noundef %component, i32 noundef %level) #8
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge57
    i32 1, label %sw.bb3
    i32 0, label %sw.bb24
  ]

entry.sw.bb_crit_edge57:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge57
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 6, i32 noundef 2) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 16384, i32 noundef 16384) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb3.if.end21_crit_edge

sw.bb3.if.end21_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %sw.bb3
  %supplies = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 3
  %call5 = tail call i32 @regulator_bulk_enable(i32 noundef 6, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %regmap = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regcache_sync(ptr noundef %10) #8
  tail call void @wm_hubs_vmid_ena(ptr noundef %component) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 57, i32 noundef 110, i32 noundef 110) #8
  %lineout1_diff = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %lineout1_diff to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %lineout1_diff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 128, i32 noundef 128) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 7, i32 noundef 3) #8
  tail call void @msleep(i32 noundef 32) #8
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 57, i32 noundef 6, i32 noundef 0) #8
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %sw.bb3.if.end21_crit_edge
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 6, i32 noundef 4) #8
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 16384, i32 noundef 0) #8
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 128, i32 noundef 0) #8
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 7, i32 noundef 0) #8
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 57, i32 noundef 110, i32 noundef 0) #8
  %regmap28 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap28, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #8
  %14 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap28, align 4
  tail call void @regcache_mark_dirty(ptr noundef %15) #8
  %supplies30 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 3
  %call32 = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %supplies30) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %if.end21, %if.then.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb24 ], [ 0, %if.end21 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_handle_analogue_pdata(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_add_analogue_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_add_analogue_routes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @clk_sys_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call fastcc i32 @configure_clock(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_clock(ptr noundef %component) unnamed_addr #2 align 64 {
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
  %sysclk_source = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sysclk_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_source, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %5, label %do.end48 [
    i32 1, label %do.body
    i32 2, label %do.body14
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_clock.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !552

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %mclk_rate = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_clock.__UNIQUE_ID_ddebug302, ptr noundef %8, ptr noundef nonnull @.str.177, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 7) #8
  %and = and i32 %call4, -20481
  %mclk_rate5 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %mclk_rate5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk_rate5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %12)
  %cmp = icmp ugt i32 %12, 13500000
  %or = or i32 %and, 4096
  %div100 = zext i1 %cmp to i32
  %.sink = lshr i32 %12, %div100
  %reg.0 = select i1 %cmp, i32 %or, i32 %and
  br label %do.body50

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_clock.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then26)) #8
          to label %do.end30 [label %if.then26], !srcloc !552

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %fll_fout = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %15 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fll_fout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_clock.__UNIQUE_ID_ddebug303, ptr noundef %14, ptr noundef nonnull @.str.178, i32 noundef %16) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %call31 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 7) #8
  %fll_fout33 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %fll_fout33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fll_fout33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %18)
  %cmp34 = icmp ugt i32 %18, 13500000
  %or36 = or i32 %call31, 20480
  %or32 = and i32 %call31, -20481
  %and41 = or i32 %or32, 16384
  %div3899 = zext i1 %cmp34 to i32
  %.sink110 = lshr i32 %18, %div3899
  %reg.1 = select i1 %cmp34, i32 %or36, i32 %and41
  br label %do.body50

do.end48:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.179) #11
  br label %cleanup

do.body50:                                        ; preds = %do.end30, %do.end
  %.sink.sink = phi i32 [ %.sink, %do.end ], [ %.sink110, %do.end30 ]
  %reg.0.sink = phi i32 [ %reg.0, %do.end ], [ %reg.1, %do.end30 ]
  %19 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.sink, ptr %19, align 4
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 7, i32 noundef %reg.0.sink) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_clock.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then62)) #8
          to label %cleanup [label %if.then62], !srcloc !552

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %sysclk_rate64 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %sysclk_rate64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sysclk_rate64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_clock.__UNIQUE_ID_ddebug304, ptr noundef %22, ptr noundef nonnull @.str.180, i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body50, %do.end48
  %retval.0 = phi i32 [ -22, %do.end48 ], [ 0, %if.then62 ], [ 0, %do.body50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_wm8993_set_fll(ptr noundef %component, i32 noundef %fll_id, i32 noundef %source, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #2 align 64 {
entry:
  %fll_div = alloca %struct._fll_div, align 2
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
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fll_div) #8
  %4 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %5 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %6 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %7 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %fll_fref = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 14
  %8 = call ptr @memset(ptr %fll_div, i32 255, i32 10)
  %9 = ptrtoint ptr %fll_fref to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fll_fref, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %Fref)
  %cmp = icmp eq i32 %10, %Fref
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_fout = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fll_fout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %Fout)
  %cmp1 = icmp eq i32 %12, %Fout
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Fout)
  %cmp2 = icmp eq i32 %Fout, 0
  br i1 %cmp2, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wm8993_set_fll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wm8993_set_fll, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !552

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_wm8993_set_fll.__UNIQUE_ID_ddebug300, ptr noundef %14, ptr noundef nonnull @.str.209) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %15 = ptrtoint ptr %fll_fref to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fll_fref, align 4
  %fll_fout12 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %fll_fout12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fll_fout12, align 4
  %call13 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 60) #8
  %conv15 = and i32 %call13, 65534
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 60, i32 noundef %conv15) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = call fastcc i32 @fll_factors(ptr noundef nonnull %fll_div, i32 noundef %Fref, i32 noundef %Fout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 64) #8
  %17 = trunc i32 %call24 to i16
  %conv28 = and i16 %17, -4
  %18 = zext i32 %fll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %fll_id, label %do.end37 [
    i32 1, label %if.end23.sw.epilog_crit_edge
    i32 3, label %sw.bb
    i32 2, label %sw.bb31
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i16 %conv28, 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %20 = or i16 %conv28, 2
  br label %sw.epilog

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.210, i32 noundef %fll_id) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb, %if.end23.sw.epilog_crit_edge
  %reg5.0 = phi i16 [ %20, %sw.bb31 ], [ %19, %sw.bb ], [ %conv28, %if.end23.sw.epilog_crit_edge ]
  %call39 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 60) #8
  %conv43 = and i32 %call39, 65534
  %call45 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 60, i32 noundef %conv43) #8
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool46.not = icmp eq i16 %24, 0
  %or49 = or i32 %conv43, 4
  %conv53 = and i32 %call39, 65530
  %reg1.0 = select i1 %tobool46.not, i32 %conv53, i32 %or49
  %call56 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 60, i32 noundef %reg1.0) #8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 2
  %conv57 = zext i16 %26 to i32
  %shl = shl nuw nsw i32 %conv57, 8
  %27 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fll_div, align 2
  %conv58 = zext i16 %28 to i32
  %or60 = or i32 %shl, %conv58
  %call61 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 61, i32 noundef %or60) #8
  %conv63 = zext i16 %24 to i32
  %call64 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 62, i32 noundef %conv63) #8
  %call65 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 63) #8
  %conv69 = and i32 %call65, 32799
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %6, align 2
  %conv70 = zext i16 %30 to i32
  %shl71 = shl nuw nsw i32 %conv70, 5
  %shl71.masked = and i32 %shl71, 65504
  %conv75 = or i32 %shl71.masked, %conv69
  %call76 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 63, i32 noundef %conv75) #8
  %31 = and i16 %reg5.0, -25
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %5, align 2
  %shl81 = shl i16 %33, 3
  %or83 = or i16 %shl81, %31
  %conv85 = zext i16 %or83 to i32
  %call86 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 64, i32 noundef %conv85) #8
  %irq = getelementptr i8, ptr %1, i32 932
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool87.not = icmp eq i32 %35, 0
  %spec.select = select i1 %tobool87.not, i32 1, i32 2
  %fll_lock = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 5
  %call99 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %fll_lock) #8
  %or101 = or i32 %reg1.0, 1
  %call102 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 60, i32 noundef %or101) #8
  %call104 = tail call i32 @wait_for_completion_timeout(ptr noundef %fll_lock, i32 noundef %spec.select) #8
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool106.not = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool108.not = icmp eq i32 %call104, 0
  %or.cond = select i1 %tobool106.not, i1 %tobool108.not, i1 false
  br i1 %or.cond, label %do.end112, label %sw.epilog.do.body115_crit_edge

sw.epilog.do.body115_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body115

do.end112:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.212) #11
  br label %do.body115

do.body115:                                       ; preds = %do.end112, %sw.epilog.do.body115_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wm8993_set_fll.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wm8993_set_fll, %if.then127)) #8
          to label %do.end131 [label %if.then127], !srcloc !552

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_wm8993_set_fll.__UNIQUE_ID_ddebug301, ptr noundef %41, ptr noundef nonnull @.str.214, i32 noundef %Fref, i32 noundef %Fout) #8
  br label %do.end131

do.end131:                                        ; preds = %if.then127, %do.body115
  %42 = ptrtoint ptr %fll_fref to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %Fref, ptr %fll_fref, align 4
  %fll_fout133 = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 15
  %43 = ptrtoint ptr %fll_fout133 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %Fout, ptr %fll_fout133, align 4
  %fll_src = getelementptr inbounds %struct.wm8993_priv, ptr %3, i32 0, i32 16
  %44 = ptrtoint ptr %fll_src to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %source, ptr %fll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end131, %do.end37, %if.end18.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end37 ], [ 0, %do.end131 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fll_div) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fll_factors(ptr nocapture noundef %fll_div, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fll_clk_ref_div = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %0 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %fll_clk_ref_div, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %Fref)
  %cmp = icmp ugt i32 %Fref, 13500000
  br i1 %cmp, label %while.body, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

while.body:                                       ; preds = %entry
  %1 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fll_clk_ref_div, align 2
  %inc = add i16 %2, 1
  store i16 %inc, ptr %fll_clk_ref_div, align 2
  %div1.1501 = lshr i32 %Fref, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %Fref)
  %cmp.1 = icmp ugt i32 %Fref, 27000001
  br i1 %cmp.1, label %while.body.1, label %while.body.do.body4_crit_edge

while.body.do.body4_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

while.body.1:                                     ; preds = %while.body
  %3 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fll_clk_ref_div, align 2
  %inc.1 = add i16 %4, 1
  store i16 %inc.1, ptr %fll_clk_ref_div, align 2
  %div1.2502 = lshr i32 %Fref, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000003, i32 %Fref)
  %cmp.2 = icmp ugt i32 %Fref, 54000003
  br i1 %cmp.2, label %while.body.2, label %while.body.1.do.body4_crit_edge

while.body.1.do.body4_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

while.body.2:                                     ; preds = %while.body.1
  %5 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fll_clk_ref_div, align 2
  %inc.2 = add i16 %6, 1
  store i16 %inc.2, ptr %fll_clk_ref_div, align 2
  %div1.3503 = lshr i32 %Fref, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000007, i32 %Fref)
  %cmp.3 = icmp ugt i32 %Fref, 108000007
  br i1 %cmp.3, label %while.body.3, label %while.body.2.do.body4_crit_edge

while.body.2.do.body4_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fll_clk_ref_div, align 2
  %inc.3 = add i16 %8, 1
  store i16 %inc.3, ptr %fll_clk_ref_div, align 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %Fref) #11
  br label %cleanup

do.body4:                                         ; preds = %while.body.2.do.body4_crit_edge, %while.body.1.do.body4_crit_edge, %while.body.do.body4_crit_edge, %entry.do.body4_crit_edge
  %div1.lcssa = phi i32 [ %Fref, %entry.do.body4_crit_edge ], [ %div1.1501, %while.body.do.body4_crit_edge ], [ %div1.2502, %while.body.1.do.body4_crit_edge ], [ %div1.3503, %while.body.2.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then9)) #8
          to label %do.end12 [label %if.then9], !srcloc !552

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.217, i32 noundef %Fref, i32 noundef %Fout) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4
  %target.0 = shl i32 %Fout, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0)
  %cmp16 = icmp ult i32 %target.0, 90000000
  br i1 %cmp16, label %while.body17, label %do.end12.while.end28_crit_edge

do.end12.while.end28_crit_edge:                   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17:                                     ; preds = %do.end12
  %target.0.1 = shl i32 %Fout, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.1)
  %cmp16.1 = icmp ult i32 %target.0.1, 90000000
  br i1 %cmp16.1, label %while.body17.1, label %while.body17.while.end28_crit_edge

while.body17.while.end28_crit_edge:               ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.1:                                   ; preds = %while.body17
  %target.0.2 = shl i32 %Fout, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.2)
  %cmp16.2 = icmp ult i32 %target.0.2, 90000000
  br i1 %cmp16.2, label %while.body17.2, label %while.body17.1.while.end28_crit_edge

while.body17.1.while.end28_crit_edge:             ; preds = %while.body17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.2:                                   ; preds = %while.body17.1
  %target.0.3 = shl i32 %Fout, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.3)
  %cmp16.3 = icmp ult i32 %target.0.3, 90000000
  br i1 %cmp16.3, label %while.body17.3, label %while.body17.2.while.end28_crit_edge

while.body17.2.while.end28_crit_edge:             ; preds = %while.body17.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.3:                                   ; preds = %while.body17.2
  %target.0.4 = shl i32 %Fout, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.4)
  %cmp16.4 = icmp ult i32 %target.0.4, 90000000
  br i1 %cmp16.4, label %while.body17.4, label %while.body17.3.while.end28_crit_edge

while.body17.3.while.end28_crit_edge:             ; preds = %while.body17.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.4:                                   ; preds = %while.body17.3
  %target.0.5 = shl i32 %Fout, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.5)
  %cmp16.5 = icmp ult i32 %target.0.5, 90000000
  br i1 %cmp16.5, label %while.body17.5, label %while.body17.4.while.end28_crit_edge

while.body17.4.while.end28_crit_edge:             ; preds = %while.body17.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.5:                                   ; preds = %while.body17.4
  %target.0.6 = shl i32 %Fout, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.6)
  %cmp16.6 = icmp ult i32 %target.0.6, 90000000
  br i1 %cmp16.6, label %while.body17.6, label %while.body17.5.while.end28_crit_edge

while.body17.5.while.end28_crit_edge:             ; preds = %while.body17.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.6:                                   ; preds = %while.body17.5
  %target.0.7 = shl i32 %Fout, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.7)
  %cmp16.7 = icmp ult i32 %target.0.7, 90000000
  br i1 %cmp16.7, label %while.body17.7, label %while.body17.6.while.end28_crit_edge

while.body17.6.while.end28_crit_edge:             ; preds = %while.body17.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body17.7:                                   ; preds = %while.body17.6
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %Fout) #11
  br label %cleanup

while.end28:                                      ; preds = %while.body17.6.while.end28_crit_edge, %while.body17.5.while.end28_crit_edge, %while.body17.4.while.end28_crit_edge, %while.body17.3.while.end28_crit_edge, %while.body17.2.while.end28_crit_edge, %while.body17.1.while.end28_crit_edge, %while.body17.while.end28_crit_edge, %do.end12.while.end28_crit_edge
  %div.1.lcssa = phi i16 [ 0, %do.end12.while.end28_crit_edge ], [ 1, %while.body17.while.end28_crit_edge ], [ 2, %while.body17.1.while.end28_crit_edge ], [ 3, %while.body17.2.while.end28_crit_edge ], [ 4, %while.body17.3.while.end28_crit_edge ], [ 5, %while.body17.4.while.end28_crit_edge ], [ 6, %while.body17.5.while.end28_crit_edge ], [ 7, %while.body17.6.while.end28_crit_edge ]
  %target.0.lcssa = phi i32 [ %target.0, %do.end12.while.end28_crit_edge ], [ %target.0.1, %while.body17.while.end28_crit_edge ], [ %target.0.2, %while.body17.1.while.end28_crit_edge ], [ %target.0.3, %while.body17.2.while.end28_crit_edge ], [ %target.0.4, %while.body17.3.while.end28_crit_edge ], [ %target.0.5, %while.body17.4.while.end28_crit_edge ], [ %target.0.6, %while.body17.5.while.end28_crit_edge ], [ %target.0.7, %while.body17.6.while.end28_crit_edge ]
  %fll_outdiv = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %9 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %div.1.lcssa, ptr %fll_outdiv, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then41)) #8
          to label %land.lhs.true [label %if.then41], !srcloc !552

if.then41:                                        ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.221, i32 noundef %target.0.lcssa) #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then41, %while.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %div1.lcssa)
  %cmp50.not = icmp ugt i32 %div1.lcssa, 64000
  br i1 %cmp50.not, label %land.lhs.true.1, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %div1.lcssa)
  %cmp50.not.1 = icmp ugt i32 %div1.lcssa, 128000
  br i1 %cmp50.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.end67_crit_edge

land.lhs.true.1.if.end67_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %div1.lcssa)
  %cmp50.not.2 = icmp ugt i32 %div1.lcssa, 256000
  br i1 %cmp50.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.end67_crit_edge

land.lhs.true.2.if.end67_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div1.lcssa)
  %cmp50.not.3 = icmp ugt i32 %div1.lcssa, 1000000
  br i1 %cmp50.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.end67_crit_edge

land.lhs.true.3.if.end67_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %div1.lcssa)
  %cmp50.not.4 = icmp ugt i32 %div1.lcssa, 13500000
  br i1 %cmp50.not.4, label %do.end64, label %land.lhs.true.4.if.end67_crit_edge

land.lhs.true.4.if.end67_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end64:                                         ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %div1.lcssa) #11
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true.4.if.end67_crit_edge, %land.lhs.true.3.if.end67_crit_edge, %land.lhs.true.2.if.end67_crit_edge, %land.lhs.true.1.if.end67_crit_edge, %land.lhs.true.if.end67_crit_edge
  %i.0494.lcssa = phi i32 [ 0, %land.lhs.true.if.end67_crit_edge ], [ 1, %land.lhs.true.1.if.end67_crit_edge ], [ 2, %land.lhs.true.2.if.end67_crit_edge ], [ 3, %land.lhs.true.3.if.end67_crit_edge ], [ 4, %land.lhs.true.4.if.end67_crit_edge ]
  %fll_fratio = getelementptr [5 x %struct.anon.108], ptr @fll_fratios, i32 0, i32 %i.0494.lcssa, i32 2
  %10 = ptrtoint ptr %fll_fratio to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fll_fratio, align 4
  %12 = ptrtoint ptr %fll_div to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %fll_div, align 2
  %ratio = getelementptr [5 x %struct.anon.108], ptr @fll_fratios, i32 0, i32 %i.0494.lcssa, i32 3
  %13 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ratio, align 4
  %div56 = udiv i32 %target.0.lcssa, %14
  %div56.frozen = freeze i32 %div56
  %div68 = udiv i32 %div56.frozen, %div1.lcssa
  %conv69 = trunc i32 %div68 to i16
  %n = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %15 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv69, ptr %n, align 2
  %16 = mul i32 %div68, %div1.lcssa
  %rem.decomposed = sub i32 %div56.frozen, %16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then82)) #8
          to label %do.end85 [label %if.then82], !srcloc !552

if.then82:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.225, i32 noundef %rem.decomposed) #8
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %if.end67
  %conv86 = zext i32 %rem.decomposed to i64
  %mul87 = mul nuw nsw i64 %conv86, 655360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul87)
  %cmp263 = icmp ult i64 %mul87, 4294967296
  br i1 %cmp263, label %if.then271, label %if.else277, !prof !553

if.then271:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %conv272 = trunc i64 %mul87 to i32
  %div275 = udiv i32 %conv272, %div1.lcssa
  br label %if.end281

if.else277:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.lcssa, i64 %mul87) #12, !srcloc !554
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %extract.t486 = trunc i64 %asmresult1.i to i32
  br label %if.end281

if.end281:                                        ; preds = %if.else277, %if.then271
  %Kpart.0.off0 = phi i32 [ %div275, %if.then271 ], [ %extract.t486, %if.else277 ]
  %rem285 = urem i32 %Kpart.0.off0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem285)
  %cmp286 = icmp ugt i32 %rem285, 4
  %add289 = add i32 %Kpart.0.off0, 5
  %spec.select = select i1 %cmp286, i32 %add289, i32 %Kpart.0.off0
  %div291 = udiv i32 %spec.select, 10
  %conv292 = trunc i32 %div291 to i16
  %k = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %18 = ptrtoint ptr %k to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv292, ptr %k, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then305)) #8
          to label %cleanup [label %if.then305], !srcloc !552

if.then305:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %n, align 2
  %conv307 = zext i16 %20 to i32
  %21 = ptrtoint ptr %k to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %k, align 2
  %conv309 = zext i16 %22 to i32
  %23 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fll_div, align 2
  %conv311 = zext i16 %24 to i32
  %25 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fll_outdiv, align 2
  %conv313 = zext i16 %26 to i32
  %27 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fll_clk_ref_div, align 2
  %conv315 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.226, i32 noundef %conv307, i32 noundef %conv309, i32 noundef %conv311, i32 noundef %conv313, i32 noundef %conv315) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then305, %if.end281, %do.end64, %while.body17.7, %while.body.3
  %retval.0 = phi i32 [ -22, %while.body.3 ], [ -22, %while.body17.7 ], [ -22, %do.end64 ], [ 0, %if.then305 ], [ 0, %if.end281 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm_hubs_set_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm_hubs_vmid_ena(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8993_set_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb2_crit_edge
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_rate = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %sysclk_source = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %sysclk_source to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %clk_id, ptr %sysclk_source, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_set_fll(ptr nocapture noundef readonly %dai, i32 noundef %fll_id, i32 noundef %source, i32 noundef %Fref, i32 noundef %Fout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %call = tail call fastcc i32 @_wm8993_set_fll(ptr noundef %1, i32 noundef %fll_id, i32 noundef %source, i32 noundef %Fref, i32 noundef %Fout)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #8
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 9) #8
  %and = and i32 %call2, -921
  %and4 = and i32 %call3, -2049
  %and5 = and i32 %fmt, 61440
  %6 = add nsw i32 %and5, -4096
  %7 = lshr exact i32 %6, 12
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 0, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call3, 2048
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = or i32 %and, 512
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %and, 512
  %or13 = or i32 %call3, 2048
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb6, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb11 ], [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ 0, %entry.sw.epilog_crit_edge ]
  %aif1.0 = phi i32 [ %or12, %sw.bb11 ], [ %or9, %sw.bb8 ], [ %and, %sw.bb6 ], [ %and, %entry.sw.epilog_crit_edge ]
  %aif4.0 = phi i32 [ %or13, %sw.bb11 ], [ %and4, %sw.bb8 ], [ %or, %sw.bb6 ], [ %and4, %entry.sw.epilog_crit_edge ]
  %master14 = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %master14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %master14, align 4
  %and15 = and i32 %fmt, 15
  %10 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %and15, label %sw.epilog.cleanup_crit_edge [
    i32 5, label %sw.bb16
    i32 4, label %sw.epilog.sw.bb27_crit_edge
    i32 1, label %sw.bb20
    i32 2, label %sw.epilog.sw.bb33_crit_edge
    i32 3, label %sw.bb22
  ]

sw.epilog.sw.bb33_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

sw.epilog.sw.bb27_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or17 = or i32 %aif1.0, 128
  br label %sw.bb27

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or21 = or i32 %aif1.0, 16
  br label %sw.bb33

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or23 = or i32 %aif1.0, 8
  br label %sw.bb33

sw.bb27:                                          ; preds = %sw.bb16, %sw.epilog.sw.bb27_crit_edge
  %aif1.1 = phi i32 [ %aif1.0, %sw.epilog.sw.bb27_crit_edge ], [ %or17, %sw.bb16 ]
  %or19 = or i32 %aif1.1, 24
  %and28 = and i32 %fmt, 3840
  %11 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %and28, label %sw.bb27.cleanup_crit_edge [
    i32 0, label %sw.bb27.sw.epilog44_crit_edge
    i32 768, label %sw.bb29
  ]

sw.bb27.sw.epilog44_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i32 %aif1.1, 280
  br label %sw.epilog44

sw.bb33:                                          ; preds = %sw.bb22, %sw.bb20, %sw.epilog.sw.bb33_crit_edge
  %aif1.2.ph = phi i32 [ %or21, %sw.bb20 ], [ %aif1.0, %sw.epilog.sw.bb33_crit_edge ], [ %or23, %sw.bb22 ]
  %and34 = lshr i32 %fmt, 8
  %12 = and i32 %and34, 15
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %12, label %sw.bb33.cleanup_crit_edge [
    i32 0, label %sw.bb33.sw.epilog44_crit_edge
    i32 4, label %sw.bb35
    i32 3, label %sw.bb37
    i32 2, label %sw.bb39
  ]

sw.bb33.sw.epilog44_crit_edge:                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %or36 = or i32 %aif1.2.ph, 384
  br label %sw.epilog44

sw.bb37:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %or38 = or i32 %aif1.2.ph, 256
  br label %sw.epilog44

sw.bb39:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %or40 = or i32 %aif1.2.ph, 128
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33.sw.epilog44_crit_edge, %sw.bb29, %sw.bb27.sw.epilog44_crit_edge
  %aif1.3 = phi i32 [ %or40, %sw.bb39 ], [ %or38, %sw.bb37 ], [ %or36, %sw.bb35 ], [ %aif1.2.ph, %sw.bb33.sw.epilog44_crit_edge ], [ %or30, %sw.bb29 ], [ %or19, %sw.bb27.sw.epilog44_crit_edge ]
  %call45 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %aif1.3) #8
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %aif4.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %sw.bb33.cleanup_crit_edge, %sw.bb27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb27.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp = icmp eq i32 %slots, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %6 = zext i32 %rx_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %rx_mask, label %if.end.cleanup_crit_edge [
    i32 3, label %if.end.sw.epilog_crit_edge
    i32 12, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %aif1.0 = phi i32 [ 12288, %sw.bb ], [ 8192, %if.end.sw.epilog_crit_edge ]
  %7 = zext i32 %tx_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %tx_mask, label %sw.epilog.cleanup_crit_edge [
    i32 3, label %sw.epilog.out_crit_edge
    i32 12, label %sw.bb4
  ]

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %sw.bb4, %sw.epilog.out_crit_edge, %entry.out_crit_edge
  %aif1.1 = phi i32 [ %aif1.0, %sw.bb4 ], [ %aif1.0, %sw.epilog.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %aif2.0 = phi i32 [ 12288, %sw.bb4 ], [ 8192, %sw.epilog.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %tdm_width = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %tdm_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot_width, ptr %tdm_width, align 4
  %div = sdiv i32 %slots, 2
  %tdm_slots8 = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %tdm_slots8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %tdm_slots8, align 4
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 12288, i32 noundef %aif1.1) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 12288, i32 noundef %aif2.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %and = and i32 %call, -5
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %reg.0 = or i32 %and, %masksel
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 10, i32 noundef %reg.0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8993_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 6) #8
  %and = and i32 %call2, -31
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 65) #8
  %and4 = and i32 %call3, -927
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #8
  %and6 = and i32 %call5, -97
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 9) #8
  %and8 = and i32 %call7, -2048
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %fs = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fs, align 4
  %mul = shl i32 %7, 1
  %bclk = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %bclk, align 4
  %tdm_slots = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tdm_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then15)) #8
          to label %do.end [label %if.then15], !srcloc !552

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tdm_slots, align 4
  %tdm_width = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %tdm_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tdm_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug305, ptr noundef %13, ptr noundef nonnull @.str.231, i32 noundef %15, i32 noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %tdm_width17 = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %tdm_width17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tdm_width17, align 4
  %20 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tdm_slots, align 4
  %mul19 = mul i32 %21, %19
  %22 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bclk, align 4
  %mul21 = mul i32 %mul19, %23
  store i32 %mul21, ptr %bclk, align 4
  br label %do.body37

if.else:                                          ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.else.if.then.i.i.i_crit_edge

if.else.if.then.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.else.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.else.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %25, %if.else.if.then.i.i.i_crit_edge ], [ %28, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !555
  %add.i.i.i = or i32 %26, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.else
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i.i.i = icmp eq i32 %28, 0
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
  %29 = add i32 %call1.i, -16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 30)
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %30, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb28
    i32 4, label %sw.bb32
  ]

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bclk, align 4
  %mul24 = shl i32 %33, 4
  store i32 %mul24, ptr %bclk, align 4
  br label %do.body37

sw.bb25:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bclk, align 4
  %mul27 = mul i32 %35, 20
  store i32 %mul27, ptr %bclk, align 4
  %or = or i32 %and6, 8
  br label %do.body37

sw.bb28:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bclk, align 4
  %mul30 = mul i32 %37, 24
  store i32 %mul30, ptr %bclk, align 4
  %or31 = or i32 %and6, 16
  br label %do.body37

sw.bb32:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bclk, align 4
  %mul34 = shl i32 %39, 5
  store i32 %mul34, ptr %bclk, align 4
  %or35 = or i32 %and6, 24
  br label %do.body37

do.body37:                                        ; preds = %sw.bb32, %sw.bb28, %sw.bb25, %sw.bb, %do.end
  %aif1.0 = phi i32 [ %and6, %do.end ], [ %or35, %sw.bb32 ], [ %or31, %sw.bb28 ], [ %or, %sw.bb25 ], [ %and6, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then49)) #8
          to label %do.end54 [label %if.then49], !srcloc !552

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug306, ptr noundef %41, ptr noundef nonnull @.str.232, i32 noundef %43) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %do.body37
  %call55 = tail call fastcc i32 @configure_clock(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp.not = icmp eq i32 %call55, 0
  br i1 %cmp.not, label %if.end57, label %do.end54.cleanup_crit_edge

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %do.end54
  %sysclk_rate = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 11
  %44 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sysclk_rate, align 4
  %div436 = lshr i32 %45, 6
  %46 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fs, align 4
  %sub = sub i32 %div436, %47
  %48 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div65479 = lshr i32 %45, 7
  %sub67 = sub i32 %div65479, %47
  %49 = tail call i32 @llvm.abs.i32(i32 %sub67, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %48)
  %cmp75 = icmp slt i32 %49, %48
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 %48)
  %best.1 = zext i1 %cmp75 to i32
  %div65.1 = udiv i32 %45, 192
  %sub67.1 = sub i32 %div65.1, %47
  %51 = tail call i32 @llvm.abs.i32(i32 %sub67.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %50)
  %cmp75.1 = icmp slt i32 %51, %50
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 %50)
  %best.1.1 = select i1 %cmp75.1, i32 2, i32 %best.1
  %div65.2480 = lshr i32 %45, 8
  %sub67.2 = sub i32 %div65.2480, %47
  %53 = tail call i32 @llvm.abs.i32(i32 %sub67.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %52)
  %cmp75.2 = icmp slt i32 %53, %52
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 %52)
  %best.1.2 = select i1 %cmp75.2, i32 3, i32 %best.1.1
  %div65.3 = udiv i32 %45, 384
  %sub67.3 = sub i32 %div65.3, %47
  %55 = tail call i32 @llvm.abs.i32(i32 %sub67.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %54)
  %cmp75.3 = icmp slt i32 %55, %54
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 %54)
  %best.1.3 = select i1 %cmp75.3, i32 4, i32 %best.1.2
  %div65.4481 = lshr i32 %45, 9
  %sub67.4 = sub i32 %div65.4481, %47
  %57 = tail call i32 @llvm.abs.i32(i32 %sub67.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %56)
  %cmp75.4 = icmp slt i32 %57, %56
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %56)
  %best.1.4 = select i1 %cmp75.4, i32 5, i32 %best.1.3
  %div65.5 = udiv i32 %45, 768
  %sub67.5 = sub i32 %div65.5, %47
  %59 = tail call i32 @llvm.abs.i32(i32 %sub67.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %58)
  %cmp75.5 = icmp slt i32 %59, %58
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 %58)
  %best.1.5 = select i1 %cmp75.5, i32 6, i32 %best.1.4
  %div65.6482 = lshr i32 %45, 10
  %sub67.6 = sub i32 %div65.6482, %47
  %61 = tail call i32 @llvm.abs.i32(i32 %sub67.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %60)
  %cmp75.6 = icmp slt i32 %61, %60
  %62 = tail call i32 @llvm.smin.i32(i32 %61, i32 %60)
  %best.1.6 = select i1 %cmp75.6, i32 7, i32 %best.1.5
  %div65.7 = udiv i32 %45, 1408
  %sub67.7 = sub i32 %div65.7, %47
  %63 = tail call i32 @llvm.abs.i32(i32 %sub67.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %62)
  %cmp75.7 = icmp slt i32 %63, %62
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 %62)
  %best.1.7 = select i1 %cmp75.7, i32 8, i32 %best.1.6
  %div65.8 = udiv i32 %45, 1536
  %sub67.8 = sub i32 %div65.8, %47
  %65 = tail call i32 @llvm.abs.i32(i32 %sub67.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %64)
  %cmp75.8 = icmp slt i32 %65, %64
  %best.1.8 = select i1 %cmp75.8, i32 9, i32 %best.1.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then90)) #8
          to label %do.end96 [label %if.then90], !srcloc !552

if.then90:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  %arrayidx92 = getelementptr [10 x %struct.anon.109], ptr @clk_sys_rates, i32 0, i32 %best.1.8
  %68 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx92, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug307, ptr noundef %67, ptr noundef nonnull @.str.233, i32 noundef %69) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %if.end57
  %clk_sys_rate = getelementptr [10 x %struct.anon.109], ptr @clk_sys_rates, i32 0, i32 %best.1.8, i32 1
  %70 = ptrtoint ptr %clk_sys_rate to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %clk_sys_rate, align 4
  %shl = shl i32 %71, 1
  %72 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fs, align 4
  %sub101 = add i32 %73, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub101)
  %cmp103 = icmp slt i32 %sub101, 0
  %sub105 = sub i32 8000, %73
  %cond108 = select i1 %cmp103, i32 %sub105, i32 %sub101
  %sub115 = add i32 %73, -11025
  %74 = tail call i32 @llvm.abs.i32(i32 %sub115, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %cond108)
  %cmp123 = icmp slt i32 %74, %cond108
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 %cond108)
  %best.3 = zext i1 %cmp123 to i32
  %sub115.1 = add i32 %73, -12000
  %76 = tail call i32 @llvm.abs.i32(i32 %sub115.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %75)
  %cmp123.1 = icmp slt i32 %76, %75
  %77 = tail call i32 @llvm.smin.i32(i32 %76, i32 %75)
  %best.3.1 = select i1 %cmp123.1, i32 2, i32 %best.3
  %sub115.2 = add i32 %73, -16000
  %78 = tail call i32 @llvm.abs.i32(i32 %sub115.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %77)
  %cmp123.2 = icmp slt i32 %78, %77
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 %77)
  %best.3.2 = select i1 %cmp123.2, i32 3, i32 %best.3.1
  %sub115.3 = add i32 %73, -22050
  %80 = tail call i32 @llvm.abs.i32(i32 %sub115.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %79)
  %cmp123.3 = icmp slt i32 %80, %79
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 %79)
  %best.3.3 = select i1 %cmp123.3, i32 4, i32 %best.3.2
  %sub115.4 = add i32 %73, -24000
  %82 = tail call i32 @llvm.abs.i32(i32 %sub115.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %81)
  %cmp123.4 = icmp slt i32 %82, %81
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 %81)
  %best.3.4 = select i1 %cmp123.4, i32 5, i32 %best.3.3
  %sub115.5 = add i32 %73, -32000
  %84 = tail call i32 @llvm.abs.i32(i32 %sub115.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %83)
  %cmp123.5 = icmp slt i32 %84, %83
  %85 = tail call i32 @llvm.smin.i32(i32 %84, i32 %83)
  %best.3.5 = select i1 %cmp123.5, i32 6, i32 %best.3.4
  %sub115.6 = add i32 %73, -44100
  %86 = tail call i32 @llvm.abs.i32(i32 %sub115.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %85)
  %cmp123.6 = icmp slt i32 %86, %85
  %87 = tail call i32 @llvm.smin.i32(i32 %86, i32 %85)
  %best.3.6 = select i1 %cmp123.6, i32 7, i32 %best.3.5
  %sub115.7 = add i32 %73, -48000
  %88 = tail call i32 @llvm.abs.i32(i32 %sub115.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %87)
  %cmp123.7 = icmp slt i32 %88, %87
  %best.3.7 = select i1 %cmp123.7, i32 8, i32 %best.3.6
  %or98 = or i32 %shl, %and4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then141)) #8
          to label %do.end147 [label %if.then141], !srcloc !552

if.then141:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  %arrayidx143 = getelementptr [9 x %struct.anon.110], ptr @sample_rates, i32 0, i32 %best.3.7
  %91 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx143, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug308, ptr noundef %90, ptr noundef nonnull @.str.234, i32 noundef %92) #8
  br label %do.end147

do.end147:                                        ; preds = %if.then141, %do.end96
  %sample_rate = getelementptr [9 x %struct.anon.110], ptr @sample_rates, i32 0, i32 %best.3.7, i32 1
  %93 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sample_rate, align 4
  %shl149 = shl i32 %94, 7
  %or150 = or i32 %or98, %shl149
  %95 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sysclk_rate, align 4
  %mul155 = mul i32 %96, 10
  %97 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bclk, align 4
  br label %for.body153

for.body153:                                      ; preds = %if.end163.for.body153_crit_edge, %do.end147
  %i.2471 = phi i32 [ 0, %do.end147 ], [ %inc168, %if.end163.for.body153_crit_edge ]
  %best.4470 = phi i32 [ 0, %do.end147 ], [ %spec.select437, %if.end163.for.body153_crit_edge ]
  %best_val.4469 = phi i32 [ 2147483647, %do.end147 ], [ %101, %if.end163.for.body153_crit_edge ]
  %arrayidx156 = getelementptr [16 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %i.2471
  %99 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx156, align 4
  %div158 = udiv i32 %mul155, %100
  %sub160 = sub i32 %div158, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub160)
  %cmp161 = icmp slt i32 %sub160, 0
  br i1 %cmp161, label %for.body153.for.end169_crit_edge, label %if.end163

for.body153.for.end169_crit_edge:                 ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end169

if.end163:                                        ; preds = %for.body153
  call void @__sanitizer_cov_trace_cmp4(i32 %sub160, i32 %best_val.4469)
  %cmp164 = icmp slt i32 %sub160, %best_val.4469
  %101 = tail call i32 @llvm.smin.i32(i32 %sub160, i32 %best_val.4469)
  %spec.select437 = select i1 %cmp164, i32 %i.2471, i32 %best.4470
  %inc168 = add nuw nsw i32 %i.2471, 1
  %exitcond.not = icmp eq i32 %inc168, 16
  br i1 %exitcond.not, label %if.end163.for.end169_crit_edge, label %if.end163.for.body153_crit_edge

if.end163.for.body153_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body153

if.end163.for.end169_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end169

for.end169:                                       ; preds = %if.end163.for.end169_crit_edge, %for.body153.for.end169_crit_edge
  %best.4.lcssa = phi i32 [ %best.4470, %for.body153.for.end169_crit_edge ], [ %spec.select437, %if.end163.for.end169_crit_edge ]
  %102 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sysclk_rate, align 4
  %mul171 = mul i32 %103, 10
  %arrayidx172 = getelementptr [16 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %best.4.lcssa
  %104 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx172, align 4
  %div174 = udiv i32 %mul171, %105
  %106 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div174, ptr %bclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then188)) #8
          to label %do.end195 [label %if.then188], !srcloc !552

if.then188:                                       ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  %109 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug309, ptr noundef %108, ptr noundef nonnull @.str.235, i32 noundef %105, i32 noundef %110) #8
  br label %do.end195

do.end195:                                        ; preds = %if.then188, %for.end169
  %bclk_div = getelementptr [16 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %best.4.lcssa, i32 1
  %111 = ptrtoint ptr %bclk_div to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bclk_div, align 4
  %shl197 = shl i32 %112, 1
  %or198 = or i32 %shl197, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then211)) #8
          to label %do.end218 [label %if.then211], !srcloc !552

if.then211:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 4
  %115 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bclk, align 4
  %117 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fs, align 4
  %div215 = udiv i32 %116, %118
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug310, ptr noundef %114, ptr noundef nonnull @.str.236, i32 noundef %div215) #8
  br label %do.end218

do.end218:                                        ; preds = %if.then211, %do.end195
  %119 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bclk, align 4
  %121 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fs, align 4
  %div221 = udiv i32 %120, %122
  %or222 = or i32 %div221, %and8
  %call223 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %or198) #8
  %call224 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 65, i32 noundef %or150) #8
  %call225 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %aif1.0) #8
  %call226 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %or222) #8
  %num_retune_configs = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 4, i32 1
  %123 = ptrtoint ptr %num_retune_configs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_retune_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool227.not = icmp eq i32 %124, 0
  br i1 %tobool227.not, label %do.end218.cleanup_crit_edge, label %if.then228

do.end218.cleanup_crit_edge:                      ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then228:                                       ; preds = %do.end218
  %pdata = getelementptr inbounds %struct.wm8993_priv, ptr %5, i32 0, i32 4
  %call229 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 98) #8
  %125 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdata, align 4
  %127 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fs, align 4
  %129 = ptrtoint ptr %num_retune_configs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_retune_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp247472 = icmp sgt i32 %130, 0
  br i1 %cmp247472, label %for.body249.preheader, label %if.then228.for.end271_crit_edge

if.then228.for.end271_crit_edge:                  ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end271

for.body249.preheader:                            ; preds = %if.then228
  %rate233 = getelementptr inbounds %struct.wm8993_retune_mobile_setting, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %rate233 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rate233, align 4
  %sub235 = sub i32 %132, %128
  %133 = tail call i32 @llvm.abs.i32(i32 %sub235, i1 false)
  br label %for.body249

for.body249:                                      ; preds = %for.body249.for.body249_crit_edge, %for.body249.preheader
  %i.3475 = phi i32 [ %inc270, %for.body249.for.body249_crit_edge ], [ 0, %for.body249.preheader ]
  %best.6474 = phi i32 [ %best.7, %for.body249.for.body249_crit_edge ], [ 0, %for.body249.preheader ]
  %best_val.6473 = phi i32 [ %137, %for.body249.for.body249_crit_edge ], [ %133, %for.body249.preheader ]
  %rate254 = getelementptr %struct.wm8993_retune_mobile_setting, ptr %126, i32 %i.3475, i32 1
  %134 = ptrtoint ptr %rate254 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rate254, align 4
  %sub256 = sub i32 %135, %128
  %136 = tail call i32 @llvm.abs.i32(i32 %sub256, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %best_val.6473)
  %cmp265 = icmp slt i32 %136, %best_val.6473
  %137 = tail call i32 @llvm.smin.i32(i32 %136, i32 %best_val.6473)
  %best.7 = select i1 %cmp265, i32 %i.3475, i32 %best.6474
  %inc270 = add nuw nsw i32 %i.3475, 1
  %exitcond477.not = icmp eq i32 %inc270, %130
  br i1 %exitcond477.not, label %for.body249.for.end271_crit_edge, label %for.body249.for.body249_crit_edge

for.body249.for.body249_crit_edge:                ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body249

for.body249.for.end271_crit_edge:                 ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end271

for.end271:                                       ; preds = %for.body249.for.end271_crit_edge, %if.then228.for.end271_crit_edge
  %best.6.lcssa = phi i32 [ 0, %if.then228.for.end271_crit_edge ], [ %best.7, %for.body249.for.end271_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8993_hw_params.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8993_hw_params, %if.then287)) #8
          to label %do.end292 [label %if.then287], !srcloc !552

if.then287:                                       ; preds = %for.end271
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx274 = getelementptr %struct.wm8993_retune_mobile_setting, ptr %126, i32 %best.6.lcssa
  %138 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i, align 4
  %140 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx274, align 4
  %rate289 = getelementptr %struct.wm8993_retune_mobile_setting, ptr %126, i32 %best.6.lcssa, i32 1
  %142 = ptrtoint ptr %rate289 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rate289, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8993_hw_params.__UNIQUE_ID_ddebug311, ptr noundef %139, ptr noundef nonnull @.str.237, ptr noundef %141, i32 noundef %143) #8
  br label %do.end292

do.end292:                                        ; preds = %if.then287, %for.end271
  %call293 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 98, i32 noundef 1, i32 noundef 0) #8
  br label %for.body297

for.body297:                                      ; preds = %for.body297.for.body297_crit_edge, %do.end292
  %i.4476 = phi i32 [ 1, %do.end292 ], [ %inc302, %for.body297.for.body297_crit_edge ]
  %add = add nuw nsw i32 %i.4476, 98
  %arrayidx298 = getelementptr %struct.wm8993_retune_mobile_setting, ptr %126, i32 %best.6.lcssa, i32 2, i32 %i.4476
  %144 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx298, align 2
  %conv299 = zext i16 %145 to i32
  %call300 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add, i32 noundef %conv299) #8
  %inc302 = add nuw nsw i32 %i.4476, 1
  %exitcond478.not = icmp eq i32 %inc302, 24
  br i1 %exitcond478.not, label %for.end303, label %for.body297.for.body297_crit_edge

for.body297.for.body297_crit_edge:                ; preds = %for.body297
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body297

for.end303:                                       ; preds = %for.body297
  call void @__sanitizer_cov_trace_pc() #10
  %conv304 = and i32 %call229, 65535
  %call305 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 98, i32 noundef 1, i32 noundef %conv304) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end303, %do.end218.cleanup_crit_edge, %do.end54.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_width.exit.cleanup_crit_edge ], [ %call55, %do.end54.cleanup_crit_edge ], [ 0, %for.end303 ], [ 0, %do.end218.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 297)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 297)
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
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !343, !345, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !376, !378, !379, !381, !382, !383, !385, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !476, !477, !478, !479, !481, !482, !484, !485, !486, !488, !489, !491, !492, !493, !495, !496, !498, !499, !501, !503, !504, !505, !506, !508, !510, !512, !514, !515, !516, !518, !519, !521, !522, !524, !525, !527, !528, !530, !531, !533, !534, !536, !538, !540}
!llvm.module.flags = !{!542, !543, !544, !545, !546, !547, !548, !549}
!llvm.ident = !{!550}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8993__315_1753_wm8993_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8993__315_1753_wm8993_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8993.c", i32 1753, i32 1}
!2 = !{ptr @__exitcall_wm8993_i2c_driver_exit, !1, !"__exitcall_wm8993_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description316, !4, !"__UNIQUE_ID_description316", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8993.c", i32 1755, i32 1}
!5 = !{ptr @__UNIQUE_ID_author317, !6, !"__UNIQUE_ID_author317", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8993.c", i32 1756, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8993.c", i32 1757, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8993.c", i32 1746, i32 11}
!12 = !{ptr @wm8993_i2c_driver, !13, !"wm8993_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8993.c", i32 1744, i32 26}
!14 = !{ptr @wm8993_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8993.c", i32 1642, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8993.c", i32 1645, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wm8993_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @wm8993_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8993.c", i32 1657, i32 3}
!27 = !{ptr @wm8993_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wm8993_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/wm8993.c", i32 1664, i32 3}
!31 = !{ptr @wm8993_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm8993_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm8993.c", i32 1670, i32 3}
!35 = !{ptr @wm8993_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm8993_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm8993.c", i32 1675, i32 3}
!39 = !{ptr @wm8993_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wm8993_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8993.c", i32 1687, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wm8993_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @wm8993_i2c_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wm8993.c", i32 1713, i32 3}
!48 = !{ptr @wm8993_i2c_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wm8993_i2c_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @wm8993_regmap, !54, !"wm8993_regmap", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm8993.c", i32 1603, i32 35}
!55 = !{ptr @wm8993_reg_defaults, !56, !"wm8993_reg_defaults", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8993.c", i32 41, i32 33}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm8993.c", i32 33, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm8993.c", i32 34, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm8993.c", i32 35, i32 2}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm8993.c", i32 36, i32 2}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm8993.c", i32 37, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wm8993.c", i32 38, i32 2}
!69 = distinct !{null, !70, !"wm8993_supply_names", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm8993.c", i32 32, i32 20}
!71 = !{ptr @wm8993_regmap_patch, !72, !"wm8993_regmap_patch", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm8993.c", i32 1597, i32 34}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm8993.c", i32 1411, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @wm8993_irq._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @wm8993_irq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8993.c", i32 1418, i32 3}
!80 = !{ptr @wm8993_irq._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @wm8993_irq._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/wm8993.c", i32 1429, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @wm8993_irq._entry.38, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @wm8993_irq._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8993.c", i32 1432, i32 3}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @wm8993_irq.__UNIQUE_ID_ddebug312, !88, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8993.c", i32 1438, i32 3}
!93 = !{ptr @wm8993_irq._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @wm8993_irq._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @soc_component_dev_wm8993, !96, !"soc_component_dev_wm8993", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8993.c", i32 1616, i32 46}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8993.c", i32 1520, i32 3}
!99 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @wm8993_probe.__UNIQUE_ID_ddebug313, !98, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8993.c", i32 1522, i32 3}
!103 = !{ptr @wm8993_probe.__UNIQUE_ID_ddebug314, !102, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8993.c", i32 749, i32 1}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wm8993.c", i32 752, i32 1}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8993.c", i32 753, i32 1}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wm8993.c", i32 754, i32 1}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8993.c", i32 756, i32 1}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8993.c", i32 758, i32 1}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8993.c", i32 759, i32 1}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8993.c", i32 760, i32 1}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8993.c", i32 762, i32 1}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8993.c", i32 764, i32 1}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8993.c", i32 765, i32 1}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm8993.c", i32 766, i32 1}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8993.c", i32 767, i32 1}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8993.c", i32 768, i32 1}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/wm8993.c", i32 769, i32 1}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/wm8993.c", i32 771, i32 1}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8993.c", i32 772, i32 1}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8993.c", i32 773, i32 1}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8993.c", i32 774, i32 1}
!142 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8993.c", i32 775, i32 1}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8993.c", i32 778, i32 1}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8993.c", i32 780, i32 1}
!148 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8993.c", i32 782, i32 1}
!150 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8993.c", i32 783, i32 1}
!152 = !{ptr @.str.88, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8993.c", i32 785, i32 1}
!154 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8993.c", i32 787, i32 1}
!156 = !{ptr @.str.92, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8993.c", i32 789, i32 1}
!158 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8993.c", i32 791, i32 1}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8993.c", i32 794, i32 1}
!162 = !{ptr @wm8993_snd_controls, !163, !"wm8993_snd_controls", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8993.c", i32 748, i32 38}
!164 = !{ptr @sidetone_tlv, !165, !"sidetone_tlv", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8993.c", i32 624, i32 14}
!166 = !{ptr @drc_path, !167, !"drc_path", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8993.c", i32 663, i32 8}
!168 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8993.c", i32 659, i32 2}
!170 = !{ptr @.str.98, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8993.c", i32 660, i32 2}
!172 = !{ptr @drc_path_text, !173, !"drc_path_text", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8993.c", i32 658, i32 20}
!174 = !{ptr @drc_comp_threash, !175, !"drc_comp_threash", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8993.c", i32 625, i32 14}
!176 = !{ptr @drc_comp_amp, !177, !"drc_comp_amp", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8993.c", i32 626, i32 14}
!178 = !{ptr @drc_r0, !179, !"drc_r0", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8993.c", i32 675, i32 8}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8993.c", i32 667, i32 2}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8993.c", i32 668, i32 2}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8993.c", i32 669, i32 2}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8993.c", i32 670, i32 2}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wm8993.c", i32 671, i32 2}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wm8993.c", i32 672, i32 2}
!192 = !{ptr @drc_r0_text, !193, !"drc_r0_text", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm8993.c", i32 666, i32 20}
!194 = !{ptr @drc_r1, !195, !"drc_r1", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/wm8993.c", i32 686, i32 8}
!196 = !{ptr @drc_r1_text, !197, !"drc_r1_text", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wm8993.c", i32 678, i32 20}
!198 = !{ptr @drc_min_tlv, !199, !"drc_min_tlv", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wm8993.c", i32 627, i32 14}
!200 = !{ptr @drc_max_tlv, !201, !"drc_max_tlv", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm8993.c", i32 628, i32 14}
!202 = !{ptr @drc_attack, !203, !"drc_attack", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wm8993.c", i32 704, i32 8}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm8993.c", i32 690, i32 2}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8993.c", i32 691, i32 2}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm8993.c", i32 692, i32 2}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wm8993.c", i32 693, i32 2}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8993.c", i32 694, i32 2}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wm8993.c", i32 695, i32 2}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wm8993.c", i32 696, i32 2}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm8993.c", i32 697, i32 2}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8993.c", i32 698, i32 2}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/wm8993.c", i32 699, i32 2}
!224 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm8993.c", i32 700, i32 2}
!226 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/wm8993.c", i32 701, i32 2}
!228 = !{ptr @drc_attack_text, !229, !"drc_attack_text", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8993.c", i32 689, i32 20}
!230 = !{ptr @drc_decay, !231, !"drc_decay", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/wm8993.c", i32 719, i32 8}
!232 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8993.c", i32 708, i32 2}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/wm8993.c", i32 709, i32 2}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/wm8993.c", i32 710, i32 2}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/wm8993.c", i32 711, i32 2}
!240 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/wm8993.c", i32 712, i32 2}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/wm8993.c", i32 713, i32 2}
!244 = !{ptr @.str.123, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/wm8993.c", i32 714, i32 2}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/wm8993.c", i32 715, i32 2}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/wm8993.c", i32 716, i32 2}
!250 = !{ptr @drc_decay_text, !251, !"drc_decay_text", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/wm8993.c", i32 707, i32 20}
!252 = !{ptr @drc_ff, !253, !"drc_ff", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/wm8993.c", i32 727, i32 8}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/wm8993.c", i32 723, i32 2}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8993.c", i32 724, i32 2}
!258 = !{ptr @drc_ff_text, !259, !"drc_ff_text", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8993.c", i32 722, i32 20}
!260 = !{ptr @drc_qr_tlv, !261, !"drc_qr_tlv", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8993.c", i32 632, i32 14}
!262 = !{ptr @drc_qr_rate, !263, !"drc_qr_rate", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8993.c", i32 736, i32 8}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8993.c", i32 731, i32 2}
!266 = !{ptr @drc_qr_rate_text, !267, !"drc_qr_rate_text", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8993.c", i32 730, i32 20}
!268 = !{ptr @drc_smooth, !269, !"drc_smooth", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8993.c", i32 745, i32 8}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8993.c", i32 740, i32 2}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8993.c", i32 741, i32 2}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8993.c", i32 742, i32 2}
!276 = !{ptr @drc_smooth_text, !277, !"drc_smooth_text", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8993.c", i32 739, i32 20}
!278 = !{ptr @drc_startup_tlv, !279, !"drc_startup_tlv", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8993.c", i32 633, i32 14}
!280 = !{ptr @digital_tlv, !281, !"digital_tlv", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8993.c", i32 635, i32 14}
!282 = !{ptr @adc_hpf, !283, !"adc_hpf", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/wm8993.c", i32 655, i32 8}
!284 = !{ptr @.str.132, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/wm8993.c", i32 649, i32 2}
!286 = !{ptr @.str.133, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm8993.c", i32 650, i32 2}
!288 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8993.c", i32 651, i32 2}
!290 = !{ptr @.str.135, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8993.c", i32 652, i32 2}
!292 = !{ptr @adc_hpf_text, !293, !"adc_hpf_text", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8993.c", i32 648, i32 20}
!294 = !{ptr @dac_boost_tlv, !295, !"dac_boost_tlv", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8993.c", i32 636, i32 14}
!296 = !{ptr @dac_deemph, !297, !"dac_deemph", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8993.c", i32 645, i32 8}
!298 = !{ptr @.str.136, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/wm8993.c", i32 639, i32 2}
!300 = !{ptr @.str.137, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8993.c", i32 640, i32 2}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/wm8993.c", i32 641, i32 2}
!304 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/wm8993.c", i32 642, i32 2}
!306 = !{ptr @dac_deemph_text, !307, !"dac_deemph_text", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8993.c", i32 638, i32 20}
!308 = !{ptr @.str.140, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/wm8993.c", i32 799, i32 1}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/wm8993.c", i32 800, i32 1}
!312 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/wm8993.c", i32 801, i32 1}
!314 = !{ptr @.str.146, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/wm8993.c", i32 802, i32 1}
!316 = !{ptr @.str.148, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/wm8993.c", i32 803, i32 1}
!318 = !{ptr @wm8993_eq_controls, !319, !"wm8993_eq_controls", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/wm8993.c", i32 798, i32 38}
!320 = !{ptr @eq_tlv, !321, !"eq_tlv", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/wm8993.c", i32 634, i32 14}
!322 = !{ptr @.str.150, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8993.c", i32 881, i32 1}
!324 = !{ptr @.str.151, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/wm8993.c", i32 883, i32 1}
!326 = !{ptr @.str.152, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/wm8993.c", i32 884, i32 1}
!328 = !{ptr @.str.153, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8993.c", i32 885, i32 1}
!330 = !{ptr @.str.154, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/wm8993.c", i32 887, i32 1}
!332 = !{ptr @.str.155, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/wm8993.c", i32 888, i32 1}
!334 = !{ptr @.str.156, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/wm8993.c", i32 890, i32 1}
!336 = !{ptr @.str.157, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/wm8993.c", i32 891, i32 1}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/wm8993.c", i32 893, i32 1}
!340 = !{ptr @.str.159, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.160, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/wm8993.c", i32 894, i32 1}
!343 = !{ptr @.str.161, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wm8993.c", i32 896, i32 1}
!345 = !{ptr @.str.162, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.163, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm8993.c", i32 897, i32 1}
!348 = !{ptr @.str.164, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/wm8993.c", i32 899, i32 1}
!350 = !{ptr @.str.165, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/wm8993.c", i32 900, i32 1}
!352 = !{ptr @.str.166, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm8993.c", i32 902, i32 1}
!354 = !{ptr @.str.167, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm8993.c", i32 903, i32 1}
!356 = !{ptr @.str.168, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/wm8993.c", i32 905, i32 1}
!358 = !{ptr @.str.169, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/wm8993.c", i32 906, i32 1}
!360 = !{ptr @.str.170, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/wm8993.c", i32 908, i32 1}
!362 = !{ptr @.str.171, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/wm8993.c", i32 909, i32 1}
!364 = !{ptr @.str.172, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/wm8993.c", i32 911, i32 1}
!366 = !{ptr @.str.173, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/wm8993.c", i32 913, i32 1}
!368 = !{ptr @.str.174, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8993.c", i32 915, i32 1}
!370 = !{ptr @wm8993_dapm_widgets, !371, !"wm8993_dapm_widgets", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/wm8993.c", i32 880, i32 41}
!372 = !{ptr @.str.176, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/wm8993.c", i32 584, i32 3}
!374 = !{ptr @.str.177, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @configure_clock.__UNIQUE_ID_ddebug302, !373, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!376 = !{ptr @.str.178, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/wm8993.c", i32 599, i32 3}
!378 = !{ptr @configure_clock.__UNIQUE_ID_ddebug303, !377, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!379 = !{ptr @.str.179, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/wm8993.c", i32 615, i32 3}
!381 = !{ptr @configure_clock._entry, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @configure_clock._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.180, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/wm8993.c", i32 619, i32 2}
!385 = !{ptr @configure_clock.__UNIQUE_ID_ddebug304, !384, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!386 = !{ptr @aifoutl_mux, !387, !"aifoutl_mux", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/wm8993.c", i32 843, i32 38}
!388 = !{ptr @aifoutl_enum, !389, !"aifoutl_enum", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/wm8993.c", i32 840, i32 8}
!390 = !{ptr @.str.181, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/wm8993.c", i32 837, i32 2}
!392 = !{ptr @.str.182, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/wm8993.c", i32 837, i32 10}
!394 = !{ptr @aif_text, !395, !"aif_text", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/wm8993.c", i32 836, i32 20}
!396 = !{ptr @aifoutr_mux, !397, !"aifoutr_mux", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/wm8993.c", i32 849, i32 38}
!398 = !{ptr @aifoutr_enum, !399, !"aifoutr_enum", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/wm8993.c", i32 846, i32 8}
!400 = !{ptr @.str.183, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/wm8993.c", i32 856, i32 2}
!402 = !{ptr @aifinl_mux, !403, !"aifinl_mux", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/wm8993.c", i32 855, i32 38}
!404 = !{ptr @aifinl_enum, !405, !"aifinl_enum", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/wm8993.c", i32 852, i32 8}
!406 = !{ptr @.str.184, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/wm8993.c", i32 862, i32 2}
!408 = !{ptr @aifinr_mux, !409, !"aifinr_mux", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/wm8993.c", i32 861, i32 38}
!410 = !{ptr @aifinr_enum, !411, !"aifinr_enum", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/wm8993.c", i32 858, i32 8}
!412 = !{ptr @.str.185, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/wm8993.c", i32 872, i32 2}
!414 = !{ptr @sidetonel_mux, !415, !"sidetonel_mux", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/wm8993.c", i32 871, i32 38}
!416 = !{ptr @sidetonel_enum, !417, !"sidetonel_enum", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/wm8993.c", i32 868, i32 8}
!418 = !{ptr @sidetone_text, !419, !"sidetone_text", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/wm8993.c", i32 864, i32 20}
!420 = !{ptr @.str.186, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/wm8993.c", i32 878, i32 2}
!422 = !{ptr @sidetoner_mux, !423, !"sidetoner_mux", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wm8993.c", i32 877, i32 38}
!424 = !{ptr @sidetoner_enum, !425, !"sidetoner_enum", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/wm8993.c", i32 874, i32 8}
!426 = !{ptr @.str.187, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/wm8993.c", i32 823, i32 1}
!428 = !{ptr @.str.189, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/wm8993.c", i32 824, i32 1}
!430 = !{ptr @.str.191, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/wm8993.c", i32 825, i32 1}
!432 = !{ptr @.str.193, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/wm8993.c", i32 826, i32 1}
!434 = !{ptr @left_speaker_mixer, !435, !"left_speaker_mixer", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/wm8993.c", i32 822, i32 38}
!436 = !{ptr @.str.196, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/wm8993.c", i32 831, i32 1}
!438 = !{ptr @right_speaker_mixer, !439, !"right_speaker_mixer", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/wm8993.c", i32 829, i32 38}
!440 = !{ptr @.str.200, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/wm8993.c", i32 919, i32 4}
!442 = !{ptr @.str.201, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/wm8993.c", i32 920, i32 4}
!444 = !{ptr @.str.202, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8993.c", i32 954, i32 4}
!446 = !{ptr @.str.203, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/wm8993.c", i32 956, i32 4}
!448 = !{ptr @.str.204, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/wm8993.c", i32 958, i32 4}
!450 = !{ptr @.str.205, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8993.c", i32 960, i32 4}
!452 = !{ptr @routes, !453, !"routes", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/wm8993.c", i32 918, i32 40}
!454 = !{ptr @.str.206, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/wm8993.c", i32 1556, i32 3}
!456 = !{ptr @.str.207, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @wm8993_suspend._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @wm8993_suspend._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.208, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/wm8993.c", i32 482, i32 3}
!461 = !{ptr @.str.209, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @_wm8993_set_fll.__UNIQUE_ID_ddebug300, !460, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!463 = !{ptr @.str.210, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/wm8993.c", i32 513, i32 3}
!465 = !{ptr @_wm8993_set_fll._entry, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @_wm8993_set_fll._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.212, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/wm8993.c", i32 559, i32 3}
!469 = !{ptr @_wm8993_set_fll._entry.211, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @_wm8993_set_fll._entry_ptr.213, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.214, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/wm8993.c", i32 561, i32 2}
!473 = !{ptr @_wm8993_set_fll.__UNIQUE_ID_ddebug301, !472, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!474 = !{ptr @.str.215, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/wm8993.c", i32 398, i32 4}
!476 = !{ptr @.str.216, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @fll_factors._entry, !475, !"_entry", i1 false, i1 false}
!478 = !{ptr @fll_factors._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.217, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/wm8993.c", i32 404, i32 2}
!481 = !{ptr @fll_factors.__UNIQUE_ID_ddebug296, !480, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!482 = !{ptr @.str.219, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/wm8993.c", i32 416, i32 4}
!484 = !{ptr @fll_factors._entry.218, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @fll_factors._entry_ptr.220, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.221, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/wm8993.c", i32 423, i32 2}
!488 = !{ptr @fll_factors.__UNIQUE_ID_ddebug297, !487, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!489 = !{ptr @.str.223, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/wm8993.c", i32 434, i32 3}
!491 = !{ptr @fll_factors._entry.222, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @fll_factors._entry_ptr.224, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.225, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/wm8993.c", i32 443, i32 2}
!495 = !{ptr @fll_factors.__UNIQUE_ID_ddebug298, !494, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!496 = !{ptr @.str.226, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/wm8993.c", i32 458, i32 2}
!498 = !{ptr @fll_factors.__UNIQUE_ID_ddebug299, !497, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!499 = !{ptr @fll_fratios, !500, !"fll_fratios", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/wm8993.c", i32 374, i32 3}
!501 = !{ptr @.str.227, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/wm8993.c", i32 1586, i32 4}
!503 = !{ptr @.str.228, !502, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @wm8993_resume._entry, !502, !"_entry", i1 false, i1 false}
!505 = !{ptr @wm8993_resume._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.229, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/wm8993.c", i32 1461, i32 10}
!508 = !{ptr @wm8993_dai, !509, !"wm8993_dai", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/wm8993.c", i32 1460, i32 34}
!510 = !{ptr @wm8993_ops, !511, !"wm8993_ops", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/wm8993.c", i32 1443, i32 37}
!512 = !{ptr @.str.230, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/wm8993.c", i32 1209, i32 3}
!514 = !{ptr @.str.231, !513, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug305, !513, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!516 = !{ptr @.str.232, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/wm8993.c", i32 1234, i32 2}
!518 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug306, !517, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!519 = !{ptr @.str.233, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/wm8993.c", i32 1252, i32 2}
!521 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug307, !520, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!522 = !{ptr @.str.234, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/wm8993.c", i32 1268, i32 2}
!524 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug308, !523, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!525 = !{ptr @.str.235, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/wm8993.c", i32 1287, i32 2}
!527 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug309, !526, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!528 = !{ptr @.str.236, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/wm8993.c", i32 1292, i32 2}
!530 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug310, !529, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!531 = !{ptr @.str.237, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/wm8993.c", i32 1318, i32 3}
!533 = !{ptr @wm8993_hw_params.__UNIQUE_ID_ddebug311, !532, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!534 = !{ptr @clk_sys_rates, !535, !"clk_sys_rates", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/wm8993.c", i32 153, i32 3}
!536 = !{ptr @sample_rates, !537, !"sample_rates", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/wm8993.c", i32 169, i32 3}
!538 = !{ptr @bclk_divs, !539, !"bclk_divs", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/wm8993.c", i32 184, i32 3}
!540 = !{ptr @wm8993_i2c_id, !541, !"wm8993_i2c_id", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/wm8993.c", i32 1738, i32 35}
!542 = !{i32 1, !"wchar_size", i32 2}
!543 = !{i32 1, !"min_enum_size", i32 4}
!544 = !{i32 8, !"branch-target-enforcement", i32 0}
!545 = !{i32 8, !"sign-return-address", i32 0}
!546 = !{i32 8, !"sign-return-address-all", i32 0}
!547 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!548 = !{i32 7, !"uwtable", i32 1}
!549 = !{i32 7, !"frame-pointer", i32 2}
!550 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!551 = !{!"auto-init"}
!552 = !{i64 2149000148, i64 2149000153, i64 2149000166, i64 2149000210, i64 2149000244, i64 2149000265}
!553 = !{!"branch_weights", i32 2000, i32 1}
!554 = !{i64 2148233195, i64 2148233475, i64 2148233809, i64 2148234143}
!555 = !{i32 0, i32 33}
