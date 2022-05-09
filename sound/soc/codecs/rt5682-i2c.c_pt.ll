; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5682-i2c.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5682-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.rt5682_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i8, [2 x ptr] }
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
%struct.rt5682_priv = type { ptr, ptr, %struct.rt5682_platform_data, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], %struct.delayed_work, %struct.delayed_work, %struct.mutex, i8, %struct.mutex, ptr, i32, %struct.sdw_bus_params, i8, i8, i8, [2 x %struct.clk_hw], ptr, i32, i32, [3 x i32], [3 x i32], [3 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_snd_soc_rt5682_i2c__297_343_rt5682_i2c_driver_init6 = internal global ptr @rt5682_i2c_driver_init, section ".initcall6.init", align 4
@rt5682_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5682_i2c_probe, ptr @rt5682_i2c_remove, ptr null, ptr @rt5682_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @rt5682_of_match, ptr @rt5682_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5682_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5682_i2c_driver_exit = internal global ptr @rt5682_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [50 x i8] c"snd_soc_rt5682_i2c.description=ASoC RT5682 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [59 x i8] c"snd_soc_rt5682_i2c.author=Bard Liao <bardliao@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [60 x i8] c"snd_soc_rt5682_i2c.file=sound/soc/codecs/snd-soc-rt5682-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [34 x i8] c"snd_soc_rt5682_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5682\00", [25 x i8] zeroinitializer }, align 32
@rt5682_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5682i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5682_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"10EC5682\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5682_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5682\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@i2s_default_platform_data = internal constant { %struct.rt5682_platform_data, [56 x i8] } { %struct.rt5682_platform_data { i32 0, i32 1, i32 1, i32 1, i32 16, i32 0, i32 0, i8 0, [2 x ptr] [ptr @.str.39, ptr @.str.40] }, [56 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5682_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @rt5682_readable_register, ptr @rt5682_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_reg, i32 318, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rt5682_i2c:145:(&rt5682_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5682_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/rt5682-i2c.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr = internal global ptr @rt5682_i2c_probe._entry, section ".printk_index", align 4
@rt5682_supply_names = external dso_local local_unnamed_addr global [3 x ptr], align 4
@rt5682_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.9 = internal global ptr @rt5682_i2c_probe._entry.7, section ".printk_index", align 4
@rt5682_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.12 = internal global ptr @rt5682_i2c_probe._entry.10, section ".printk_index", align 4
@rt5682_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail gpio_request gpio_ldo\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.15 = internal global ptr @rt5682_i2c_probe._entry.13, section ".printk_index", align 4
@rt5682_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device with ID register %x is not rt5682\0A\00", [54 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.18 = internal global ptr @rt5682_i2c_probe._entry.16, section ".printk_index", align 4
@rt5682_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rt5682->calibrate_mutex\00", [39 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid DMIC_DAT pin\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.23 = internal global ptr @rt5682_i2c_probe._entry.20, section ".printk_index", align 4
@rt5682_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 240, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid DMIC_CLK pin\0A\00", [42 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.26 = internal global ptr @rt5682_i2c_probe._entry.24, section ".printk_index", align 4
@rt5682_i2c_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&rt5682->jack_detect_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&rt5682->jack_detect_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&rt5682->jd_check_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&rt5682->jd_check_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reguest IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rt5682_i2c_probe._entry_ptr.37 = internal global ptr @rt5682_i2c_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@rt5682_soc_component_dev = external dso_local constant %struct.snd_soc_component_driver, align 4
@rt5682_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.41, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_aif1_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.42, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.43, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.44, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682_aif2_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.45, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5682-dai-wclk\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5682-dai-bclk\00", [16 x i8] zeroinitializer }, align 32
@rt5682_reg = external dso_local constant [318 x %struct.reg_default], align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5682_aif1_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif2\00", [20 x i8] zeroinitializer }, align 32
@rt5682_aif2_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"rt5682_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 331, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 333, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"rt5682_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 313, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"rt5682_acpi_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 319, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"rt5682_i2c_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 325, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"i2s_default_platform_data\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 35, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"rt5682_regmap\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 44, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 145, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 148, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 159, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 171, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 178, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 189, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 194, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 219, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 240, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 262, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 264, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 272, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 277, i32 50 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"rt5682_dai\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 80, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 40, i32 40 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 41, i32 40 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 82, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 92, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 85, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 101, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [33 x i8] c"../sound/soc/codecs/rt5682-i2c.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 104, i32 19 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_rt5682_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5682_i2c__297_343_rt5682_i2c_driver_init6, ptr @rt5682_i2c_driver_exit, ptr @rt5682_i2c_probe._entry, ptr @rt5682_i2c_probe._entry.10, ptr @rt5682_i2c_probe._entry.13, ptr @rt5682_i2c_probe._entry.16, ptr @rt5682_i2c_probe._entry.20, ptr @rt5682_i2c_probe._entry.24, ptr @rt5682_i2c_probe._entry.35, ptr @rt5682_i2c_probe._entry.7, ptr @rt5682_i2c_probe._entry_ptr, ptr @rt5682_i2c_probe._entry_ptr.12, ptr @rt5682_i2c_probe._entry_ptr.15, ptr @rt5682_i2c_probe._entry_ptr.18, ptr @rt5682_i2c_probe._entry_ptr.23, ptr @rt5682_i2c_probe._entry_ptr.26, ptr @rt5682_i2c_probe._entry_ptr.37, ptr @rt5682_i2c_probe._entry_ptr.9, ptr @rt5682_i2c_driver, ptr @.str, ptr @rt5682_of_match, ptr @rt5682_acpi_match, ptr @rt5682_i2c_id, ptr @i2s_default_platform_data, ptr @rt5682_i2c_probe._key, ptr @rt5682_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @rt5682_i2c_probe.__key, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @rt5682_i2c_probe.__key.27, ptr @.str.28, ptr @rt5682_i2c_probe.__key.29, ptr @.str.30, ptr @rt5682_i2c_probe.__key.31, ptr @.str.32, ptr @rt5682_i2c_probe.__key.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @rt5682_dai, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_default_platform_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_i2c_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5682_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5682_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5682_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !104
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 636, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %i2c_dev = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %i2c_dev, align 4
  %pdata4 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %pdata4, ptr @i2s_default_platform_data, i32 40)
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = call ptr @memcpy(ptr %pdata4, ptr %1, i32 40)
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @rt5682_parse_dt(ptr noundef nonnull %call.i, ptr noundef %dev) #5
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %call11 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5682_regmap, ptr noundef nonnull @rt5682_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt5682_supply_names to i32))
  %8 = load ptr, ptr @rt5682_supply_names, align 4
  %arrayidx19 = getelementptr %struct.rt5682_priv, ptr %call.i, i32 0, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x ptr], ptr @rt5682_supply_names, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @rt5682_supply_names, i32 0, i32 1), align 4
  %arrayidx19.1 = getelementptr %struct.rt5682_priv, ptr %call.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx19.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x ptr], ptr @rt5682_supply_names, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @rt5682_supply_names, i32 0, i32 2), align 4
  %arrayidx19.2 = getelementptr %struct.rt5682_priv, ptr %call.i, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx19.2, align 4
  %call22 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %14) #8
  br label %cleanup

do.end27:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call22) #8
  br label %cleanup

if.end29:                                         ; preds = %for.body.preheader
  %call.i306 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rt5682_i2c_disable_regulators, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool.not.i = icmp eq i32 %call.i306, 0
  br i1 %tobool.not.i, label %if.end34, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx19) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call37 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call37) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %15 = ptrtoint ptr %pdata4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdata4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %17 = icmp ult i32 %16, 2048
  br i1 %17, label %if.then47, label %if.end44.if.end59_crit_edge

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then47:                                        ; preds = %if.end44
  %call51 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %16, i32 noundef 2, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.if.end59_crit_edge, label %do.end56

if.then47.if.end59_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.end56:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.then47.if.end59_crit_edge, %if.end44.if.end59_crit_edge
  tail call void @usleep_range_state(i32 noundef 300000, i32 noundef 350000, i32 noundef 2) #5
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call61 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 65535, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call63 = call i32 @regmap_read(ptr noundef %21, i32 noundef 255, ptr noundef nonnull %val) #5
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25904, i32 %23)
  %cmp64.not = icmp eq i32 %23, 25904
  br i1 %cmp64.not, label %do.body71, label %do.end68

do.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %23) #8
  br label %cleanup

do.body71:                                        ; preds = %if.end59
  %calibrate_mutex = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 11
  call void @__mutex_init(ptr noundef %calibrate_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @rt5682_i2c_probe.__key) #5
  call void @rt5682_calibrate(ptr noundef nonnull %call.i) #5
  call void @rt5682_apply_patch_list(ptr noundef nonnull %call.i, ptr noundef %dev) #5
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call76 = call i32 @regmap_write(ptr noundef %25, i32 noundef 142, i32 noundef 0) #5
  %dmic1_data_pin = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %dmic1_data_pin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dmic1_data_pin, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end93 [
    i32 0, label %do.body71.if.end114_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb86
  ]

do.body71.if.end114_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

sw.bb:                                            ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i307 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 110, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i308 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 192, i32 noundef 12288, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.bb86:                                          ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i309 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 110, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i310 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 192, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

do.end93:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end93, %sw.bb86, %sw.bb
  %dmic1_clk_pin = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %dmic1_clk_pin to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dmic1_clk_pin, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %38, label %do.end111 [
    i32 0, label %sw.bb96
    i32 1, label %sw.bb99
  ]

sw.bb96:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i311 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 192, i32 noundef 49152, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end114

sw.bb99:                                          ; preds = %sw.epilog
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call.i312 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 192, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %dmic_clk_driving_high = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 2, i32 7
  %44 = ptrtoint ptr %dmic_clk_driving_high to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dmic_clk_driving_high, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool103.not = icmp eq i8 %45, 0
  br i1 %tobool103.not, label %sw.bb99.if.end114_crit_edge, label %if.then104

sw.bb99.if.end114_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then104:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i313 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 310, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end114

do.end111:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %if.end114

if.end114:                                        ; preds = %do.end111, %if.then104, %sw.bb99.if.end114_crit_edge, %sw.bb96, %do.body71.if.end114_crit_edge
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.i314 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 99, i32 noundef 60, i32 noundef 44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call118 = call i32 @regmap_write(ptr noundef %51, i32 noundef 148, i32 noundef 128) #5
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call.i315 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 192, i32 noundef 960, i32 noundef 320, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call122 = call i32 @regmap_write(ptr noundef %55, i32 noundef 325, i32 noundef 0) #5
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i316 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 273, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.i317 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 293, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i318 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 145, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i319 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 110, i32 noundef 28672, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #5
  %64 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @rt5682_i2c_probe.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry139 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %65 = ptrtoint ptr %entry139 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry139, ptr %entry139, align 4
  %prev.i = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry139, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %67 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @rt5682_jack_detect_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 7, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.30, ptr noundef nonnull @rt5682_i2c_probe.__key.29) #5
  %jd_check_work = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %jd_check_work, i32 noundef 0) #5
  %68 = ptrtoint ptr %jd_check_work to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %jd_check_work, align 4
  %lockdep_map160 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map160, ptr noundef nonnull @.str.32, ptr noundef nonnull @rt5682_i2c_probe.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry163 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %69 = ptrtoint ptr %entry163 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry163, ptr %entry163, align 4
  %prev.i320 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry163, ptr %prev.i320, align 4
  %func166 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %71 = ptrtoint ptr %func166 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @rt5682_jd_check_handler, ptr %func166, align 4
  %timer171 = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer171, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.34, ptr noundef nonnull @rt5682_i2c_probe.__key.33) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool176.not = icmp eq i32 %73, 0
  br i1 %tobool176.not, label %if.end114.if.end188_crit_edge, label %if.then177

if.end114.if.end188_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

if.then177:                                       ; preds = %if.end114
  %call180 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %73, ptr noundef null, ptr noundef nonnull @rt5682_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then177.if.end188_crit_edge, label %do.end185

if.then177.if.end188_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

do.end185:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call180) #8
  br label %if.end188

if.end188:                                        ; preds = %do.end185, %if.then177.if.end188_crit_edge, %if.end114.if.end188_crit_edge
  %call190 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.38) #5
  %mclk = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 19
  %74 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call190, ptr %mclk, align 4
  %cmp.i321 = icmp ugt ptr %call190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.then193, label %if.end196

if.then193:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %call190 to i32
  br label %cleanup

if.end196:                                        ; preds = %if.end188
  %call197 = call i32 @rt5682_register_dai_clks(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %if.end196.cleanup_crit_edge

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end200:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  %lrck = getelementptr inbounds %struct.rt5682_priv, ptr %call.i, i32 0, i32 22
  %76 = ptrtoint ptr %lrck to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 48000, ptr %lrck, align 4
  %call203 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rt5682_soc_component_dev, ptr noundef nonnull @rt5682_dai, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.end196.cleanup_crit_edge, %if.then193, %do.end68, %do.end42, %devm_add_action_or_reset.exit, %do.end27, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then14 ], [ %call22, %do.end27 ], [ %call37, %do.end42 ], [ -19, %do.end68 ], [ %75, %if.then193 ], [ %call203, %if.end200 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i306, %devm_add_action_or_reset.exit ], [ %call197, %if.end196.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %jack_detect_work.i = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 7
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work.i) #5
  %jd_check_work.i = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 8
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_check_work.i) #5
  tail call void @rt5682_reset(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682_i2c_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #5
  %jd_check_work = getelementptr inbounds %struct.rt5682_priv, ptr %1, i32 0, i32 8
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_check_work) #5
  tail call void @rt5682_reset(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt5682_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682_i2c_disable_regulators(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.rt5682_priv, ptr %data, i32 0, i32 6
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_calibrate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_apply_patch_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_jack_detect_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682_jd_check_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -196
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 240) #5
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr i8, ptr %work, i32 -100
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %jack_detect_work, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 500) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %irq_work_delay_time = getelementptr inbounds %struct.rt5682_priv, ptr %data, i32 0, i32 29
  %1 = ptrtoint ptr %irq_work_delay_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_work_delay_time, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #5
  %jack_detect_work = getelementptr inbounds %struct.rt5682_priv, ptr %data, i32 0, i32 7
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %jack_detect_work, i32 noundef %call2.i) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt5682_register_dai_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt5682_readable_register(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt5682_volatile_register(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt5682_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_snd_soc_rt5682_i2c__297_343_rt5682_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt5682_i2c__297_343_rt5682_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_rt5682_i2c_driver_exit, !1, !"__exitcall_rt5682_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 345, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 333, i32 11}
!12 = !{ptr @rt5682_i2c_driver, !13, !"rt5682_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 331, i32 26}
!14 = !{ptr @rt5682_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 145, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 148, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt5682_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt5682_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 159, i32 3}
!27 = !{ptr @rt5682_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt5682_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 171, i32 3}
!31 = !{ptr @rt5682_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rt5682_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 178, i32 4}
!35 = !{ptr @rt5682_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rt5682_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 189, i32 3}
!39 = !{ptr @rt5682_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rt5682_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rt5682_i2c_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 194, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 219, i32 4}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rt5682_i2c_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rt5682_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 240, i32 4}
!51 = !{ptr @rt5682_i2c_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rt5682_i2c_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @rt5682_i2c_probe.__key.27, !54, !"__key", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 262, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rt5682_i2c_probe.__key.29, !54, !"__key", i1 false, i1 false}
!57 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rt5682_i2c_probe.__key.31, !59, !"__key", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 264, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rt5682_i2c_probe.__key.33, !59, !"__key", i1 false, i1 false}
!62 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 272, i32 4}
!65 = !{ptr @rt5682_i2c_probe._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rt5682_i2c_probe._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 277, i32 50}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 40, i32 40}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 41, i32 40}
!73 = !{ptr @i2s_default_platform_data, !74, !"i2s_default_platform_data", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 35, i32 42}
!75 = !{ptr @rt5682_regmap, !76, !"rt5682_regmap", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 44, i32 35}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 82, i32 11}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 92, i32 19}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 85, i32 19}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 101, i32 11}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 104, i32 19}
!87 = !{ptr @rt5682_dai, !88, !"rt5682_dai", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 80, i32 34}
!89 = !{ptr @rt5682_of_match, !90, !"rt5682_of_match", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 313, i32 34}
!91 = !{ptr @rt5682_acpi_match, !92, !"rt5682_acpi_match", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 319, i32 36}
!93 = !{ptr @rt5682_i2c_id, !94, !"rt5682_i2c_id", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt5682-i2c.c", i32 325, i32 35}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i8 0, i8 2}
