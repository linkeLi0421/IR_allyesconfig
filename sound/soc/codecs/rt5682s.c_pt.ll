; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5682s.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5682s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt5682s_sel_asrc_clk_src\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5682s_sel_asrc_clk_src\09\09\09\09"
module asm "\09.long\09__crc_rt5682s_sel_asrc_clk_src\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5682s_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5682s_sel_asrc_clk_src\22\09\09\09\09\09"
module asm "__kstrtabns_rt5682s_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.rt5682s_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i8, [2 x ptr] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pll_calc_map = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
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
%struct.rt5682s_priv = type { ptr, %struct.rt5682s_platform_data, ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.delayed_work, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.mutex, [2 x %struct.clk_hw], ptr, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__kstrtab_rt5682s_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5682s_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5682s_sel_asrc_clk_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5682s_sel_asrc_clk_src to i32), ptr @__kstrtab_rt5682s_sel_asrc_clk_src, ptr @__kstrtabns_rt5682s_sel_asrc_clk_src }, section "___ksymtab_gpl+rt5682s_sel_asrc_clk_src", align 4
@__initcall__kmod_snd_soc_rt5682s__309_3225_rt5682s_i2c_driver_init6 = internal global ptr @rt5682s_i2c_driver_init, section ".initcall6.init", align 4
@rt5682s_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5682s_i2c_probe, ptr @rt5682s_i2c_remove, ptr null, ptr @rt5682s_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @rt5682s_of_match, ptr @rt5682s_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5682s_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5682s_i2c_driver_exit = internal global ptr @rt5682s_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [51 x i8] c"snd_soc_rt5682s.description=ASoC RT5682I-VS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [59 x i8] c"snd_soc_rt5682s.author=Derek Fang <derek.fang@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [54 x i8] c"snd_soc_rt5682s.file=sound/soc/codecs/snd-soc-rt5682s\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [31 x i8] c"snd_soc_rt5682s.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt5682s\00", [24 x i8] zeroinitializer }, align 32
@rt5682s_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5682s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5682s_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"RTL5682\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5682s_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5682s\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@i2s_default_platform_data = internal constant { %struct.rt5682s_platform_data, [56 x i8] } { %struct.rt5682s_platform_data { i32 0, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0, i8 0, [2 x ptr] [ptr @.str.42, ptr @.str.43] }, [56 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5682s_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @rt5682s_readable_register, ptr @rt5682s_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15107, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_reg, i32 363, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rt5682s:3055:(&rt5682s_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3058, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt5682s_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/rt5682s.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr = internal global ptr @rt5682s_i2c_probe._entry, section ".printk_index", align 4
@rt5682s_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 3068, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.9 = internal global ptr @rt5682s_i2c_probe._entry.7, section ".printk_index", align 4
@rt5682s_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 3078, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.12 = internal global ptr @rt5682s_i2c_probe._entry.10, section ".printk_index", align 4
@rt5682s_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 3085, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail gpio_request gpio_ldo\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.15 = internal global ptr @rt5682s_i2c_probe._entry.13, section ".printk_index", align 4
@rt5682s_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 3093, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device with ID register %x is not rt5682s\0A\00", [53 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.18 = internal global ptr @rt5682s_i2c_probe._entry.16, section ".printk_index", align 4
@rt5682s_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&rt5682s->calibrate_mutex\00", [38 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rt5682s->sar_mutex\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rt5682s->jdet_mutex\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 3138, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid DMIC_DAT pin\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.27 = internal global ptr @rt5682s_i2c_probe._entry.24, section ".printk_index", align 4
@rt5682s_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 3158, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid DMIC_CLK pin\0A\00", [42 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.30 = internal global ptr @rt5682s_i2c_probe._entry.28, section ".printk_index", align 4
@rt5682s_i2c_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&rt5682s->jack_detect_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&rt5682s->jack_detect_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&rt5682s->jd_check_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&rt5682s->jd_check_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 3170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reguest IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rt5682s_i2c_probe._entry_ptr.41 = internal global ptr @rt5682s_i2c_probe._entry.39, section ".printk_index", align 4
@rt5682s_soc_component_dev = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5682s_snd_controls, i32 5, ptr @rt5682s_dapm_widgets, i32 75, ptr @rt5682s_dapm_routes, i32 109, ptr @rt5682s_probe, ptr @rt5682s_remove, ptr @rt5682s_suspend, ptr @rt5682s_resume, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_set_component_sysclk, ptr @rt5682s_set_component_pll, ptr @rt5682s_set_jack_detect, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5682s_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.248, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_aif1_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.138, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.142, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.249, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_aif2_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.140, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5682-dai-wclk\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5682-dai-bclk\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"realtek,dmic1-data-pin\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"realtek,dmic1-clk-pin\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"realtek,jd-src\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"realtek,dmic-clk-rate-hz\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"realtek,dmic-delay-ms\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"realtek,amic-delay-ms\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"realtek,ldo1-en-gpios\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@rt5682s_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 2927, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Using default DAI clk names: %s, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5682s_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@rt5682s_parse_dt._entry_ptr = internal global ptr @rt5682s_parse_dt._entry, section ".printk_index", align 4
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"realtek,dmic-clk-driving-high\00", [34 x i8] zeroinitializer }, align 32
@rt5682s_reg = internal constant { [363 x %struct.reg_default], [712 x i8] } { [363 x %struct.reg_default] [%struct.reg_default { i32 2, i32 32896 }, %struct.reg_default { i32 3, i32 1 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 32775 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 15, i32 16384 }, %struct.reg_default { i32 16, i32 16448 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 4608 }, %struct.reg_default { i32 20, i32 8202 }, %struct.reg_default { i32 21, i32 1028 }, %struct.reg_default { i32 22, i32 1028 }, %struct.reg_default { i32 23, i32 1444 }, %struct.reg_default { i32 25, i32 65535 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 34, i32 22359 }, %struct.reg_default { i32 35, i32 57 }, %struct.reg_default { i32 36, i32 11 }, %struct.reg_default { i32 38, i32 49348 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 41120 }, %struct.reg_default { i32 43, i32 768 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 60, i32 2240 }, %struct.reg_default { i32 68, i32 6168 }, %struct.reg_default { i32 75, i32 192 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 97, i32 192 }, %struct.reg_default { i32 98, i32 138 }, %struct.reg_default { i32 99, i32 2048 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 48 }, %struct.reg_default { i32 103, i32 12 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 8704 }, %struct.reg_default { i32 110, i32 2064 }, %struct.reg_default { i32 111, i32 58590 }, %struct.reg_default { i32 112, i32 13088 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 2 }, %struct.reg_default { i32 118, i32 1 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 256 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 5 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 3 }, %struct.reg_default { i32 142, i32 96 }, %struct.reg_default { i32 143, i32 19873 }, %struct.reg_default { i32 145, i32 7189 }, %struct.reg_default { i32 146, i32 1061 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 128 }, %struct.reg_default { i32 149, i32 143 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 9 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 163, i32 2 }, %struct.reg_default { i32 164, i32 1 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 185, i32 2 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 192, i32 352 }, %struct.reg_default { i32 193, i32 33440 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 210, i32 13056 }, %struct.reg_default { i32 211, i32 8704 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 217, i32 0 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 0 }, %struct.reg_default { i32 220, i32 192 }, %struct.reg_default { i32 221, i32 8736 }, %struct.reg_default { i32 222, i32 12593 }, %struct.reg_default { i32 223, i32 12593 }, %struct.reg_default { i32 224, i32 12593 }, %struct.reg_default { i32 226, i32 0 }, %struct.reg_default { i32 227, i32 16384 }, %struct.reg_default { i32 228, i32 2720 }, %struct.reg_default { i32 229, i32 12593 }, %struct.reg_default { i32 230, i32 12593 }, %struct.reg_default { i32 231, i32 12593 }, %struct.reg_default { i32 232, i32 12593 }, %struct.reg_default { i32 234, i32 45856 }, %struct.reg_default { i32 235, i32 0 }, %struct.reg_default { i32 240, i32 0 }, %struct.reg_default { i32 246, i32 0 }, %struct.reg_default { i32 250, i32 0 }, %struct.reg_default { i32 251, i32 0 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 0 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 26441 }, %struct.reg_default { i32 256, i32 40960 }, %struct.reg_default { i32 267, i32 102 }, %struct.reg_default { i32 268, i32 26214 }, %struct.reg_default { i32 269, i32 8706 }, %struct.reg_default { i32 270, i32 26214 }, %struct.reg_default { i32 271, i32 43008 }, %struct.reg_default { i32 272, i32 6 }, %struct.reg_default { i32 273, i32 1120 }, %struct.reg_default { i32 274, i32 8192 }, %struct.reg_default { i32 275, i32 512 }, %struct.reg_default { i32 279, i32 32768 }, %struct.reg_default { i32 280, i32 771 }, %struct.reg_default { i32 293, i32 32 }, %struct.reg_default { i32 306, i32 20518 }, %struct.reg_default { i32 310, i32 32768 }, %struct.reg_default { i32 313, i32 5 }, %struct.reg_default { i32 314, i32 12336 }, %struct.reg_default { i32 315, i32 40960 }, %struct.reg_default { i32 316, i32 16656 }, %struct.reg_default { i32 319, i32 0 }, %struct.reg_default { i32 325, i32 34 }, %struct.reg_default { i32 326, i32 0 }, %struct.reg_default { i32 327, i32 0 }, %struct.reg_default { i32 328, i32 0 }, %struct.reg_default { i32 342, i32 34 }, %struct.reg_default { i32 343, i32 771 }, %struct.reg_default { i32 344, i32 8738 }, %struct.reg_default { i32 345, i32 0 }, %struct.reg_default { i32 352, i32 20160 }, %struct.reg_default { i32 353, i32 128 }, %struct.reg_default { i32 354, i32 512 }, %struct.reg_default { i32 355, i32 2048 }, %struct.reg_default { i32 356, i32 0 }, %struct.reg_default { i32 357, i32 0 }, %struct.reg_default { i32 358, i32 0 }, %struct.reg_default { i32 359, i32 15 }, %struct.reg_default { i32 360, i32 15 }, %struct.reg_default { i32 361, i32 1 }, %struct.reg_default { i32 400, i32 16689 }, %struct.reg_default { i32 404, i32 0 }, %struct.reg_default { i32 405, i32 0 }, %struct.reg_default { i32 407, i32 34 }, %struct.reg_default { i32 408, i32 0 }, %struct.reg_default { i32 409, i32 0 }, %struct.reg_default { i32 428, i32 0 }, %struct.reg_default { i32 429, i32 0 }, %struct.reg_default { i32 430, i32 0 }, %struct.reg_default { i32 431, i32 8192 }, %struct.reg_default { i32 432, i32 0 }, %struct.reg_default { i32 433, i32 0 }, %struct.reg_default { i32 434, i32 0 }, %struct.reg_default { i32 435, i32 23 }, %struct.reg_default { i32 436, i32 75 }, %struct.reg_default { i32 437, i32 0 }, %struct.reg_default { i32 438, i32 1000 }, %struct.reg_default { i32 439, i32 0 }, %struct.reg_default { i32 440, i32 0 }, %struct.reg_default { i32 441, i32 1024 }, %struct.reg_default { i32 442, i32 46518 }, %struct.reg_default { i32 443, i32 37156 }, %struct.reg_default { i32 444, i32 18724 }, %struct.reg_default { i32 445, i32 9 }, %struct.reg_default { i32 446, i32 24 }, %struct.reg_default { i32 447, i32 42 }, %struct.reg_default { i32 448, i32 76 }, %struct.reg_default { i32 449, i32 151 }, %struct.reg_default { i32 450, i32 451 }, %struct.reg_default { i32 451, i32 1001 }, %struct.reg_default { i32 452, i32 5001 }, %struct.reg_default { i32 453, i32 50001 }, %struct.reg_default { i32 454, i32 672 }, %struct.reg_default { i32 455, i32 2831 }, %struct.reg_default { i32 456, i32 16431 }, %struct.reg_default { i32 457, i32 1794 }, %struct.reg_default { i32 458, i32 0 }, %struct.reg_default { i32 459, i32 0 }, %struct.reg_default { i32 460, i32 22359 }, %struct.reg_default { i32 461, i32 22359 }, %struct.reg_default { i32 462, i32 22359 }, %struct.reg_default { i32 463, i32 22359 }, %struct.reg_default { i32 464, i32 22359 }, %struct.reg_default { i32 465, i32 22359 }, %struct.reg_default { i32 466, i32 22359 }, %struct.reg_default { i32 467, i32 22359 }, %struct.reg_default { i32 468, i32 22359 }, %struct.reg_default { i32 469, i32 22359 }, %struct.reg_default { i32 470, i32 0 }, %struct.reg_default { i32 471, i32 0 }, %struct.reg_default { i32 472, i32 354 }, %struct.reg_default { i32 473, i32 7 }, %struct.reg_default { i32 474, i32 0 }, %struct.reg_default { i32 475, i32 4 }, %struct.reg_default { i32 476, i32 0 }, %struct.reg_default { i32 478, i32 31744 }, %struct.reg_default { i32 479, i32 32 }, %struct.reg_default { i32 480, i32 1217 }, %struct.reg_default { i32 481, i32 0 }, %struct.reg_default { i32 482, i32 0 }, %struct.reg_default { i32 483, i32 0 }, %struct.reg_default { i32 484, i32 0 }, %struct.reg_default { i32 485, i32 0 }, %struct.reg_default { i32 486, i32 1 }, %struct.reg_default { i32 487, i32 0 }, %struct.reg_default { i32 488, i32 0 }, %struct.reg_default { i32 491, i32 0 }, %struct.reg_default { i32 492, i32 0 }, %struct.reg_default { i32 493, i32 0 }, %struct.reg_default { i32 494, i32 0 }, %struct.reg_default { i32 495, i32 0 }, %struct.reg_default { i32 496, i32 0 }, %struct.reg_default { i32 497, i32 0 }, %struct.reg_default { i32 498, i32 0 }, %struct.reg_default { i32 499, i32 0 }, %struct.reg_default { i32 500, i32 0 }, %struct.reg_default { i32 528, i32 25239 }, %struct.reg_default { i32 529, i32 40964 }, %struct.reg_default { i32 530, i32 869 }, %struct.reg_default { i32 531, i32 63487 }, %struct.reg_default { i32 532, i32 62028 }, %struct.reg_default { i32 533, i32 258 }, %struct.reg_default { i32 534, i32 163 }, %struct.reg_default { i32 535, i32 72 }, %struct.reg_default { i32 536, i32 41664 }, %struct.reg_default { i32 537, i32 1024 }, %struct.reg_default { i32 538, i32 200 }, %struct.reg_default { i32 539, i32 192 }, %struct.reg_default { i32 540, i32 0 }, %struct.reg_default { i32 541, i32 588 }, %struct.reg_default { i32 762, i32 0 }, %struct.reg_default { i32 763, i32 0 }, %struct.reg_default { i32 764, i32 0 }, %struct.reg_default { i32 1022, i32 0 }, %struct.reg_default { i32 1023, i32 0 }, %struct.reg_default { i32 1280, i32 0 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1552, i32 26214 }, %struct.reg_default { i32 1553, i32 43434 }, %struct.reg_default { i32 1568, i32 26214 }, %struct.reg_default { i32 1569, i32 43434 }, %struct.reg_default { i32 1584, i32 26214 }, %struct.reg_default { i32 1585, i32 43434 }, %struct.reg_default { i32 1600, i32 26214 }, %struct.reg_default { i32 1601, i32 43434 }, %struct.reg_default { i32 2042, i32 0 }, %struct.reg_default { i32 2298, i32 0 }, %struct.reg_default { i32 2299, i32 0 }, %struct.reg_default { i32 3328, i32 0 }, %struct.reg_default { i32 4352, i32 0 }, %struct.reg_default { i32 4353, i32 0 }, %struct.reg_default { i32 4354, i32 0 }, %struct.reg_default { i32 4355, i32 0 }, %struct.reg_default { i32 4356, i32 0 }, %struct.reg_default { i32 4357, i32 0 }, %struct.reg_default { i32 4358, i32 0 }, %struct.reg_default { i32 4359, i32 0 }, %struct.reg_default { i32 4360, i32 0 }, %struct.reg_default { i32 4361, i32 0 }, %struct.reg_default { i32 4362, i32 0 }, %struct.reg_default { i32 4363, i32 0 }, %struct.reg_default { i32 4364, i32 0 }, %struct.reg_default { i32 4369, i32 0 }, %struct.reg_default { i32 4370, i32 0 }, %struct.reg_default { i32 4371, i32 0 }, %struct.reg_default { i32 4372, i32 0 }, %struct.reg_default { i32 4373, i32 0 }, %struct.reg_default { i32 4374, i32 0 }, %struct.reg_default { i32 4375, i32 0 }, %struct.reg_default { i32 4376, i32 0 }, %struct.reg_default { i32 4377, i32 0 }, %struct.reg_default { i32 4378, i32 0 }, %struct.reg_default { i32 4379, i32 0 }, %struct.reg_default { i32 4380, i32 0 }, %struct.reg_default { i32 5121, i32 1028 }, %struct.reg_default { i32 5122, i32 7 }, %struct.reg_default { i32 5123, i32 869 }, %struct.reg_default { i32 5124, i32 528 }, %struct.reg_default { i32 5125, i32 869 }, %struct.reg_default { i32 5126, i32 528 }, %struct.reg_default { i32 5127, i32 0 }, %struct.reg_default { i32 5128, i32 0 }, %struct.reg_default { i32 5129, i32 0 }, %struct.reg_default { i32 5130, i32 0 }, %struct.reg_default { i32 5131, i32 0 }, %struct.reg_default { i32 5132, i32 0 }, %struct.reg_default { i32 5133, i32 0 }, %struct.reg_default { i32 5134, i32 0 }, %struct.reg_default { i32 5135, i32 0 }, %struct.reg_default { i32 5136, i32 0 }, %struct.reg_default { i32 5137, i32 0 }, %struct.reg_default { i32 6145, i32 4 }, %struct.reg_default { i32 6146, i32 0 }, %struct.reg_default { i32 6147, i32 0 }, %struct.reg_default { i32 6148, i32 0 }, %struct.reg_default { i32 6149, i32 255 }, %struct.reg_default { i32 11264, i32 0 }, %struct.reg_default { i32 13312, i32 512 }, %struct.reg_default { i32 13316, i32 0 }, %struct.reg_default { i32 13317, i32 0 }, %struct.reg_default { i32 13318, i32 0 }, %struct.reg_default { i32 13319, i32 0 }, %struct.reg_default { i32 13320, i32 0 }, %struct.reg_default { i32 13321, i32 0 }, %struct.reg_default { i32 13322, i32 0 }, %struct.reg_default { i32 13323, i32 0 }, %struct.reg_default { i32 13324, i32 0 }, %struct.reg_default { i32 13325, i32 0 }, %struct.reg_default { i32 13326, i32 0 }, %struct.reg_default { i32 13327, i32 0 }, %struct.reg_default { i32 13328, i32 0 }, %struct.reg_default { i32 13329, i32 0 }, %struct.reg_default { i32 13330, i32 0 }, %struct.reg_default { i32 13331, i32 0 }, %struct.reg_default { i32 13332, i32 0 }, %struct.reg_default { i32 13333, i32 0 }, %struct.reg_default { i32 13348, i32 0 }, %struct.reg_default { i32 13349, i32 0 }, %struct.reg_default { i32 13350, i32 0 }, %struct.reg_default { i32 13351, i32 0 }, %struct.reg_default { i32 13352, i32 0 }, %struct.reg_default { i32 13353, i32 0 }, %struct.reg_default { i32 13354, i32 0 }, %struct.reg_default { i32 13355, i32 0 }, %struct.reg_default { i32 13356, i32 0 }, %struct.reg_default { i32 13357, i32 0 }, %struct.reg_default { i32 13358, i32 0 }, %struct.reg_default { i32 13359, i32 0 }, %struct.reg_default { i32 13360, i32 0 }, %struct.reg_default { i32 13361, i32 0 }, %struct.reg_default { i32 13362, i32 0 }, %struct.reg_default { i32 13363, i32 0 }, %struct.reg_default { i32 13364, i32 0 }, %struct.reg_default { i32 13365, i32 0 }, %struct.reg_default { i32 13376, i32 25369 }, %struct.reg_default { i32 13377, i32 14193 }, %struct.reg_default { i32 13568, i32 2 }, %struct.reg_default { i32 13569, i32 22312 }, %struct.reg_default { i32 15104, i32 12304 }, %struct.reg_default { i32 15105, i32 13056 }, %struct.reg_default { i32 15106, i32 8704 }, %struct.reg_default { i32 15107, i32 256 }], [712 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@patch_list = internal constant { [12 x %struct.reg_sequence], [48 x i8] } { [12 x %struct.reg_sequence] [%struct.reg_sequence { i32 8, i32 7, i32 0 }, %struct.reg_sequence { i32 306, i32 0, i32 0 }, %struct.reg_sequence { i32 314, i32 8224, i32 0 }, %struct.reg_sequence { i32 280, i32 257, i32 0 }, %struct.reg_sequence { i32 279, i32 32960, i32 0 }, %struct.reg_sequence { i32 486, i32 2, i32 0 }, %struct.reg_sequence { i32 142, i32 0, i32 0 }, %struct.reg_sequence { i32 145, i32 15381, i32 0 }, %struct.reg_sequence { i32 25, i32 65278, i32 0 }, %struct.reg_sequence { i32 529, i32 44032, i32 0 }, %struct.reg_sequence { i32 530, i32 588, i32 0 }, %struct.reg_sequence { i32 21, i32 2052, i32 0 }], [48 x i8] zeroinitializer }, align 32
@rt5682s_apply_patch_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 71, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt5682s_apply_patch_list\00", [39 x i8] zeroinitializer }, align 32
@rt5682s_apply_patch_list._entry_ptr = internal global ptr @rt5682s_apply_patch_list._entry, section ".printk_index", align 4
@rt5682s_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 2966, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HP Calibration Failure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt5682s_calibrate\00", [46 x i8] zeroinitializer }, align 32
@rt5682s_calibrate._entry_ptr = internal global ptr @rt5682s_calibrate._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5682s_jack_detect_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 882, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected button code 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt5682s_jack_detect_handler\00", [36 x i8] zeroinitializer }, align 32
@rt5682s_jack_detect_handler._entry_ptr = internal global ptr @rt5682s_jack_detect_handler._entry, section ".printk_index", align 4
@rt5682s_headset_detect.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_rt5682s\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt5682s_headset_detect\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s, val=%d, count=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAR\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vref2\00", [26 x i8] zeroinitializer }, align 32
@rt5682s_headset_detect.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.64, ptr @.str.4, ptr @.str.69, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jack_type = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5682s_sar_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid SAR Power mode: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt5682s_sar_power_mode\00", [41 x i8] zeroinitializer }, align 32
@rt5682s_sar_power_mode._entry_ptr = internal global ptr @rt5682s_sar_power_mode._entry, section ".printk_index", align 4
@rt5682s_button_detect.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5682s_button_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s btn_type=%x\0A\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5682s_snd_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @cbj_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }], [48 x i8] zeroinitializer }, align 32
@rt5682s_dapm_routes = internal constant { [109 x %struct.snd_soc_dapm_route], [1436 x i8] } { [109 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.90, ptr @is_sys_clk_from_plla, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pllb, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.90, ptr @is_sys_clk_from_plla, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pllb, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.95, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.94, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.166, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.166, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.171, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.170, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.173, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.170, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.171, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.170, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.173, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.170, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.182, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.184, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.182, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.184, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.191, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.193, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.192, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.194, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.191, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.192, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.193, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.194, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.191, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.192, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.193, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.194, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.191, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.192, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.193, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.194, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.178, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.179, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.180, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.181, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.196, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.191, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.192, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.193, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.194, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.197, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.198, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.200, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.198, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.200, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.208, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.210, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.210, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.208, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.206, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.205, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.206, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.205, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1436 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9562, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 25, i32 25, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CBJ Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@cbj_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 35, i32 35, i32 60, i32 60, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STO1 ADC Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STO1 ADC Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 28, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"STO1 ADC Boost Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@adc_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 31, i32 31, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO MB1\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO MB2\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LDO\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLLA_LDO\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLLB_LDO\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PLLA_BIAS\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PLLB_BIAS\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLLA\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLLB\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLLA_RST\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLLB_RST\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC STO1 ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC STO1 ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD ASRC\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DA ASRC\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L1\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R1\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC1 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BST1 CBJ\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RECMIX1L\00", [23 x i8] zeroinitializer }, align 32
@rt5682s_rec1_l_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RECMIX1R\00", [23 x i8] zeroinitializer }, align 32
@rt5682s_rec1_r_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECMIX1L Power\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECMIX1R Power\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC1 L\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC1 R\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC1 L Power\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC1 R Power\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC1 clock\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc1l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.169, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_sto1_adc1l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc1r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.169, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_sto1_adc1r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc2l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_sto1_adc2l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc2r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_sto1_adc2r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo1 ADC L Mux\00", [46 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adcl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_sto1_adcl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo1 ADC R Mux\00", [46 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adcr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_sto1_adcr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IF1_ADC Mux\00", [20 x i8] zeroinitializer }, align 32
@rt5682s_if1_adc_slot_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_if1_adc_slot_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Stereo1 Filter\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo1 ADC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 L\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 R\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 01 ADC Swap Mux\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_if1_01_adc_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_if1_01_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 23 ADC Swap Mux\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_if1_23_adc_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_if1_23_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 45 ADC Swap Mux\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_if1_45_adc_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_if1_45_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 67 ADC Swap Mux\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_if1_67_adc_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_if1_67_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IF2 ADC Swap Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5682s_if2_adc_swap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_if2_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADCDAT Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5682s_adcdat_pin_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_adcdat_pin_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXL\00", [22 x i8] zeroinitializer }, align 32
@rt5682s_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXR\00", [22 x i8] zeroinitializer }, align 32
@rt5682s_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Source\00", [18 x i8] zeroinitializer }, align 32
@rt5682s_alg_dac_l1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_alg_dac_l1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Source\00", [18 x i8] zeroinitializer }, align 32
@rt5682s_alg_dac_r1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5682s_alg_dac_r1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Stereo1 Filter\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 DAC MIXL\00", [47 x i8] zeroinitializer }, align 32
@rt5682s_sto1_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 DAC MIXR\00", [47 x i8] zeroinitializer }, align 32
@rt5682s_sto1_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.212 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Amp\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLKDET SYS\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CLKDET PLL1\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MCLK0 DET PWR\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@rt5682s_dapm_widgets = internal constant { [75 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [3364 x i8] } { [75 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_filter_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @set_dmic_power, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_rec1_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_rec1_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 315, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_sto1_adc1l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_sto1_adc1r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_sto1_adc2l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_sto1_adc2r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_sto1_adcl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_sto1_adcr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_if1_adc_slot_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_filter_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5682s_stereo1_adc_mixl_event, i32 2, ptr @rt5682s_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 28, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5682s_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_i2s_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_i2s_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_if1_01_adc_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_if1_23_adc_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_if1_45_adc_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_if1_67_adc_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_if2_adc_swap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_adcdat_pin_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.137, ptr @.str.138, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 112, i8 15, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.139, ptr @.str.140, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 113, i8 14, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.141, ptr @.str.142, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5682s_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5682s_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_alg_dac_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5682s_alg_dac_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_filter_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5682s_sto1_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5682s_sto1_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 10, ptr @rt5682s_hp_amp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 107, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 107, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @sar_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [3364 x i8] zeroinitializer }, align 32
@set_filter_clk.div_f = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48], [52 x i8] zeroinitializer }, align 32
@rt5682s_div_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.4, i32 1084, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sysclk rate %d is too low\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt5682s_div_sel\00", [16 x i8] zeroinitializer }, align 32
@rt5682s_div_sel._entry_ptr = internal global ptr @rt5682s_div_sel._entry, section ".printk_index", align 4
@rt5682s_div_sel.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.160, ptr @.str.4, ptr @.str.161, i8 1, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"div[%d]=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@rt5682s_div_sel.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.160, ptr @.str.4, ptr @.str.162, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't find div for sysclk %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rt5682s_div_sel._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.160, ptr @.str.4, i32 1101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sysclk rate %d is too high\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5682s_div_sel._entry_ptr.165 = internal global ptr @rt5682s_div_sel._entry.163, section ".printk_index", align 4
@set_dmic_clk.div = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128], [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CBJ Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Stereo1 ADC1L Source\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc1l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 13, i8 13, i32 2, i32 1, ptr @rt5682s_sto1_adc1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.170, ptr @.str.171], [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC MIX\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc1r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 5, i8 5, i32 2, i32 1, ptr @rt5682s_sto1_adc1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Stereo1 ADC2L Source\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc2l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 12, i8 12, i32 2, i32 1, ptr @rt5682s_sto1_adc2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.170, ptr @.str.173], [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Stereo1 ADC2R Source\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc2r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 4, i8 4, i32 2, i32 1, ptr @rt5682s_sto1_adc2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo1 ADCL Source\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adcl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 10, i8 10, i32 2, i32 1, ptr @rt5682s_sto1_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adc_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.111, ptr @.str.112], [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo1 ADCR Source\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_sto1_adcr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 2, i8 2, i32 2, i32 1, ptr @rt5682s_sto1_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IF1 ADC Slot location\00", [42 x i8] zeroinitializer }, align 32
@rt5682s_if1_adc_slot_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 121, i8 4, i8 4, i32 4, i32 112, ptr @rt5682s_if1_adc_slot_src, ptr @rt5682s_if1_adc_slot_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_if1_adc_slot_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181], [16 x i8] zeroinitializer }, align 32
@rt5682s_if1_adc_slot_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 4, i32 6], [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 0\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 2\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 4\00", [25 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 6\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@set_i2s_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.4, i32 1257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get pre_div failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_i2s_clk\00", [20 x i8] zeroinitializer }, align 32
@set_i2s_clk._entry_ptr = internal global ptr @set_i2s_clk._entry, section ".printk_index", align 4
@set_i2s_clk.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.189, ptr @.str.4, ptr @.str.190, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lrck is %dHz and pre_div is %d for iis %d master\0A\00", [46 x i8] zeroinitializer }, align 32
@rt5682s_if1_01_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 14, i8 14, i32 4, i32 3, ptr @rt5682s_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_data_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194], [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/R\00", [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/L\00", [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/L\00", [28 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/R\00", [28 x i8] zeroinitializer }, align 32
@rt5682s_if1_23_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 12, i8 12, i32 4, i32 3, ptr @rt5682s_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_if1_45_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 10, i8 10, i32 4, i32 3, ptr @rt5682s_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_if1_67_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 8, i8 8, i32 4, i32 3, ptr @rt5682s_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_if2_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 0, i8 0, i32 4, i32 3, ptr @rt5682s_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADCDAT\00", [25 x i8] zeroinitializer }, align 32
@rt5682s_adcdat_pin_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 192, i8 8, i8 8, i32 2, i32 768, ptr @rt5682s_adcdat_pin_select, ptr @rt5682s_adcdat_pin_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_adcdat_pin_select = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.196, ptr @.str.197], [24 x i8] zeroinitializer }, align 32
@rt5682s_adcdat_pin_values = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCDAT1\00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADCDAT2\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo ADC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analog DAC L1 Source\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_alg_dac_l1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 4, i8 4, i32 2, i32 1, ptr @rt5682s_alg_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5682s_alg_dac1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.205, ptr @.str.206], [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo1 DAC Mixer\00", [46 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analog DAC R1 Source\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_alg_dac_r1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 0, i8 0, i32 2, i32 1, ptr @rt5682s_alg_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@rt5682s_register_dai_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.4, i32 2747, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid clock index\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt5682s_register_dai_clks\00", [38 x i8] zeroinitializer }, align 32
@rt5682s_register_dai_clks._entry_ptr = internal global ptr @rt5682s_register_dai_clks._entry, section ".printk_index", align 4
@rt5682s_dai_clk_ops = internal constant { [2 x %struct.clk_ops], [56 x i8] } { [2 x %struct.clk_ops] [%struct.clk_ops { ptr @rt5682s_wclk_prepare, ptr @rt5682s_wclk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_wclk_recalc_rate, ptr @rt5682s_wclk_round_rate, ptr null, ptr null, ptr null, ptr @rt5682s_wclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_bclk_recalc_rate, ptr @rt5682s_bclk_round_rate, ptr null, ptr null, ptr null, ptr @rt5682s_bclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@rt5682s_register_dai_clks._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.216, ptr @.str.4, i32 2758, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rt5682s_register_dai_clks._entry_ptr.219 = internal global ptr @rt5682s_register_dai_clks._entry.217, section ".printk_index", align 4
@rt5682s_clk_check.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.220, ptr @.str.4, ptr @.str.221, i8 2, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt5682s_clk_check\00", [46 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dai clk fmt not set correctly\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5682s_wclk_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.4, i32 2535, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: clk %s only support %d or %d Hz output\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt5682s_wclk_recalc_rate\00", [39 x i8] zeroinitializer }, align 32
@rt5682s_wclk_recalc_rate._entry_ptr = internal global ptr @rt5682s_wclk_recalc_rate._entry, section ".printk_index", align 4
@rt5682s_wclk_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.224, ptr @.str.4, i32 2558, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5682s_wclk_round_rate\00", [40 x i8] zeroinitializer }, align 32
@rt5682s_wclk_round_rate._entry_ptr = internal global ptr @rt5682s_wclk_round_rate._entry, section ".printk_index", align 4
@rt5682s_wclk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.4, i32 2589, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Parent mclk of wclk not acquired in driver. Please ensure mclk was provided as %d Hz.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5682s_wclk_set_rate\00", [42 x i8] zeroinitializer }, align 32
@rt5682s_wclk_set_rate._entry_ptr = internal global ptr @rt5682s_wclk_set_rate._entry, section ".printk_index", align 4
@rt5682s_wclk_set_rate._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.4, i32 2593, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clk %s only support %d Hz input\0A\00", [63 x i8] zeroinitializer }, align 32
@rt5682s_wclk_set_rate._entry_ptr.229 = internal global ptr @rt5682s_wclk_set_rate._entry.227, section ".printk_index", align 4
@rt5682s_bclk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.4, i32 2692, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dai %d not found in component\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5682s_bclk_set_rate\00", [42 x i8] zeroinitializer }, align 32
@rt5682s_bclk_set_rate._entry_ptr = internal global ptr @rt5682s_bclk_set_rate._entry, section ".printk_index", align 4
@rt5682s_set_bclk1_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.4, i32 2391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid bclk1 ratio %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5682s_set_bclk1_ratio\00", [40 x i8] zeroinitializer }, align 32
@rt5682s_set_bclk1_ratio._entry_ptr = internal global ptr @rt5682s_set_bclk1_ratio._entry, section ".printk_index", align 4
@rt5682s_set_component_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.4, i32 2174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rt5682s_set_component_sysclk\00", [35 x i8] zeroinitializer }, align 32
@rt5682s_set_component_sysclk._entry_ptr = internal global ptr @rt5682s_set_component_sysclk._entry, section ".printk_index", align 4
@rt5682s_set_component_sysclk.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.235, ptr @.str.4, ptr @.str.236, i8 2, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.236 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5682s_set_component_pll.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.237, ptr @.str.4, ptr @.str.238, i8 2, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt5682s_set_component_pll\00", [38 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5682s_set_component_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.4, i32 2298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL Source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5682s_set_component_pll._entry_ptr = internal global ptr @rt5682s_set_component_pll._entry, section ".printk_index", align 4
@rt5682s_set_component_pll.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.237, ptr @.str.4, ptr @.str.240, i8 2, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Supported freq conversion for PLL%d:(%d->%d): %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rt5682s_set_component_pll._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.237, ptr @.str.4, i32 2314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unsupported freq conversion for PLL%d:(%d->%d): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_set_component_pll._entry_ptr.243 = internal global ptr @rt5682s_set_component_pll._entry.241, section ".printk_index", align 4
@rt5682s_set_component_pll.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.237, ptr @.str.4, ptr @.str.244, i8 2, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.244 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PLLA: fin=%d fout=%d m_bp=%d k_bp=%d m=%d n=%d k=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5682s_set_component_pll.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.237, ptr @.str.4, ptr @.str.245, i8 2, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.245 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"PLLB: fin=%d fout=%d m_bp=%d k_bp=%d m=%d n=%d k=%d byp_ps=%d sel_ps=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@plla_table = internal constant { [21 x %struct.pll_calc_map], [104 x i8] } { [21 x %struct.pll_calc_map] [%struct.pll_calc_map { i32 2048000, i32 24576000, i32 0, i32 46, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 256000, i32 24576000, i32 0, i32 382, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 512000, i32 24576000, i32 0, i32 190, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 4096000, i32 24576000, i32 0, i32 22, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 1024000, i32 24576000, i32 0, i32 94, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 11289600, i32 22579200, i32 1, i32 22, i32 2, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 1411200, i32 22579200, i32 0, i32 62, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 2822400, i32 22579200, i32 0, i32 30, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 12288000, i32 24576000, i32 1, i32 22, i32 2, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 1536000, i32 24576000, i32 0, i32 62, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 3072000, i32 24576000, i32 0, i32 30, i32 2, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 24576000, i32 49152000, i32 4, i32 22, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 3072000, i32 49152000, i32 0, i32 30, i32 0, i8 1, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 6144000, i32 49152000, i32 0, i32 30, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 49152000, i32 98304000, i32 10, i32 22, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.pll_calc_map { i32 6144000, i32 98304000, i32 0, i32 30, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.pll_calc_map { i32 12288000, i32 98304000, i32 1, i32 22, i32 0, i8 0, i8 1, i8 0, i8 0 }, %struct.pll_calc_map { i32 48000000, i32 3840000, i32 10, i32 22, i32 23, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 24000000, i32 3840000, i32 4, i32 22, i32 23, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 19200000, i32 3840000, i32 3, i32 23, i32 23, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 38400000, i32 3840000, i32 8, i32 23, i32 23, i8 0, i8 0, i8 0, i8 0 }], [104 x i8] zeroinitializer }, align 32
@pllb_table = internal constant { [9 x %struct.pll_calc_map], [40 x i8] } { [9 x %struct.pll_calc_map] [%struct.pll_calc_map { i32 48000000, i32 24576000, i32 8, i32 6, i32 3, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 48000000, i32 22579200, i32 23, i32 12, i32 3, i8 0, i8 0, i8 0, i8 1 }, %struct.pll_calc_map { i32 24000000, i32 24576000, i32 3, i32 6, i32 3, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 24000000, i32 22579200, i32 23, i32 26, i32 3, i8 0, i8 0, i8 0, i8 1 }, %struct.pll_calc_map { i32 19200000, i32 24576000, i32 2, i32 6, i32 3, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 19200000, i32 22579200, i32 3, i32 5, i32 3, i8 0, i8 0, i8 0, i8 1 }, %struct.pll_calc_map { i32 38400000, i32 24576000, i32 6, i32 6, i32 3, i8 0, i8 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 38400000, i32 22579200, i32 8, i32 5, i32 3, i8 0, i8 0, i8 0, i8 1 }, %struct.pll_calc_map { i32 3840000, i32 49152000, i32 0, i32 6, i32 0, i8 1, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@rt5682s_set_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.4, i32 1001, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wrong JD source\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5682s_set_jack_detect\00", [40 x i8] zeroinitializer }, align 32
@rt5682s_set_jack_detect._entry_ptr = internal global ptr @rt5682s_set_jack_detect._entry, section ".printk_index", align 4
@.str.248 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt5682s-aif1\00", [19 x i8] zeroinitializer }, align 32
@rt5682s_aif1_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @rt5682s_set_bclk1_ratio, ptr @rt5682s_set_dai_fmt, ptr null, ptr @rt5682s_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt5682s-aif2\00", [19 x i8] zeroinitializer }, align 32
@rt5682s_aif2_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @rt5682s_set_bclk2_ratio, ptr @rt5682s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5682s_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt5682s_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.4, i32 2145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid dai->id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt5682s_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@rt5682s_set_dai_fmt._entry_ptr = internal global ptr @rt5682s_set_dai_fmt._entry, section ".printk_index", align 4
@rt5682s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.4, i32 2011, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt5682s_hw_params\00", [46 x i8] zeroinitializer }, align 32
@rt5682s_hw_params._entry_ptr = internal global ptr @rt5682s_hw_params._entry, section ".printk_index", align 4
@rt5682s_hw_params._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.253, ptr @.str.4, i32 2060, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rt5682s_hw_params._entry_ptr.255 = internal global ptr @rt5682s_hw_params._entry.254, section ".printk_index", align 4
@rt5682s_set_bclk2_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.4, i32 2415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid bclk2 ratio %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5682s_set_bclk2_ratio\00", [40 x i8] zeroinitializer }, align 32
@rt5682s_set_bclk2_ratio._entry_ptr = internal global ptr @rt5682s_set_bclk2_ratio._entry, section ".printk_index", align 4
@switch.table.rt5682s_set_component_sysclk = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.rt5682s_set_tdm_slot = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 4352, i32 4352, i32 4352, i32 8704, i32 4352, i32 13056], [36 x i8] zeroinitializer }, align 32
@switch.table.rt5682s_hw_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 48], [36 x i8] zeroinitializer }, align 32
@switch.table.rt5682s_hw_params.258 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 32, i32 48, i32 0, i32 48], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.259 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.260 = internal global [15 x i64] [i64 13, i64 16, i64 0, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.261 = internal global [368 x i64] [i64 366, i64 32, i64 0, i64 2, i64 3, i64 5, i64 6, i64 8, i64 11, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 25, i64 28, i64 31, i64 34, i64 35, i64 36, i64 38, i64 41, i64 42, i64 43, i64 48, i64 60, i64 68, i64 75, i64 76, i64 77, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 115, i64 116, i64 117, i64 118, i64 121, i64 122, i64 123, i64 124, i64 126, i64 127, i64 128, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 140, i64 142, i64 143, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 160, i64 163, i64 164, i64 182, i64 183, i64 184, i64 185, i64 190, i64 192, i64 193, i64 194, i64 208, i64 210, i64 211, i64 212, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 234, i64 235, i64 240, i64 246, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255, i64 256, i64 267, i64 268, i64 269, i64 270, i64 271, i64 272, i64 273, i64 274, i64 275, i64 279, i64 280, i64 293, i64 306, i64 310, i64 313, i64 314, i64 315, i64 316, i64 319, i64 322, i64 325, i64 326, i64 327, i64 328, i64 342, i64 343, i64 344, i64 345, i64 352, i64 353, i64 354, i64 355, i64 356, i64 357, i64 358, i64 359, i64 360, i64 361, i64 400, i64 404, i64 405, i64 407, i64 408, i64 409, i64 428, i64 429, i64 430, i64 431, i64 432, i64 433, i64 434, i64 435, i64 436, i64 437, i64 438, i64 439, i64 440, i64 441, i64 442, i64 443, i64 444, i64 445, i64 446, i64 447, i64 448, i64 449, i64 450, i64 451, i64 452, i64 453, i64 454, i64 455, i64 456, i64 457, i64 458, i64 459, i64 460, i64 461, i64 462, i64 463, i64 464, i64 465, i64 466, i64 467, i64 468, i64 469, i64 470, i64 471, i64 472, i64 473, i64 474, i64 475, i64 476, i64 478, i64 479, i64 480, i64 481, i64 482, i64 483, i64 484, i64 485, i64 486, i64 487, i64 488, i64 490, i64 491, i64 492, i64 493, i64 494, i64 495, i64 496, i64 497, i64 498, i64 499, i64 500, i64 528, i64 529, i64 530, i64 531, i64 532, i64 533, i64 534, i64 535, i64 536, i64 537, i64 538, i64 539, i64 540, i64 541, i64 762, i64 763, i64 764, i64 1022, i64 1023, i64 1280, i64 1536, i64 1552, i64 1553, i64 1568, i64 1569, i64 1584, i64 1585, i64 1600, i64 1601, i64 2042, i64 2298, i64 2299, i64 3328, i64 4352, i64 4353, i64 4354, i64 4355, i64 4356, i64 4357, i64 4358, i64 4359, i64 4360, i64 4361, i64 4362, i64 4363, i64 4364, i64 4369, i64 4370, i64 4371, i64 4372, i64 4373, i64 4374, i64 4375, i64 4376, i64 4377, i64 4378, i64 4379, i64 4380, i64 5121, i64 5122, i64 5123, i64 5124, i64 5125, i64 5126, i64 5127, i64 5128, i64 5129, i64 5130, i64 5131, i64 5132, i64 5133, i64 5134, i64 5135, i64 5136, i64 5137, i64 6145, i64 6146, i64 6147, i64 6148, i64 6149, i64 11264, i64 13312, i64 13316, i64 13317, i64 13318, i64 13319, i64 13320, i64 13321, i64 13322, i64 13323, i64 13324, i64 13325, i64 13326, i64 13327, i64 13328, i64 13329, i64 13330, i64 13331, i64 13332, i64 13333, i64 13348, i64 13349, i64 13350, i64 13351, i64 13352, i64 13353, i64 13354, i64 13355, i64 13356, i64 13357, i64 13358, i64 13359, i64 13360, i64 13361, i64 13362, i64 13363, i64 13364, i64 13365, i64 13376, i64 13377, i64 13568, i64 13569, i64 15104, i64 15105, i64 15106, i64 15107]
@__sancov_gen_cov_switch_values.262 = internal global [81 x i64] [i64 79, i64 32, i64 0, i64 17, i64 118, i64 164, i64 190, i64 194, i64 219, i64 226, i64 240, i64 253, i64 254, i64 255, i64 352, i64 356, i64 357, i64 358, i64 400, i64 428, i64 429, i64 430, i64 431, i64 440, i64 441, i64 470, i64 471, i64 472, i64 473, i64 478, i64 487, i64 490, i64 491, i64 492, i64 493, i64 494, i64 495, i64 496, i64 497, i64 498, i64 499, i64 500, i64 529, i64 530, i64 531, i64 532, i64 537, i64 538, i64 1022, i64 1023, i64 2042, i64 3328, i64 4352, i64 5131, i64 5132, i64 5133, i64 5134, i64 5135, i64 5136, i64 5137, i64 11264, i64 13312, i64 13348, i64 13349, i64 13350, i64 13351, i64 13352, i64 13353, i64 13354, i64 13355, i64 13356, i64 13357, i64 13358, i64 13359, i64 13360, i64 13361, i64 13362, i64 13363, i64 13364, i64 13365, i64 13568]
@__sancov_gen_cov_switch_values.263 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.266 = internal global [7 x i64] [i64 5, i64 32, i64 3840000, i64 19200000, i64 24000000, i64 38400000, i64 48000000]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.273 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 12]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.282 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.284 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.285 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.286 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.287 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.288 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.289 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@___asan_gen_.290 = private unnamed_addr constant [19 x i8] c"rt5682s_i2c_driver\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3213, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3215, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"rt5682s_of_match\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3195, i32 34 }
@___asan_gen_.299 = private unnamed_addr constant [19 x i8] c"rt5682s_acpi_match\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3201, i32 36 }
@___asan_gen_.302 = private unnamed_addr constant [15 x i8] c"rt5682s_i2c_id\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3207, i32 35 }
@___asan_gen_.305 = private unnamed_addr constant [26 x i8] c"i2s_default_platform_data\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 36, i32 43 }
@___asan_gen_.308 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [15 x i8] c"rt5682s_regmap\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2980, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3055, i32 20 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3058, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3068, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3078, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3085, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3093, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3104, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3105, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3106, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3138, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3158, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3162, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3163, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3170, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant [26 x i8] c"rt5682s_soc_component_dev\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2884, i32 46 }
@___asan_gen_.425 = private unnamed_addr constant [12 x i8] c"rt5682s_dai\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2993, i32 34 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 40, i32 41 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 41, i32 41 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2906, i32 32 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2908, i32 32 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2910, i32 32 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2912, i32 32 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2914, i32 32 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2916, i32 32 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2920, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2922, i32 45 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2925, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2930, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [12 x i8] c"rt5682s_reg\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 74, i32 33 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 45, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 46, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [11 x i8] c"patch_list\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 49, i32 34 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 71, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2966, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 881, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 771, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 782, i32 55 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 800, i32 54 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 803, i32 54 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 816, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 694, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 634, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [21 x i8] c"rt5682s_snd_controls\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1013, i32 38 }
@___asan_gen_.548 = private unnamed_addr constant [20 x i8] c"rt5682s_dapm_routes\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1794, i32 40 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1015, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1008, i32 14 }
@___asan_gen_.557 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1019, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [12 x i8] c"cbj_bst_tlv\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1011, i32 14 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1023, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1025, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1009, i32 14 }
@___asan_gen_.575 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1029, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [12 x i8] c"adc_bst_tlv\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1010, i32 14 }
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1611, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1613, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1615, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1621, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1623, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1625, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1627, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1629, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1631, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1633, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1635, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1639, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1641, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1643, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1645, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1647, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1651, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1653, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1657, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1658, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1660, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1662, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1664, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1668, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1671, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [19 x i8] c"rt5682s_rec1_l_mix\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1497, i32 38 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1673, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [19 x i8] c"rt5682s_rec1_r_mix\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1502, i32 38 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1675, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1677, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1681, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1682, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1684, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1686, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1688, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1692, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adc1l_mux\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1516, i32 38 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1694, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adc1r_mux\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1522, i32 38 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1696, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adc2l_mux\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1552, i32 38 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1698, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adc2r_mux\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1558, i32 38 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1700, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [22 x i8] c"rt5682s_sto1_adcl_mux\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1534, i32 38 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1702, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [22 x i8] c"rt5682s_sto1_adcr_mux\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1540, i32 38 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1704, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [25 x i8] c"rt5682s_if1_adc_slot_mux\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1574, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1708, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1710, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adc_l_mix\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1454, i32 38 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1714, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adc_r_mix\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1461, i32 38 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1719, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1722, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1724, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1726, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1727, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1730, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [28 x i8] c"rt5682s_if1_01_adc_swap_mux\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1441, i32 38 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1732, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [28 x i8] c"rt5682s_if1_23_adc_swap_mux\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1444, i32 38 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1734, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [28 x i8] c"rt5682s_if1_45_adc_swap_mux\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1447, i32 38 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1736, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [28 x i8] c"rt5682s_if1_67_adc_swap_mux\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1450, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1738, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [25 x i8] c"rt5682s_if2_adc_swap_mux\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1438, i32 38 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1741, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [24 x i8] c"rt5682s_adcdat_pin_ctrl\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1607, i32 38 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1744, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1746, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1748, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1752, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant [18 x i8] c"rt5682s_dac_l_mix\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1468, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1754, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [18 x i8] c"rt5682s_dac_r_mix\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1475, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1758, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [23 x i8] c"rt5682s_alg_dac_l1_mux\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1586, i32 38 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1759, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [23 x i8] c"rt5682s_alg_dac_r1_mux\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1592, i32 38 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1762, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1764, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_dac_l_mix\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1482, i32 38 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1766, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_dac_r_mix\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1489, i32 38 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1770, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1771, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1774, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1778, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1780, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1782, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1790, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1791, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c"rt5682s_dapm_widgets\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1610, i32 41 }
@___asan_gen_.880 = private unnamed_addr constant [6 x i8] c"div_f\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1157, i32 19 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1083, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1089, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1093, i32 4 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1100, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1138, i32 19 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1498, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1517, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [24 x i8] c"rt5682s_sto1_adc1l_enum\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1513, i32 8 }
@___asan_gen_.918 = private unnamed_addr constant [22 x i8] c"rt5682s_sto1_adc1_src\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1509, i32 27 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1510, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1510, i32 13 }
@___asan_gen_.927 = private unnamed_addr constant [24 x i8] c"rt5682s_sto1_adc1r_enum\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1519, i32 8 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1553, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant [24 x i8] c"rt5682s_sto1_adc2l_enum\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1549, i32 8 }
@___asan_gen_.936 = private unnamed_addr constant [22 x i8] c"rt5682s_sto1_adc2_src\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1545, i32 27 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1546, i32 13 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1559, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant [24 x i8] c"rt5682s_sto1_adc2r_enum\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1555, i32 8 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1535, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adcl_enum\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1531, i32 8 }
@___asan_gen_.954 = private unnamed_addr constant [21 x i8] c"rt5682s_sto1_adc_src\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1527, i32 27 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1541, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant [23 x i8] c"rt5682s_sto1_adcr_enum\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1537, i32 8 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1575, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant [26 x i8] c"rt5682s_if1_adc_slot_enum\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1570, i32 8 }
@___asan_gen_.969 = private unnamed_addr constant [25 x i8] c"rt5682s_if1_adc_slot_src\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1566, i32 27 }
@___asan_gen_.972 = private unnamed_addr constant [28 x i8] c"rt5682s_if1_adc_slot_values\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1562, i32 27 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1567, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1567, i32 12 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1567, i32 22 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1567, i32 32 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1455, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1457, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.995 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.996 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1257, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1261, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant [24 x i8] c"rt5682s_if1_01_adc_enum\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1426, i32 8 }
@___asan_gen_.1012 = private unnamed_addr constant [20 x i8] c"rt5682s_data_select\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1419, i32 27 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1420, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1420, i32 9 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1420, i32 16 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1420, i32 23 }
@___asan_gen_.1027 = private unnamed_addr constant [24 x i8] c"rt5682s_if1_23_adc_enum\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1429, i32 8 }
@___asan_gen_.1030 = private unnamed_addr constant [24 x i8] c"rt5682s_if1_45_adc_enum\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1432, i32 8 }
@___asan_gen_.1033 = private unnamed_addr constant [24 x i8] c"rt5682s_if1_67_adc_enum\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1435, i32 8 }
@___asan_gen_.1036 = private unnamed_addr constant [21 x i8] c"rt5682s_if2_adc_enum\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1423, i32 8 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1608, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant [24 x i8] c"rt5682s_adcdat_pin_enum\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1603, i32 8 }
@___asan_gen_.1045 = private unnamed_addr constant [26 x i8] c"rt5682s_adcdat_pin_select\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1599, i32 27 }
@___asan_gen_.1048 = private unnamed_addr constant [26 x i8] c"rt5682s_adcdat_pin_values\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1595, i32 27 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1600, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1600, i32 13 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1469, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1471, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1587, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [24 x i8] c"rt5682s_alg_dac_l1_enum\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1583, i32 8 }
@___asan_gen_.1073 = private unnamed_addr constant [21 x i8] c"rt5682s_alg_dac1_src\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1579, i32 27 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1580, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1580, i32 23 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1593, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant [24 x i8] c"rt5682s_alg_dac_r1_enum\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1589, i32 8 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1483, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1485, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2781, i32 47 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2747, i32 4 }
@___asan_gen_.1110 = private unnamed_addr constant [20 x i8] c"rt5682s_dai_clk_ops\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2699, i32 29 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2758, i32 4 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2455, i32 3 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2534, i32 3 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2557, i32 3 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2587, i32 3 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2592, i32 3 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2691, i32 3 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2391, i32 3 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2174, i32 3 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2188, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2280, i32 3 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2298, i32 3 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2308, i32 3 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2312, i32 3 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2319, i32 3 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2335, i32 3 }
@___asan_gen_.1212 = private unnamed_addr constant [11 x i8] c"plla_table\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2194, i32 34 }
@___asan_gen_.1215 = private unnamed_addr constant [11 x i8] c"pllb_table\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2218, i32 34 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 1001, i32 3 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2995, i32 11 }
@___asan_gen_.1230 = private unnamed_addr constant [21 x i8] c"rt5682s_aif1_dai_ops\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2871, i32 37 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 3014, i32 11 }
@___asan_gen_.1236 = private unnamed_addr constant [21 x i8] c"rt5682s_aif2_dai_ops\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2878, i32 37 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2145, i32 3 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2011, i32 3 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2060, i32 3 }
@___asan_gen_.1260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1267 = private constant [30 x i8] c"../sound/soc/codecs/rt5682s.c\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1267, i32 2415, i32 3 }
@___asan_gen_.1269 = private unnamed_addr constant [42 x i8] c"switch.table.rt5682s_set_component_sysclk\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant [34 x i8] c"switch.table.rt5682s_set_tdm_slot\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant [31 x i8] c"switch.table.rt5682s_hw_params\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant [35 x i8] c"switch.table.rt5682s_hw_params.258\00", align 1
@llvm.compiler.used = appending global [383 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_rt5682s_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5682s__309_3225_rt5682s_i2c_driver_init6, ptr @__ksymtab_rt5682s_sel_asrc_clk_src, ptr @rt5682s_apply_patch_list._entry, ptr @rt5682s_apply_patch_list._entry_ptr, ptr @rt5682s_bclk_set_rate._entry, ptr @rt5682s_bclk_set_rate._entry_ptr, ptr @rt5682s_calibrate._entry, ptr @rt5682s_calibrate._entry_ptr, ptr @rt5682s_div_sel._entry, ptr @rt5682s_div_sel._entry.163, ptr @rt5682s_div_sel._entry_ptr, ptr @rt5682s_div_sel._entry_ptr.165, ptr @rt5682s_hw_params._entry, ptr @rt5682s_hw_params._entry.254, ptr @rt5682s_hw_params._entry_ptr, ptr @rt5682s_hw_params._entry_ptr.255, ptr @rt5682s_i2c_driver_exit, ptr @rt5682s_i2c_probe._entry, ptr @rt5682s_i2c_probe._entry.10, ptr @rt5682s_i2c_probe._entry.13, ptr @rt5682s_i2c_probe._entry.16, ptr @rt5682s_i2c_probe._entry.24, ptr @rt5682s_i2c_probe._entry.28, ptr @rt5682s_i2c_probe._entry.39, ptr @rt5682s_i2c_probe._entry.7, ptr @rt5682s_i2c_probe._entry_ptr, ptr @rt5682s_i2c_probe._entry_ptr.12, ptr @rt5682s_i2c_probe._entry_ptr.15, ptr @rt5682s_i2c_probe._entry_ptr.18, ptr @rt5682s_i2c_probe._entry_ptr.27, ptr @rt5682s_i2c_probe._entry_ptr.30, ptr @rt5682s_i2c_probe._entry_ptr.41, ptr @rt5682s_i2c_probe._entry_ptr.9, ptr @rt5682s_jack_detect_handler._entry, ptr @rt5682s_jack_detect_handler._entry_ptr, ptr @rt5682s_parse_dt._entry, ptr @rt5682s_parse_dt._entry_ptr, ptr @rt5682s_register_dai_clks._entry, ptr @rt5682s_register_dai_clks._entry.217, ptr @rt5682s_register_dai_clks._entry_ptr, ptr @rt5682s_register_dai_clks._entry_ptr.219, ptr @rt5682s_sar_power_mode._entry, ptr @rt5682s_sar_power_mode._entry_ptr, ptr @rt5682s_set_bclk1_ratio._entry, ptr @rt5682s_set_bclk1_ratio._entry_ptr, ptr @rt5682s_set_bclk2_ratio._entry, ptr @rt5682s_set_bclk2_ratio._entry_ptr, ptr @rt5682s_set_component_pll._entry, ptr @rt5682s_set_component_pll._entry.241, ptr @rt5682s_set_component_pll._entry_ptr, ptr @rt5682s_set_component_pll._entry_ptr.243, ptr @rt5682s_set_component_sysclk._entry, ptr @rt5682s_set_component_sysclk._entry_ptr, ptr @rt5682s_set_dai_fmt._entry, ptr @rt5682s_set_dai_fmt._entry_ptr, ptr @rt5682s_set_jack_detect._entry, ptr @rt5682s_set_jack_detect._entry_ptr, ptr @rt5682s_wclk_recalc_rate._entry, ptr @rt5682s_wclk_recalc_rate._entry_ptr, ptr @rt5682s_wclk_round_rate._entry, ptr @rt5682s_wclk_round_rate._entry_ptr, ptr @rt5682s_wclk_set_rate._entry, ptr @rt5682s_wclk_set_rate._entry.227, ptr @rt5682s_wclk_set_rate._entry_ptr, ptr @rt5682s_wclk_set_rate._entry_ptr.229, ptr @set_i2s_clk._entry, ptr @set_i2s_clk._entry_ptr, ptr @rt5682s_i2c_driver, ptr @.str, ptr @rt5682s_of_match, ptr @rt5682s_acpi_match, ptr @rt5682s_i2c_id, ptr @i2s_default_platform_data, ptr @rt5682s_i2c_probe._key, ptr @rt5682s_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @rt5682s_i2c_probe.__key, ptr @.str.19, ptr @rt5682s_i2c_probe.__key.20, ptr @.str.21, ptr @rt5682s_i2c_probe.__key.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @rt5682s_i2c_probe.__key.31, ptr @.str.32, ptr @rt5682s_i2c_probe.__key.33, ptr @.str.34, ptr @rt5682s_i2c_probe.__key.35, ptr @.str.36, ptr @rt5682s_i2c_probe.__key.37, ptr @.str.38, ptr @.str.40, ptr @rt5682s_soc_component_dev, ptr @rt5682s_dai, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @rt5682s_reg, ptr @.str.55, ptr @.str.56, ptr @patch_list, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @rt5682s_snd_controls, ptr @rt5682s_dapm_routes, ptr @.str.74, ptr @dac_vol_tlv, ptr @.compoundliteral, ptr @.str.75, ptr @cbj_bst_tlv, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @adc_vol_tlv, ptr @.compoundliteral.80, ptr @.str.81, ptr @adc_bst_tlv, ptr @.compoundliteral.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @rt5682s_rec1_l_mix, ptr @.str.108, ptr @rt5682s_rec1_r_mix, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @rt5682s_sto1_adc1l_mux, ptr @.str.117, ptr @rt5682s_sto1_adc1r_mux, ptr @.str.118, ptr @rt5682s_sto1_adc2l_mux, ptr @.str.119, ptr @rt5682s_sto1_adc2r_mux, ptr @.str.120, ptr @rt5682s_sto1_adcl_mux, ptr @.str.121, ptr @rt5682s_sto1_adcr_mux, ptr @.str.122, ptr @rt5682s_if1_adc_slot_mux, ptr @.str.123, ptr @.str.124, ptr @rt5682s_sto1_adc_l_mix, ptr @.str.125, ptr @rt5682s_sto1_adc_r_mix, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @rt5682s_if1_01_adc_swap_mux, ptr @.str.132, ptr @rt5682s_if1_23_adc_swap_mux, ptr @.str.133, ptr @rt5682s_if1_45_adc_swap_mux, ptr @.str.134, ptr @rt5682s_if1_67_adc_swap_mux, ptr @.str.135, ptr @rt5682s_if2_adc_swap_mux, ptr @.str.136, ptr @rt5682s_adcdat_pin_ctrl, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @rt5682s_dac_l_mix, ptr @.str.144, ptr @rt5682s_dac_r_mix, ptr @.str.145, ptr @rt5682s_alg_dac_l1_mux, ptr @.str.146, ptr @rt5682s_alg_dac_r1_mux, ptr @.str.147, ptr @.str.148, ptr @rt5682s_sto1_dac_l_mix, ptr @.str.149, ptr @rt5682s_sto1_dac_r_mix, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @rt5682s_dapm_widgets, ptr @set_filter_clk.div_f, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @set_dmic_clk.div, ptr @.str.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @rt5682s_sto1_adc1l_enum, ptr @rt5682s_sto1_adc1_src, ptr @.str.170, ptr @.str.171, ptr @rt5682s_sto1_adc1r_enum, ptr @.str.172, ptr @rt5682s_sto1_adc2l_enum, ptr @rt5682s_sto1_adc2_src, ptr @.str.173, ptr @.str.174, ptr @rt5682s_sto1_adc2r_enum, ptr @.str.175, ptr @rt5682s_sto1_adcl_enum, ptr @rt5682s_sto1_adc_src, ptr @.str.176, ptr @rt5682s_sto1_adcr_enum, ptr @.str.177, ptr @rt5682s_if1_adc_slot_enum, ptr @rt5682s_if1_adc_slot_src, ptr @rt5682s_if1_adc_slot_values, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @rt5682s_if1_01_adc_enum, ptr @rt5682s_data_select, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @rt5682s_if1_23_adc_enum, ptr @rt5682s_if1_45_adc_enum, ptr @rt5682s_if1_67_adc_enum, ptr @rt5682s_if2_adc_enum, ptr @.str.195, ptr @rt5682s_adcdat_pin_enum, ptr @rt5682s_adcdat_pin_select, ptr @rt5682s_adcdat_pin_values, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.compoundliteral.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @rt5682s_alg_dac_l1_enum, ptr @rt5682s_alg_dac1_src, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @rt5682s_alg_dac_r1_enum, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.compoundliteral.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @rt5682s_dai_clk_ops, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @plla_table, ptr @pllb_table, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @rt5682s_aif1_dai_ops, ptr @.str.249, ptr @rt5682s_aif2_dai_ops, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.256, ptr @.str.257, ptr @switch.table.rt5682s_set_component_sysclk, ptr @switch.table.rt5682s_set_tdm_slot, ptr @switch.table.rt5682s_hw_params, ptr @switch.table.rt5682s_hw_params.258], section "llvm.metadata"
@0 = internal global [343 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_default_platform_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_i2c_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_soc_component_dev to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_reg to i32), i32 2904, i32 3616, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_list to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_apply_patch_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_jack_detect_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sar_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_snd_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_dapm_routes to i32), i32 5668, i32 7104, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbj_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_rec1_l_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_rec1_r_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc1l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc1r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc2l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc2r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adcl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adcr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_adc_slot_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_01_adc_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_23_adc_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_45_adc_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_67_adc_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if2_adc_swap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_adcdat_pin_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_alg_dac_l1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_alg_dac_r1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_dapm_widgets to i32), i32 13500, i32 16864, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_filter_clk.div_f to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_div_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_div_sel._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dmic_clk.div to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc1l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc1r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc2l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc2r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adcl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adc_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_sto1_adcr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_adc_slot_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_adc_slot_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_adc_slot_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_i2s_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_01_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_data_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_23_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_45_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if1_67_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_if2_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_adcdat_pin_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_adcdat_pin_select to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_adcdat_pin_values to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_alg_dac_l1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_alg_dac1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_alg_dac_r1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_register_dai_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_dai_clk_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_register_dai_clks._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_wclk_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_wclk_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_wclk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_wclk_set_rate._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_bclk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_bclk1_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_component_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_component_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_component_pll._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plla_table to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllb_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_aif1_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_aif2_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_hw_params._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682s_set_bclk2_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5682s_set_component_sysclk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5682s_set_tdm_slot to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5682s_hw_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5682s_hw_params.258 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5682s_sel_asrc_clk_src(ptr noundef %component, i32 noundef %filter_mask, i32 noundef %clk_src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_src)
  %switch = icmp ult i32 %clk_src, 3
  br i1 %switch, label %sw.epilog, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  %and = and i32 %filter_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw nsw i32 %clk_src, 12
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 132, i32 noundef 28672, i32 noundef %shl) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %and1 = and i32 %filter_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl4 = shl nuw nsw i32 %clk_src, 12
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 133, i32 noundef 28672, i32 noundef %shl4) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 140, i32 noundef 32, i32 noundef 32) #8
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_i2c_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5682s_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_i2c_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5682s_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
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
  store i32 -1, ptr %val, align 4, !annotation !640
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 648, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pdata3 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %pdata3, ptr @i2s_default_platform_data, i32 40)
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %pdata3, ptr %1, i32 40)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %dmic1_data_pin.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef %dmic1_data_pin.i, i32 noundef 1) #8
  %dmic1_clk_pin.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 2
  %call.i1.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef %dmic1_clk_pin.i, i32 noundef 1) #8
  %jd_src.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 3
  %call.i2.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %jd_src.i, i32 noundef 1) #8
  %dmic_clk_rate.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 4
  %call.i3.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %dmic_clk_rate.i, i32 noundef 1) #8
  %dmic_delay.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 5
  %call.i4.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %dmic_delay.i, i32 noundef 1) #8
  %amic_delay.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 6
  %call.i5.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef %amic_delay.i, i32 noundef 1) #8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i6.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef null) #8
  %8 = ptrtoint ptr %pdata3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i6.i, ptr %pdata3, align 4
  %dai_clk_names.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 8
  %call14.i = tail call i32 @device_property_read_string_array(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef %dai_clk_names.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i = icmp slt i32 %call14.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.rt5682s_parse_dt.exit_crit_edge

if.else.rt5682s_parse_dt.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_parse_dt.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dai_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dai_clk_names.i, align 4
  %arrayidx19.i = getelementptr %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 8, i32 1
  %11 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx19.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef %10, ptr noundef %12) #11
  br label %rt5682s_parse_dt.exit

rt5682s_parse_dt.exit:                            ; preds = %do.end.i, %if.else.rt5682s_parse_dt.exit_crit_edge
  %call.i7.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.54) #8
  %dmic_clk_driving_high.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 7
  %frombool.i = zext i1 %call.i7.i to i8
  %13 = ptrtoint ptr %dmic_clk_driving_high.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %dmic_clk_driving_high.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %rt5682s_parse_dt.exit, %if.then5
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5682s_regmap, ptr noundef nonnull @rt5682s_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i272 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %if.then13, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end9
  %arrayidx18 = getelementptr %struct.rt5682s_priv, ptr %call.i, i32 0, i32 4, i32 0
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.55, ptr %arrayidx18, align 4
  %arrayidx18.1 = getelementptr %struct.rt5682s_priv, ptr %call.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.56, ptr %arrayidx18.1, align 4
  %call21 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %17) #11
  br label %cleanup

do.end26:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call21) #11
  br label %cleanup

if.end28:                                         ; preds = %for.body.preheader
  %call.i273 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rt5682s_i2c_disable_regulators, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool.not.i = icmp eq i32 %call.i273, 0
  br i1 %tobool.not.i, label %if.end33, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i274 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx18) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call36 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call36) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %18 = ptrtoint ptr %pdata3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdata3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %20 = icmp ult i32 %19, 2048
  br i1 %20, label %if.then46, label %if.end43.if.end58_crit_edge

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then46:                                        ; preds = %if.end43
  %call50 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %19, i32 noundef 2, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then46.if.end58_crit_edge, label %do.end55

if.then46.if.end58_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end55:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.then46.if.end58_crit_edge, %if.end43.if.end58_crit_edge
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 55000, i32 noundef 2) #8
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_read(ptr noundef %22, i32 noundef 255, ptr noundef nonnull %val) #8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26441, i32 %24)
  %cmp61.not = icmp eq i32 %24, 26441
  br i1 %cmp61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %24) #11
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i275 = call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef 0) #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i277 = call i32 @regmap_multi_reg_write(ptr noundef %28, ptr noundef nonnull @patch_list, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool.not.i278 = icmp eq i32 %call.i277, 0
  br i1 %tobool.not.i278, label %if.end67.rt5682s_apply_patch_list.exit_crit_edge, label %do.end.i279

if.end67.rt5682s_apply_patch_list.exit_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_apply_patch_list.exit

do.end.i279:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %call.i277) #11
  br label %rt5682s_apply_patch_list.exit

rt5682s_apply_patch_list.exit:                    ; preds = %do.end.i279, %if.end67.rt5682s_apply_patch_list.exit_crit_edge
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i280 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 98, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 25000, i32 noundef 2) #8
  %calibrate_mutex = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %calibrate_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @rt5682s_i2c_probe.__key) #8
  %sar_mutex = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 8
  call void @__mutex_init(ptr noundef %sar_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @rt5682s_i2c_probe.__key.20) #8
  %jdet_mutex = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %jdet_mutex, ptr noundef nonnull @.str.23, ptr noundef nonnull @rt5682s_i2c_probe.__key.22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %31 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %value.i, align 4, !annotation !640
  call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #8
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i282 = call i32 @regmap_write(ptr noundef %33, i32 noundef 99, i32 noundef 43648) #8
  call void @usleep_range_state(i32 noundef 15000, i32 noundef 20000, i32 noundef 2) #8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 99, i32 noundef 64128) #8
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 97, i32 noundef 448) #8
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 148, i32 noundef 896) #8
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 128, i32 noundef 32768) #8
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 115, i32 noundef 4097) #8
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 314, i32 noundef 12336) #8
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call14.i283 = call i32 @regmap_write(ptr noundef %47, i32 noundef 315, i32 noundef 45056) #8
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 38, i32 noundef 26732) #8
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 68, i32 noundef 20817) #8
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call20.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 479, i32 noundef 801) #8
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call22.i = call i32 @regmap_write(ptr noundef %55, i32 noundef 475, i32 noundef 4) #8
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %57, i32 noundef 478, i32 noundef 31744) #8
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call26.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 478, i32 noundef 64512) #8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %rt5682s_apply_patch_list.exit
  %count.074.i = phi i32 [ 0, %rt5682s_apply_patch_list.exit ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call28.i = call i32 @regmap_read(ptr noundef %61, i32 noundef 490, ptr noundef nonnull %value.i) #8
  %62 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value.i, align 4
  %and.i = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i284 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i284, label %for.body.i.rt5682s_calibrate.exit_crit_edge, label %if.end.i

for.body.i.rt5682s_calibrate.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_calibrate.exit

if.end.i:                                         ; preds = %for.body.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %count.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 60
  br i1 %exitcond.not.i, label %do.end.i285, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i285:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.59) #11
  br label %rt5682s_calibrate.exit

rt5682s_calibrate.exit:                           ; preds = %do.end.i285, %for.body.i.rt5682s_calibrate.exit_crit_edge
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call33.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 148, i32 noundef 384) #8
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call35.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 68, i32 noundef 22616) #8
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call37.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 38, i32 noundef 49348) #8
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call39.i = call i32 @regmap_write(ptr noundef %75, i32 noundef 479, i32 noundef 800) #8
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call41.i = call i32 @regmap_write(ptr noundef %77, i32 noundef 97, i32 noundef 192) #8
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call43.i = call i32 @regmap_write(ptr noundef %79, i32 noundef 99, i32 noundef 2048) #8
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call45.i = call i32 @regmap_write(ptr noundef %81, i32 noundef 128, i32 noundef 0) #8
  call void @mutex_unlock(ptr noundef %calibrate_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call.i286 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 148, i32 noundef 768, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i287 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 99, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call.i288 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 475, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call.i289 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 145, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %call.i290 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 15104, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dmic1_data_pin = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %dmic1_data_pin to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dmic1_data_pin, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i32 %93, label %do.end102 [
    i32 0, label %rt5682s_calibrate.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb95
  ]

rt5682s_calibrate.exit.sw.epilog_crit_edge:       ; preds = %rt5682s_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %rt5682s_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  %call.i291 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 110, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call.i292 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 192, i32 noundef 12288, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb95:                                          ; preds = %rt5682s_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap, align 4
  %call.i293 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 110, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %call.i294 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 192, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

do.end102:                                        ; preds = %rt5682s_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end102, %sw.bb95, %sw.bb, %rt5682s_calibrate.exit.sw.epilog_crit_edge
  %dmic1_clk_pin = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %dmic1_clk_pin to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dmic1_clk_pin, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %104, label %do.end120 [
    i32 0, label %sw.epilog.do.body124_crit_edge
    i32 1, label %sw.bb105
    i32 2, label %sw.bb108
  ]

sw.epilog.do.body124_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body124

sw.bb105:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call.i295 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 192, i32 noundef 49152, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body124

sw.bb108:                                         ; preds = %sw.epilog
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call.i296 = call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 192, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dmic_clk_driving_high = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 1, i32 7
  %110 = ptrtoint ptr %dmic_clk_driving_high to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dmic_clk_driving_high, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool112.not = icmp eq i8 %111, 0
  br i1 %tobool112.not, label %sw.bb108.do.body124_crit_edge, label %if.then113

sw.bb108.do.body124_crit_edge:                    ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body124

if.then113:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call.i297 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 310, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body124

do.end120:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %do.body124

do.body124:                                       ; preds = %do.end120, %if.then113, %sw.bb108.do.body124_crit_edge, %sw.bb105, %sw.epilog.do.body124_crit_edge
  %jack_detect_work = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #8
  %114 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @rt5682s_i2c_probe.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry131 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %115 = ptrtoint ptr %entry131 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %entry131, ptr %entry131, align 4
  %prev.i = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %entry131, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %117 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @rt5682s_jack_detect_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.34, ptr noundef nonnull @rt5682s_i2c_probe.__key.33) #8
  %jd_check_work = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %jd_check_work, i32 noundef 0) #8
  %118 = ptrtoint ptr %jd_check_work to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -64, ptr %jd_check_work, align 4
  %lockdep_map152 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map152, ptr noundef nonnull @.str.36, ptr noundef nonnull @rt5682s_i2c_probe.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry155 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %119 = ptrtoint ptr %entry155 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %entry155, ptr %entry155, align 4
  %prev.i298 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %prev.i298 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %entry155, ptr %prev.i298, align 4
  %func158 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %121 = ptrtoint ptr %func158 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @rt5682s_jd_check_handler, ptr %func158, align 4
  %timer163 = getelementptr inbounds %struct.rt5682s_priv, ptr %call.i, i32 0, i32 6, i32 1
  call void @init_timer_key(ptr noundef %timer163, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.38, ptr noundef nonnull @rt5682s_i2c_probe.__key.37) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %122 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool168.not = icmp eq i32 %123, 0
  br i1 %tobool168.not, label %do.body124.if.end180_crit_edge, label %if.then169

do.body124.if.end180_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then169:                                       ; preds = %do.body124
  %call172 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %123, ptr noundef null, ptr noundef nonnull @rt5682s_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then169.if.end180_crit_edge, label %do.end177

if.then169.if.end180_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

do.end177:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call172) #11
  br label %if.end180

if.end180:                                        ; preds = %do.end177, %if.then169.if.end180_crit_edge, %do.body124.if.end180_crit_edge
  %call182 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rt5682s_soc_component_dev, ptr noundef nonnull @rt5682s_dai, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %do.end65, %do.end41, %devm_add_action_or_reset.exit, %do.end26, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then13 ], [ %call21, %do.end26 ], [ %call36, %do.end41 ], [ -19, %do.end65 ], [ %call182, %if.end180 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i273, %devm_add_action_or_reset.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_i2c_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %jack_detect_work.i = getelementptr inbounds %struct.rt5682s_priv, ptr %1, i32 0, i32 5
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work.i) #8
  %jd_check_work.i = getelementptr inbounds %struct.rt5682s_priv, ptr %1, i32 0, i32 6
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_check_work.i) #8
  %regmap.i.i = getelementptr inbounds %struct.rt5682s_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_i2c_shutdown(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %jack_detect_work = getelementptr inbounds %struct.rt5682s_priv, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #8
  %jd_check_work = getelementptr inbounds %struct.rt5682s_priv, ptr %1, i32 0, i32 6
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_check_work) #8
  %regmap.i = getelementptr inbounds %struct.rt5682s_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_i2c_disable_regulators(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.rt5682s_priv, ptr %data, i32 0, i32 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_jack_detect_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %instantiated = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %instantiated to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %instantiated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %lor.lhs.false3.if.then_crit_edge, label %if.end

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work, i32 noundef 2) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %jdet_mutex = getelementptr i8, ptr %work, i32 384
  tail call void @mutex_lock_nested(ptr noundef %jdet_mutex, i32 noundef 0) #8
  %calibrate_mutex = getelementptr i8, ptr %work, i32 200
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef 240) #8
  %and = and i32 %call9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.else36

if.then11:                                        ; preds = %if.end
  %jack_type = getelementptr i8, ptr %work, i32 564
  %8 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call14 = tail call fastcc i32 @rt5682s_headset_detect(ptr noundef %11, i32 noundef 1)
  %12 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call14, ptr %jack_type, align 4
  %irq_work_delay_time = getelementptr i8, ptr %work, i32 568
  %13 = ptrtoint ptr %irq_work_delay_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %irq_work_delay_time, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then11
  %and17 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 3
  br i1 %cmp18, label %if.then19, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then19:                                        ; preds = %if.else
  %14 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %jack_type, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %call.i87 = tail call i32 @snd_soc_component_read(ptr noundef %16, i32 noundef 226) #8
  %and.i = and i32 %call.i87, 65520
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %16, i32 noundef 226, i32 noundef %call.i87) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_button_detect.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_jack_detect_handler, %if.then.i)) #8
          to label %rt5682s_button_detect.exit [label %if.then.i], !srcloc !642

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_button_detect.__UNIQUE_ID_ddebug297, ptr noundef %18, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef %and.i) #8
  br label %rt5682s_button_detect.exit

rt5682s_button_detect.exit:                       ; preds = %if.then.i, %if.then19
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %16, i32 noundef 529, i32 noundef 16, i32 noundef 16) #8
  %trunc = trunc i32 %and.i to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.260)
  switch i16 %trunc, label %do.end [
    i16 -32768, label %rt5682s_button_detect.exit.sw.bb_crit_edge
    i16 16384, label %rt5682s_button_detect.exit.sw.bb_crit_edge88
    i16 8192, label %rt5682s_button_detect.exit.sw.bb_crit_edge89
    i16 4096, label %rt5682s_button_detect.exit.sw.bb24_crit_edge
    i16 2048, label %rt5682s_button_detect.exit.sw.bb24_crit_edge90
    i16 1024, label %rt5682s_button_detect.exit.sw.bb24_crit_edge91
    i16 512, label %rt5682s_button_detect.exit.sw.bb27_crit_edge
    i16 256, label %rt5682s_button_detect.exit.sw.bb27_crit_edge92
    i16 128, label %rt5682s_button_detect.exit.sw.bb27_crit_edge93
    i16 64, label %rt5682s_button_detect.exit.sw.bb30_crit_edge
    i16 32, label %rt5682s_button_detect.exit.sw.bb30_crit_edge94
    i16 16, label %rt5682s_button_detect.exit.sw.bb30_crit_edge95
    i16 0, label %rt5682s_button_detect.exit.if.end41_crit_edge
  ]

rt5682s_button_detect.exit.if.end41_crit_edge:    ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

rt5682s_button_detect.exit.sw.bb30_crit_edge95:   ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

rt5682s_button_detect.exit.sw.bb30_crit_edge94:   ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

rt5682s_button_detect.exit.sw.bb30_crit_edge:     ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

rt5682s_button_detect.exit.sw.bb27_crit_edge93:   ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

rt5682s_button_detect.exit.sw.bb27_crit_edge92:   ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

rt5682s_button_detect.exit.sw.bb27_crit_edge:     ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

rt5682s_button_detect.exit.sw.bb24_crit_edge91:   ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

rt5682s_button_detect.exit.sw.bb24_crit_edge90:   ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

rt5682s_button_detect.exit.sw.bb24_crit_edge:     ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

rt5682s_button_detect.exit.sw.bb_crit_edge89:     ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

rt5682s_button_detect.exit.sw.bb_crit_edge88:     ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

rt5682s_button_detect.exit.sw.bb_crit_edge:       ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %rt5682s_button_detect.exit.sw.bb_crit_edge, %rt5682s_button_detect.exit.sw.bb_crit_edge88, %rt5682s_button_detect.exit.sw.bb_crit_edge89
  %20 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %jack_type, align 4
  %or = or i32 %21, 16384
  store i32 %or, ptr %jack_type, align 4
  br label %if.end41

sw.bb24:                                          ; preds = %rt5682s_button_detect.exit.sw.bb24_crit_edge, %rt5682s_button_detect.exit.sw.bb24_crit_edge90, %rt5682s_button_detect.exit.sw.bb24_crit_edge91
  %22 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jack_type, align 4
  %or26 = or i32 %23, 8192
  store i32 %or26, ptr %jack_type, align 4
  br label %if.end41

sw.bb27:                                          ; preds = %rt5682s_button_detect.exit.sw.bb27_crit_edge, %rt5682s_button_detect.exit.sw.bb27_crit_edge92, %rt5682s_button_detect.exit.sw.bb27_crit_edge93
  %24 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %jack_type, align 4
  %or29 = or i32 %25, 4096
  store i32 %or29, ptr %jack_type, align 4
  br label %if.end41

sw.bb30:                                          ; preds = %rt5682s_button_detect.exit.sw.bb30_crit_edge, %rt5682s_button_detect.exit.sw.bb30_crit_edge94, %rt5682s_button_detect.exit.sw.bb30_crit_edge95
  %26 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jack_type, align 4
  %or32 = or i32 %27, 2048
  store i32 %or32, ptr %jack_type, align 4
  br label %if.end41

do.end:                                           ; preds = %rt5682s_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.61, i32 noundef %and.i) #11
  br label %if.end41

if.else36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %call38 = tail call fastcc i32 @rt5682s_headset_detect(ptr noundef %33, i32 noundef 0)
  %jack_type39 = getelementptr i8, ptr %work, i32 564
  %34 = ptrtoint ptr %jack_type39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call38, ptr %jack_type39, align 4
  %irq_work_delay_time40 = getelementptr i8, ptr %work, i32 568
  %35 = ptrtoint ptr %irq_work_delay_time40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 50, ptr %irq_work_delay_time40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else36, %do.end, %sw.bb30, %sw.bb27, %sw.bb24, %sw.bb, %rt5682s_button_detect.exit.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then12
  %hs_jack = getelementptr i8, ptr %work, i32 -28
  %36 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hs_jack, align 4
  %jack_type42 = getelementptr i8, ptr %work, i32 564
  %38 = ptrtoint ptr %jack_type42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %jack_type42, align 4
  tail call void @snd_soc_jack_report(ptr noundef %37, i32 noundef %39, i32 noundef 30723) #8
  %40 = ptrtoint ptr %jack_type42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %jack_type42, align 4
  %and44 = and i32 %41, 30720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %jd_check_work49 = getelementptr i8, ptr %work, i32 100
  br i1 %tobool45.not, label %if.else48, label %if.then46

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %jd_check_work49, i32 noundef 0) #8
  br label %if.end51

if.else48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_check_work49) #8
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then46
  tail call void @mutex_unlock(ptr noundef %calibrate_mutex) #8
  tail call void @mutex_unlock(ptr noundef %jdet_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_jd_check_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -176
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 240) #8
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call fastcc i32 @rt5682s_headset_detect(ptr noundef %3, i32 noundef 0), !range !643
  %jack_type = getelementptr i8, ptr %work, i32 464
  %4 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %jack_type, align 4
  %hs_jack = getelementptr i8, ptr %work, i32 -128
  %5 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hs_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %6, i32 noundef %call2, i32 noundef 30723) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work, i32 noundef 500) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %irq_work_delay_time = getelementptr inbounds %struct.rt5682s_priv, ptr %data, i32 0, i32 22
  %1 = ptrtoint ptr %irq_work_delay_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_work_delay_time, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #8
  %jack_detect_work = getelementptr inbounds %struct.rt5682s_priv, ptr %data, i32 0, i32 5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %jack_detect_work, i32 noundef %call2.i) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5682s_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 253, label %entry.return_crit_edge44
    i32 254, label %entry.return_crit_edge45
    i32 255, label %entry.return_crit_edge46
    i32 2, label %entry.return_crit_edge47
    i32 3, label %entry.return_crit_edge48
    i32 5, label %entry.return_crit_edge49
    i32 6, label %entry.return_crit_edge50
    i32 8, label %entry.return_crit_edge51
    i32 11, label %entry.return_crit_edge52
    i32 15, label %entry.return_crit_edge53
    i32 25, label %entry.return_crit_edge54
    i32 28, label %entry.return_crit_edge55
    i32 31, label %entry.return_crit_edge56
    i32 34, label %entry.return_crit_edge57
    i32 35, label %entry.return_crit_edge58
    i32 36, label %entry.return_crit_edge59
    i32 38, label %entry.return_crit_edge60
    i32 41, label %entry.return_crit_edge61
    i32 42, label %entry.return_crit_edge62
    i32 43, label %entry.return_crit_edge63
    i32 48, label %entry.return_crit_edge64
    i32 60, label %entry.return_crit_edge65
    i32 68, label %entry.return_crit_edge66
    i32 103, label %entry.return_crit_edge67
    i32 112, label %entry.return_crit_edge68
    i32 113, label %entry.return_crit_edge69
    i32 115, label %entry.return_crit_edge70
    i32 116, label %entry.return_crit_edge71
    i32 117, label %entry.return_crit_edge72
    i32 118, label %entry.return_crit_edge73
    i32 121, label %entry.return_crit_edge74
    i32 122, label %entry.return_crit_edge75
    i32 123, label %entry.return_crit_edge76
    i32 124, label %entry.return_crit_edge77
    i32 126, label %entry.return_crit_edge78
    i32 127, label %entry.return_crit_edge79
    i32 128, label %entry.return_crit_edge80
    i32 140, label %entry.return_crit_edge81
    i32 142, label %entry.return_crit_edge82
    i32 143, label %entry.return_crit_edge83
    i32 145, label %entry.return_crit_edge84
    i32 146, label %entry.return_crit_edge85
    i32 159, label %entry.return_crit_edge86
    i32 160, label %entry.return_crit_edge87
    i32 163, label %entry.return_crit_edge88
    i32 164, label %entry.return_crit_edge89
    i32 190, label %entry.return_crit_edge90
    i32 192, label %entry.return_crit_edge91
    i32 193, label %entry.return_crit_edge92
    i32 194, label %entry.return_crit_edge93
    i32 208, label %entry.return_crit_edge94
    i32 210, label %entry.return_crit_edge95
    i32 211, label %entry.return_crit_edge96
    i32 212, label %entry.return_crit_edge97
    i32 217, label %entry.return_crit_edge98
    i32 218, label %entry.return_crit_edge99
    i32 234, label %entry.return_crit_edge100
    i32 235, label %entry.return_crit_edge101
    i32 240, label %entry.return_crit_edge102
    i32 246, label %entry.return_crit_edge103
    i32 256, label %entry.return_crit_edge104
    i32 279, label %entry.return_crit_edge105
    i32 280, label %entry.return_crit_edge106
    i32 293, label %entry.return_crit_edge107
    i32 306, label %entry.return_crit_edge108
    i32 310, label %entry.return_crit_edge109
    i32 313, label %entry.return_crit_edge110
    i32 314, label %entry.return_crit_edge111
    i32 315, label %entry.return_crit_edge112
    i32 316, label %entry.return_crit_edge113
    i32 319, label %entry.return_crit_edge114
    i32 322, label %entry.return_crit_edge115
    i32 400, label %entry.return_crit_edge116
    i32 404, label %entry.return_crit_edge117
    i32 405, label %entry.return_crit_edge118
    i32 407, label %entry.return_crit_edge119
    i32 408, label %entry.return_crit_edge120
    i32 409, label %entry.return_crit_edge121
    i32 1022, label %entry.return_crit_edge122
    i32 1023, label %entry.return_crit_edge123
    i32 1280, label %entry.return_crit_edge124
    i32 1536, label %entry.return_crit_edge125
    i32 1552, label %entry.return_crit_edge126
    i32 1553, label %entry.return_crit_edge127
    i32 1568, label %entry.return_crit_edge128
    i32 1569, label %entry.return_crit_edge129
    i32 1584, label %entry.return_crit_edge130
    i32 1585, label %entry.return_crit_edge131
    i32 1600, label %entry.return_crit_edge132
    i32 1601, label %entry.return_crit_edge133
    i32 2042, label %entry.return_crit_edge134
    i32 2298, label %entry.return_crit_edge135
    i32 2299, label %entry.return_crit_edge136
    i32 3328, label %entry.return_crit_edge137
    i32 11264, label %entry.return_crit_edge138
    i32 13312, label %entry.return_crit_edge139
    i32 13376, label %entry.return_crit_edge140
    i32 13377, label %entry.return_crit_edge141
    i32 13568, label %entry.return_crit_edge142
    i32 13569, label %entry.return_crit_edge143
    i32 15104, label %entry.return_crit_edge144
    i32 15105, label %entry.return_crit_edge145
    i32 15106, label %entry.return_crit_edge146
    i32 15107, label %entry.return_crit_edge147
    i32 13348, label %entry.return_crit_edge148
    i32 13349, label %entry.return_crit_edge149
    i32 13350, label %entry.return_crit_edge150
    i32 13351, label %entry.return_crit_edge151
    i32 13352, label %entry.return_crit_edge152
    i32 13353, label %entry.return_crit_edge153
    i32 13354, label %entry.return_crit_edge154
    i32 13355, label %entry.return_crit_edge155
    i32 13356, label %entry.return_crit_edge156
    i32 13357, label %entry.return_crit_edge157
    i32 13358, label %entry.return_crit_edge158
    i32 13359, label %entry.return_crit_edge159
    i32 13360, label %entry.return_crit_edge160
    i32 13361, label %entry.return_crit_edge161
    i32 13362, label %entry.return_crit_edge162
    i32 13363, label %entry.return_crit_edge163
    i32 13364, label %entry.return_crit_edge164
    i32 13365, label %entry.return_crit_edge165
    i32 13328, label %entry.return_crit_edge166
    i32 13329, label %entry.return_crit_edge167
    i32 13330, label %entry.return_crit_edge168
    i32 13331, label %entry.return_crit_edge169
    i32 13332, label %entry.return_crit_edge170
    i32 13333, label %entry.return_crit_edge171
    i32 13316, label %entry.return_crit_edge172
    i32 13317, label %entry.return_crit_edge173
    i32 13318, label %entry.return_crit_edge174
    i32 13319, label %entry.return_crit_edge175
    i32 13320, label %entry.return_crit_edge176
    i32 13321, label %entry.return_crit_edge177
    i32 13322, label %entry.return_crit_edge178
    i32 13323, label %entry.return_crit_edge179
    i32 13324, label %entry.return_crit_edge180
    i32 13325, label %entry.return_crit_edge181
    i32 13326, label %entry.return_crit_edge182
    i32 13327, label %entry.return_crit_edge183
    i32 6145, label %entry.return_crit_edge184
    i32 6146, label %entry.return_crit_edge185
    i32 6147, label %entry.return_crit_edge186
    i32 6148, label %entry.return_crit_edge187
    i32 6149, label %entry.return_crit_edge188
    i32 5121, label %entry.return_crit_edge189
    i32 5122, label %entry.return_crit_edge190
    i32 5123, label %entry.return_crit_edge191
    i32 5124, label %entry.return_crit_edge192
    i32 5125, label %entry.return_crit_edge193
    i32 5126, label %entry.return_crit_edge194
    i32 5127, label %entry.return_crit_edge195
    i32 5128, label %entry.return_crit_edge196
    i32 5129, label %entry.return_crit_edge197
    i32 5130, label %entry.return_crit_edge198
    i32 5131, label %entry.return_crit_edge199
    i32 5132, label %entry.return_crit_edge200
    i32 5133, label %entry.return_crit_edge201
    i32 5134, label %entry.return_crit_edge202
    i32 5135, label %entry.return_crit_edge203
    i32 5136, label %entry.return_crit_edge204
    i32 5137, label %entry.return_crit_edge205
    i32 4369, label %entry.return_crit_edge206
    i32 4370, label %entry.return_crit_edge207
    i32 4371, label %entry.return_crit_edge208
    i32 4372, label %entry.return_crit_edge209
    i32 4373, label %entry.return_crit_edge210
    i32 4374, label %entry.return_crit_edge211
    i32 4375, label %entry.return_crit_edge212
    i32 4376, label %entry.return_crit_edge213
    i32 4377, label %entry.return_crit_edge214
    i32 4378, label %entry.return_crit_edge215
    i32 4379, label %entry.return_crit_edge216
    i32 4380, label %entry.return_crit_edge217
    i32 4352, label %entry.return_crit_edge218
    i32 4353, label %entry.return_crit_edge219
    i32 4354, label %entry.return_crit_edge220
    i32 4355, label %entry.return_crit_edge221
    i32 4356, label %entry.return_crit_edge222
    i32 4357, label %entry.return_crit_edge223
    i32 4358, label %entry.return_crit_edge224
    i32 4359, label %entry.return_crit_edge225
    i32 4360, label %entry.return_crit_edge226
    i32 4361, label %entry.return_crit_edge227
    i32 4362, label %entry.return_crit_edge228
    i32 4363, label %entry.return_crit_edge229
    i32 4364, label %entry.return_crit_edge230
    i32 762, label %entry.return_crit_edge231
    i32 763, label %entry.return_crit_edge232
    i32 764, label %entry.return_crit_edge233
    i32 528, label %entry.return_crit_edge234
    i32 529, label %entry.return_crit_edge235
    i32 530, label %entry.return_crit_edge236
    i32 531, label %entry.return_crit_edge237
    i32 532, label %entry.return_crit_edge238
    i32 533, label %entry.return_crit_edge239
    i32 534, label %entry.return_crit_edge240
    i32 535, label %entry.return_crit_edge241
    i32 536, label %entry.return_crit_edge242
    i32 537, label %entry.return_crit_edge243
    i32 538, label %entry.return_crit_edge244
    i32 539, label %entry.return_crit_edge245
    i32 540, label %entry.return_crit_edge246
    i32 541, label %entry.return_crit_edge247
    i32 490, label %entry.return_crit_edge248
    i32 491, label %entry.return_crit_edge249
    i32 492, label %entry.return_crit_edge250
    i32 493, label %entry.return_crit_edge251
    i32 494, label %entry.return_crit_edge252
    i32 495, label %entry.return_crit_edge253
    i32 496, label %entry.return_crit_edge254
    i32 497, label %entry.return_crit_edge255
    i32 498, label %entry.return_crit_edge256
    i32 499, label %entry.return_crit_edge257
    i32 500, label %entry.return_crit_edge258
    i32 478, label %entry.return_crit_edge259
    i32 479, label %entry.return_crit_edge260
    i32 480, label %entry.return_crit_edge261
    i32 481, label %entry.return_crit_edge262
    i32 482, label %entry.return_crit_edge263
    i32 483, label %entry.return_crit_edge264
    i32 484, label %entry.return_crit_edge265
    i32 485, label %entry.return_crit_edge266
    i32 486, label %entry.return_crit_edge267
    i32 487, label %entry.return_crit_edge268
    i32 488, label %entry.return_crit_edge269
    i32 474, label %entry.return_crit_edge270
    i32 475, label %entry.return_crit_edge271
    i32 476, label %entry.return_crit_edge272
    i32 428, label %entry.return_crit_edge273
    i32 429, label %entry.return_crit_edge274
    i32 430, label %entry.return_crit_edge275
    i32 431, label %entry.return_crit_edge276
    i32 432, label %entry.return_crit_edge277
    i32 433, label %entry.return_crit_edge278
    i32 434, label %entry.return_crit_edge279
    i32 435, label %entry.return_crit_edge280
    i32 436, label %entry.return_crit_edge281
    i32 437, label %entry.return_crit_edge282
    i32 438, label %entry.return_crit_edge283
    i32 439, label %entry.return_crit_edge284
    i32 440, label %entry.return_crit_edge285
    i32 441, label %entry.return_crit_edge286
    i32 442, label %entry.return_crit_edge287
    i32 443, label %entry.return_crit_edge288
    i32 444, label %entry.return_crit_edge289
    i32 445, label %entry.return_crit_edge290
    i32 446, label %entry.return_crit_edge291
    i32 447, label %entry.return_crit_edge292
    i32 448, label %entry.return_crit_edge293
    i32 449, label %entry.return_crit_edge294
    i32 450, label %entry.return_crit_edge295
    i32 451, label %entry.return_crit_edge296
    i32 452, label %entry.return_crit_edge297
    i32 453, label %entry.return_crit_edge298
    i32 454, label %entry.return_crit_edge299
    i32 455, label %entry.return_crit_edge300
    i32 456, label %entry.return_crit_edge301
    i32 457, label %entry.return_crit_edge302
    i32 458, label %entry.return_crit_edge303
    i32 459, label %entry.return_crit_edge304
    i32 460, label %entry.return_crit_edge305
    i32 461, label %entry.return_crit_edge306
    i32 462, label %entry.return_crit_edge307
    i32 463, label %entry.return_crit_edge308
    i32 464, label %entry.return_crit_edge309
    i32 465, label %entry.return_crit_edge310
    i32 466, label %entry.return_crit_edge311
    i32 467, label %entry.return_crit_edge312
    i32 468, label %entry.return_crit_edge313
    i32 469, label %entry.return_crit_edge314
    i32 470, label %entry.return_crit_edge315
    i32 471, label %entry.return_crit_edge316
    i32 472, label %entry.return_crit_edge317
    i32 473, label %entry.return_crit_edge318
    i32 352, label %entry.return_crit_edge319
    i32 353, label %entry.return_crit_edge320
    i32 354, label %entry.return_crit_edge321
    i32 355, label %entry.return_crit_edge322
    i32 356, label %entry.return_crit_edge323
    i32 357, label %entry.return_crit_edge324
    i32 358, label %entry.return_crit_edge325
    i32 359, label %entry.return_crit_edge326
    i32 360, label %entry.return_crit_edge327
    i32 361, label %entry.return_crit_edge328
    i32 342, label %entry.return_crit_edge329
    i32 343, label %entry.return_crit_edge330
    i32 344, label %entry.return_crit_edge331
    i32 345, label %entry.return_crit_edge332
    i32 325, label %entry.return_crit_edge333
    i32 326, label %entry.return_crit_edge334
    i32 327, label %entry.return_crit_edge335
    i32 328, label %entry.return_crit_edge336
    i32 267, label %entry.return_crit_edge337
    i32 268, label %entry.return_crit_edge338
    i32 269, label %entry.return_crit_edge339
    i32 270, label %entry.return_crit_edge340
    i32 271, label %entry.return_crit_edge341
    i32 272, label %entry.return_crit_edge342
    i32 273, label %entry.return_crit_edge343
    i32 274, label %entry.return_crit_edge344
    i32 275, label %entry.return_crit_edge345
    i32 250, label %entry.return_crit_edge346
    i32 251, label %entry.return_crit_edge347
    i32 252, label %entry.return_crit_edge348
    i32 226, label %entry.return_crit_edge349
    i32 227, label %entry.return_crit_edge350
    i32 228, label %entry.return_crit_edge351
    i32 229, label %entry.return_crit_edge352
    i32 230, label %entry.return_crit_edge353
    i32 231, label %entry.return_crit_edge354
    i32 232, label %entry.return_crit_edge355
    i32 219, label %entry.return_crit_edge356
    i32 220, label %entry.return_crit_edge357
    i32 221, label %entry.return_crit_edge358
    i32 222, label %entry.return_crit_edge359
    i32 223, label %entry.return_crit_edge360
    i32 224, label %entry.return_crit_edge361
    i32 182, label %entry.return_crit_edge362
    i32 183, label %entry.return_crit_edge363
    i32 184, label %entry.return_crit_edge364
    i32 185, label %entry.return_crit_edge365
    i32 150, label %entry.return_crit_edge366
    i32 151, label %entry.return_crit_edge367
    i32 152, label %entry.return_crit_edge368
    i32 153, label %entry.return_crit_edge369
    i32 154, label %entry.return_crit_edge370
    i32 155, label %entry.return_crit_edge371
    i32 156, label %entry.return_crit_edge372
    i32 157, label %entry.return_crit_edge373
    i32 158, label %entry.return_crit_edge374
    i32 147, label %entry.return_crit_edge375
    i32 148, label %entry.return_crit_edge376
    i32 149, label %entry.return_crit_edge377
    i32 131, label %entry.return_crit_edge378
    i32 132, label %entry.return_crit_edge379
    i32 133, label %entry.return_crit_edge380
    i32 134, label %entry.return_crit_edge381
    i32 135, label %entry.return_crit_edge382
    i32 136, label %entry.return_crit_edge383
    i32 107, label %entry.return_crit_edge384
    i32 108, label %entry.return_crit_edge385
    i32 109, label %entry.return_crit_edge386
    i32 110, label %entry.return_crit_edge387
    i32 111, label %entry.return_crit_edge388
    i32 104, label %entry.return_crit_edge389
    i32 105, label %entry.return_crit_edge390
    i32 106, label %entry.return_crit_edge391
    i32 97, label %entry.return_crit_edge392
    i32 98, label %entry.return_crit_edge393
    i32 99, label %entry.return_crit_edge394
    i32 100, label %entry.return_crit_edge395
    i32 101, label %entry.return_crit_edge396
    i32 102, label %entry.return_crit_edge397
    i32 75, label %entry.return_crit_edge398
    i32 76, label %entry.return_crit_edge399
    i32 77, label %entry.return_crit_edge400
    i32 16, label %entry.return_crit_edge401
    i32 17, label %entry.return_crit_edge402
    i32 18, label %entry.return_crit_edge403
    i32 19, label %entry.return_crit_edge404
    i32 20, label %entry.return_crit_edge405
    i32 21, label %entry.return_crit_edge406
    i32 22, label %entry.return_crit_edge407
    i32 23, label %entry.return_crit_edge408
  ]

entry.return_crit_edge408:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge407:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge406:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge405:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge404:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge403:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge402:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge401:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge400:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge399:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge398:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge397:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge396:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge395:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge394:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge393:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge392:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge391:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge390:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge389:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge388:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge387:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge384:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge383:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge382:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge381:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge380:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge379:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge377:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge376:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge375:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge374:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge373:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge372:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge371:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge369:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge368:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge367:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge366:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge365:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge364:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge363:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge362:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge361:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge360:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge359:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge358:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge357:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge356:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge355:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge354:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge353:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge352:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge351:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge350:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge349:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge348:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge347:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge346:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge345:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge344:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge343:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge342:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge336:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge335:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge334:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge332:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge331:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge330:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge328:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge327:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge326:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge325:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge324:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge323:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge322:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge321:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge320:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge317:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge316:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge315:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge314:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge313:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge311:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge310:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge309:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge308:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge307:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge306:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge305:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge304:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge303:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge302:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge301:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge300:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge299:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge298:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge297:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge296:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge295:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge294:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge293:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge292:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge291:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge290:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge289:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge288:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge287:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge286:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge285:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge284:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge283:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge282:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge281:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge280:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge279:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge278:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge276:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge274:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge273:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge272:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge270:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267, %entry.return_crit_edge268, %entry.return_crit_edge269, %entry.return_crit_edge270, %entry.return_crit_edge271, %entry.return_crit_edge272, %entry.return_crit_edge273, %entry.return_crit_edge274, %entry.return_crit_edge275, %entry.return_crit_edge276, %entry.return_crit_edge277, %entry.return_crit_edge278, %entry.return_crit_edge279, %entry.return_crit_edge280, %entry.return_crit_edge281, %entry.return_crit_edge282, %entry.return_crit_edge283, %entry.return_crit_edge284, %entry.return_crit_edge285, %entry.return_crit_edge286, %entry.return_crit_edge287, %entry.return_crit_edge288, %entry.return_crit_edge289, %entry.return_crit_edge290, %entry.return_crit_edge291, %entry.return_crit_edge292, %entry.return_crit_edge293, %entry.return_crit_edge294, %entry.return_crit_edge295, %entry.return_crit_edge296, %entry.return_crit_edge297, %entry.return_crit_edge298, %entry.return_crit_edge299, %entry.return_crit_edge300, %entry.return_crit_edge301, %entry.return_crit_edge302, %entry.return_crit_edge303, %entry.return_crit_edge304, %entry.return_crit_edge305, %entry.return_crit_edge306, %entry.return_crit_edge307, %entry.return_crit_edge308, %entry.return_crit_edge309, %entry.return_crit_edge310, %entry.return_crit_edge311, %entry.return_crit_edge312, %entry.return_crit_edge313, %entry.return_crit_edge314, %entry.return_crit_edge315, %entry.return_crit_edge316, %entry.return_crit_edge317, %entry.return_crit_edge318, %entry.return_crit_edge319, %entry.return_crit_edge320, %entry.return_crit_edge321, %entry.return_crit_edge322, %entry.return_crit_edge323, %entry.return_crit_edge324, %entry.return_crit_edge325, %entry.return_crit_edge326, %entry.return_crit_edge327, %entry.return_crit_edge328, %entry.return_crit_edge329, %entry.return_crit_edge330, %entry.return_crit_edge331, %entry.return_crit_edge332, %entry.return_crit_edge333, %entry.return_crit_edge334, %entry.return_crit_edge335, %entry.return_crit_edge336, %entry.return_crit_edge337, %entry.return_crit_edge338, %entry.return_crit_edge339, %entry.return_crit_edge340, %entry.return_crit_edge341, %entry.return_crit_edge342, %entry.return_crit_edge343, %entry.return_crit_edge344, %entry.return_crit_edge345, %entry.return_crit_edge346, %entry.return_crit_edge347, %entry.return_crit_edge348, %entry.return_crit_edge349, %entry.return_crit_edge350, %entry.return_crit_edge351, %entry.return_crit_edge352, %entry.return_crit_edge353, %entry.return_crit_edge354, %entry.return_crit_edge355, %entry.return_crit_edge356, %entry.return_crit_edge357, %entry.return_crit_edge358, %entry.return_crit_edge359, %entry.return_crit_edge360, %entry.return_crit_edge361, %entry.return_crit_edge362, %entry.return_crit_edge363, %entry.return_crit_edge364, %entry.return_crit_edge365, %entry.return_crit_edge366, %entry.return_crit_edge367, %entry.return_crit_edge368, %entry.return_crit_edge369, %entry.return_crit_edge370, %entry.return_crit_edge371, %entry.return_crit_edge372, %entry.return_crit_edge373, %entry.return_crit_edge374, %entry.return_crit_edge375, %entry.return_crit_edge376, %entry.return_crit_edge377, %entry.return_crit_edge378, %entry.return_crit_edge379, %entry.return_crit_edge380, %entry.return_crit_edge381, %entry.return_crit_edge382, %entry.return_crit_edge383, %entry.return_crit_edge384, %entry.return_crit_edge385, %entry.return_crit_edge386, %entry.return_crit_edge387, %entry.return_crit_edge388, %entry.return_crit_edge389, %entry.return_crit_edge390, %entry.return_crit_edge391, %entry.return_crit_edge392, %entry.return_crit_edge393, %entry.return_crit_edge394, %entry.return_crit_edge395, %entry.return_crit_edge396, %entry.return_crit_edge397, %entry.return_crit_edge398, %entry.return_crit_edge399, %entry.return_crit_edge400, %entry.return_crit_edge401, %entry.return_crit_edge402, %entry.return_crit_edge403, %entry.return_crit_edge404, %entry.return_crit_edge405, %entry.return_crit_edge406, %entry.return_crit_edge407, %entry.return_crit_edge408
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ], [ true, %entry.return_crit_edge268 ], [ true, %entry.return_crit_edge269 ], [ true, %entry.return_crit_edge270 ], [ true, %entry.return_crit_edge271 ], [ true, %entry.return_crit_edge272 ], [ true, %entry.return_crit_edge273 ], [ true, %entry.return_crit_edge274 ], [ true, %entry.return_crit_edge275 ], [ true, %entry.return_crit_edge276 ], [ true, %entry.return_crit_edge277 ], [ true, %entry.return_crit_edge278 ], [ true, %entry.return_crit_edge279 ], [ true, %entry.return_crit_edge280 ], [ true, %entry.return_crit_edge281 ], [ true, %entry.return_crit_edge282 ], [ true, %entry.return_crit_edge283 ], [ true, %entry.return_crit_edge284 ], [ true, %entry.return_crit_edge285 ], [ true, %entry.return_crit_edge286 ], [ true, %entry.return_crit_edge287 ], [ true, %entry.return_crit_edge288 ], [ true, %entry.return_crit_edge289 ], [ true, %entry.return_crit_edge290 ], [ true, %entry.return_crit_edge291 ], [ true, %entry.return_crit_edge292 ], [ true, %entry.return_crit_edge293 ], [ true, %entry.return_crit_edge294 ], [ true, %entry.return_crit_edge295 ], [ true, %entry.return_crit_edge296 ], [ true, %entry.return_crit_edge297 ], [ true, %entry.return_crit_edge298 ], [ true, %entry.return_crit_edge299 ], [ true, %entry.return_crit_edge300 ], [ true, %entry.return_crit_edge301 ], [ true, %entry.return_crit_edge302 ], [ true, %entry.return_crit_edge303 ], [ true, %entry.return_crit_edge304 ], [ true, %entry.return_crit_edge305 ], [ true, %entry.return_crit_edge306 ], [ true, %entry.return_crit_edge307 ], [ true, %entry.return_crit_edge308 ], [ true, %entry.return_crit_edge309 ], [ true, %entry.return_crit_edge310 ], [ true, %entry.return_crit_edge311 ], [ true, %entry.return_crit_edge312 ], [ true, %entry.return_crit_edge313 ], [ true, %entry.return_crit_edge314 ], [ true, %entry.return_crit_edge315 ], [ true, %entry.return_crit_edge316 ], [ true, %entry.return_crit_edge317 ], [ true, %entry.return_crit_edge318 ], [ true, %entry.return_crit_edge319 ], [ true, %entry.return_crit_edge320 ], [ true, %entry.return_crit_edge321 ], [ true, %entry.return_crit_edge322 ], [ true, %entry.return_crit_edge323 ], [ true, %entry.return_crit_edge324 ], [ true, %entry.return_crit_edge325 ], [ true, %entry.return_crit_edge326 ], [ true, %entry.return_crit_edge327 ], [ true, %entry.return_crit_edge328 ], [ true, %entry.return_crit_edge329 ], [ true, %entry.return_crit_edge330 ], [ true, %entry.return_crit_edge331 ], [ true, %entry.return_crit_edge332 ], [ true, %entry.return_crit_edge333 ], [ true, %entry.return_crit_edge334 ], [ true, %entry.return_crit_edge335 ], [ true, %entry.return_crit_edge336 ], [ true, %entry.return_crit_edge337 ], [ true, %entry.return_crit_edge338 ], [ true, %entry.return_crit_edge339 ], [ true, %entry.return_crit_edge340 ], [ true, %entry.return_crit_edge341 ], [ true, %entry.return_crit_edge342 ], [ true, %entry.return_crit_edge343 ], [ true, %entry.return_crit_edge344 ], [ true, %entry.return_crit_edge345 ], [ true, %entry.return_crit_edge346 ], [ true, %entry.return_crit_edge347 ], [ true, %entry.return_crit_edge348 ], [ true, %entry.return_crit_edge349 ], [ true, %entry.return_crit_edge350 ], [ true, %entry.return_crit_edge351 ], [ true, %entry.return_crit_edge352 ], [ true, %entry.return_crit_edge353 ], [ true, %entry.return_crit_edge354 ], [ true, %entry.return_crit_edge355 ], [ true, %entry.return_crit_edge356 ], [ true, %entry.return_crit_edge357 ], [ true, %entry.return_crit_edge358 ], [ true, %entry.return_crit_edge359 ], [ true, %entry.return_crit_edge360 ], [ true, %entry.return_crit_edge361 ], [ true, %entry.return_crit_edge362 ], [ true, %entry.return_crit_edge363 ], [ true, %entry.return_crit_edge364 ], [ true, %entry.return_crit_edge365 ], [ true, %entry.return_crit_edge366 ], [ true, %entry.return_crit_edge367 ], [ true, %entry.return_crit_edge368 ], [ true, %entry.return_crit_edge369 ], [ true, %entry.return_crit_edge370 ], [ true, %entry.return_crit_edge371 ], [ true, %entry.return_crit_edge372 ], [ true, %entry.return_crit_edge373 ], [ true, %entry.return_crit_edge374 ], [ true, %entry.return_crit_edge375 ], [ true, %entry.return_crit_edge376 ], [ true, %entry.return_crit_edge377 ], [ true, %entry.return_crit_edge378 ], [ true, %entry.return_crit_edge379 ], [ true, %entry.return_crit_edge380 ], [ true, %entry.return_crit_edge381 ], [ true, %entry.return_crit_edge382 ], [ true, %entry.return_crit_edge383 ], [ true, %entry.return_crit_edge384 ], [ true, %entry.return_crit_edge385 ], [ true, %entry.return_crit_edge386 ], [ true, %entry.return_crit_edge387 ], [ true, %entry.return_crit_edge388 ], [ true, %entry.return_crit_edge389 ], [ true, %entry.return_crit_edge390 ], [ true, %entry.return_crit_edge391 ], [ true, %entry.return_crit_edge392 ], [ true, %entry.return_crit_edge393 ], [ true, %entry.return_crit_edge394 ], [ true, %entry.return_crit_edge395 ], [ true, %entry.return_crit_edge396 ], [ true, %entry.return_crit_edge397 ], [ true, %entry.return_crit_edge398 ], [ true, %entry.return_crit_edge399 ], [ true, %entry.return_crit_edge400 ], [ true, %entry.return_crit_edge401 ], [ true, %entry.return_crit_edge402 ], [ true, %entry.return_crit_edge403 ], [ true, %entry.return_crit_edge404 ], [ true, %entry.return_crit_edge405 ], [ true, %entry.return_crit_edge406 ], [ true, %entry.return_crit_edge407 ], [ true, %entry.return_crit_edge408 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5682s_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 17, label %entry.return_crit_edge16
    i32 118, label %entry.return_crit_edge17
    i32 164, label %entry.return_crit_edge18
    i32 190, label %entry.return_crit_edge19
    i32 194, label %entry.return_crit_edge20
    i32 219, label %entry.return_crit_edge21
    i32 226, label %entry.return_crit_edge22
    i32 240, label %entry.return_crit_edge23
    i32 352, label %entry.return_crit_edge24
    i32 400, label %entry.return_crit_edge25
    i32 440, label %entry.return_crit_edge26
    i32 441, label %entry.return_crit_edge27
    i32 478, label %entry.return_crit_edge28
    i32 487, label %entry.return_crit_edge29
    i32 537, label %entry.return_crit_edge30
    i32 538, label %entry.return_crit_edge31
    i32 1022, label %entry.return_crit_edge32
    i32 1023, label %entry.return_crit_edge33
    i32 2042, label %entry.return_crit_edge34
    i32 3328, label %entry.return_crit_edge35
    i32 4352, label %entry.return_crit_edge36
    i32 11264, label %entry.return_crit_edge37
    i32 13312, label %entry.return_crit_edge38
    i32 13568, label %entry.return_crit_edge39
    i32 13348, label %entry.return_crit_edge40
    i32 13349, label %entry.return_crit_edge41
    i32 13350, label %entry.return_crit_edge42
    i32 13351, label %entry.return_crit_edge43
    i32 13352, label %entry.return_crit_edge44
    i32 13353, label %entry.return_crit_edge45
    i32 13354, label %entry.return_crit_edge46
    i32 13355, label %entry.return_crit_edge47
    i32 13356, label %entry.return_crit_edge48
    i32 13357, label %entry.return_crit_edge49
    i32 13358, label %entry.return_crit_edge50
    i32 13359, label %entry.return_crit_edge51
    i32 13360, label %entry.return_crit_edge52
    i32 13361, label %entry.return_crit_edge53
    i32 13362, label %entry.return_crit_edge54
    i32 13363, label %entry.return_crit_edge55
    i32 13364, label %entry.return_crit_edge56
    i32 13365, label %entry.return_crit_edge57
    i32 5131, label %entry.return_crit_edge58
    i32 5132, label %entry.return_crit_edge59
    i32 5133, label %entry.return_crit_edge60
    i32 5134, label %entry.return_crit_edge61
    i32 5135, label %entry.return_crit_edge62
    i32 5136, label %entry.return_crit_edge63
    i32 5137, label %entry.return_crit_edge64
    i32 529, label %entry.return_crit_edge65
    i32 530, label %entry.return_crit_edge66
    i32 531, label %entry.return_crit_edge67
    i32 532, label %entry.return_crit_edge68
    i32 490, label %entry.return_crit_edge69
    i32 491, label %entry.return_crit_edge70
    i32 492, label %entry.return_crit_edge71
    i32 493, label %entry.return_crit_edge72
    i32 494, label %entry.return_crit_edge73
    i32 495, label %entry.return_crit_edge74
    i32 496, label %entry.return_crit_edge75
    i32 497, label %entry.return_crit_edge76
    i32 498, label %entry.return_crit_edge77
    i32 499, label %entry.return_crit_edge78
    i32 500, label %entry.return_crit_edge79
    i32 470, label %entry.return_crit_edge80
    i32 471, label %entry.return_crit_edge81
    i32 472, label %entry.return_crit_edge82
    i32 473, label %entry.return_crit_edge83
    i32 428, label %entry.return_crit_edge84
    i32 429, label %entry.return_crit_edge85
    i32 430, label %entry.return_crit_edge86
    i32 431, label %entry.return_crit_edge87
    i32 356, label %entry.return_crit_edge88
    i32 357, label %entry.return_crit_edge89
    i32 358, label %entry.return_crit_edge90
    i32 253, label %entry.return_crit_edge91
    i32 254, label %entry.return_crit_edge92
    i32 255, label %entry.return_crit_edge93
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5682s_headset_detect(ptr noundef %component, i32 noundef %jack_insert) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jack_insert)
  %tobool.not = icmp eq i32 %jack_insert, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 128, i32 noundef 0) #8
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 227, i32 noundef 32768, i32 noundef 0) #8
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 540, i32 noundef 63, i32 noundef 0) #8
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 41472, i32 noundef 41472) #8
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 20480, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 20000, i32 noundef 2) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 20480, i32 noundef 20480) #8
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 512, i32 noundef 512) #8
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 530, i32 noundef 869) #8
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 145, i32 noundef 3072, i32 noundef 0) #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 540, i32 noundef 63, i32 noundef 0) #8
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %sar_mutex.i = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sar_mutex.i, i32 noundef 0) #8
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 128) #8
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 48, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %sar_mutex.i) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 8, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 45000, i32 noundef 50000, i32 noundef 2) #8
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 8, i32 noundef 8) #8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %count.0 = phi i32 [ 0, %if.then ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 17) #8
  %and = and i32 %call9, 3
  %inc = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %count.0)
  %cmp10 = icmp ult i32 %count.0, 49
  %or.cond = select i1 %cmp, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.body11

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body11:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_headset_detect.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_headset_detect, %if.then16)) #8
          to label %do.end18 [label %if.then16], !srcloc !642

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_headset_detect.__UNIQUE_ID_ddebug298, ptr noundef %5, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %and, i32 noundef %inc) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then16, %do.body11
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  br i1 %switch, label %sw.bb, label %do.end18.sw.epilog_crit_edge

do.end18.sw.epilog_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end18
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 530, i32 noundef 588) #8
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 128, i32 noundef 128) #8
  %shl = shl nuw nsw i32 %and, 8
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 768, i32 noundef %shl) #8
  %dapm = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call22 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %dapm, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %sw.bb.if.end25_crit_edge

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rt5682s_sar_power_mode(ptr noundef %component, i32 noundef 2, i32 noundef 1)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb.if.end25_crit_edge
  %call.i100 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 540, i32 noundef 63, i32 noundef 63) #8
  %call1.i101 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 219, i32 noundef 64) #8
  %call2.i102 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 227, i32 noundef 49152, i32 noundef 49152) #8
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 128, i32 noundef 128) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %do.end18.sw.epilog_crit_edge
  %jack_type.0 = phi i32 [ 3, %if.end25 ], [ 1, %do.end18.sw.epilog_crit_edge ]
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 145, i32 noundef 3072, i32 noundef 3072) #8
  tail call void @usleep_range_state(i32 noundef 35000, i32 noundef 40000, i32 noundef 2) #8
  br label %do.body44

if.else:                                          ; preds = %entry
  %dev.i.i103 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i103, align 4
  %driver_data.i.i.i104 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i104, align 4
  %sar_mutex.i105 = getelementptr inbounds %struct.rt5682s_priv, ptr %9, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sar_mutex.i105, i32 noundef 0) #8
  %call12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 49184, i32 noundef 16384) #8
  tail call void @mutex_unlock(ptr noundef %sar_mutex.i105) #8
  %call.i106 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 128, i32 noundef 0) #8
  %call1.i107 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 227, i32 noundef 32768, i32 noundef 0) #8
  %call2.i108 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 540, i32 noundef 63, i32 noundef 0) #8
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 8, i32 noundef 0) #8
  %dapm28 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call29 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %dapm28, ptr noundef nonnull @.str.67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 512, i32 noundef 0) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.else.if.end33_crit_edge
  %call35 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %dapm28, ptr noundef nonnull @.str.68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 8192, i32 noundef 0) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end33.if.end39_crit_edge
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 512, i32 noundef 0) #8
  %call41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 128, i32 noundef 0) #8
  %call42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 0) #8
  br label %do.body44

do.body44:                                        ; preds = %if.end39, %sw.epilog
  %jack_type.1 = phi i32 [ %jack_type.0, %sw.epilog ], [ 0, %if.end39 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_headset_detect.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_headset_detect, %if.then56)) #8
          to label %do.end60 [label %if.then56], !srcloc !642

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %10 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_headset_detect.__UNIQUE_ID_ddebug299, ptr noundef %11, ptr noundef nonnull @.str.69, i32 noundef %jack_type.1) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body44
  ret i32 %jack_type.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt5682s_sar_power_mode(ptr noundef %component, i32 noundef %mode, i32 noundef %jd_step) unnamed_addr #0 align 64 {
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
  %sar_mutex = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sar_mutex, i32 noundef 0) #8
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %mode, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 0) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 48, i32 noundef 48) #8
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 49184, i32 noundef 16384) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 32768, i32 noundef 32768) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 529, i32 noundef 16, i32 noundef 16) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 128) #8
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jd_step)
  %tobool.not = icmp eq i32 %jd_step, 0
  br i1 %tobool.not, label %if.then, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 32, i32 noundef 32) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 49152, i32 noundef 32768) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 49184, i32 noundef 16384) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.70, i32 noundef %mode) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb11, %if.then, %sw.bb6.sw.epilog_crit_edge, %sw.bb
  tail call void @mutex_unlock(ptr noundef %sar_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_probe(ptr noundef %component) #0 align 64 {
entry:
  %init.i.i = alloca %struct.clk_init_data, align 4
  %parent_data.i.i = alloca %struct.clk_parent_data, align 4
  %parent.i.i = alloca ptr, align 4
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
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.214) #8
  %mclk.i = getelementptr inbounds %struct.rt5682s_priv, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %mclk.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  %9 = ptrtoint ptr %call1.i to i32
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %9, label %if.then.i.cleanup_crit_edge [
    i32 -2, label %if.end.i
    i32 0, label %if.then.i.if.end_crit_edge
  ]

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mclk.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %entry.if.end10.i_crit_edge
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dai_clks_hw.i.i = getelementptr %struct.rt5682s_priv, ptr %15, i32 0, i32 10
  %parent_hws.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 4
  %num_parents7.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #8
  %16 = getelementptr inbounds i8, ptr %init.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data.i.i) #8
  %18 = call ptr @memset(ptr %parent_data.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.i.i) #8
  %19 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent.i.i, align 4, !annotation !640
  %mclk.i.i = getelementptr inbounds %struct.rt5682s_priv, ptr %15, i32 0, i32 11
  %20 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mclk.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end10.i.sw.epilog.i.i_crit_edge, label %if.then.i.i

if.end10.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent_data3.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %parent_data.i.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.214, ptr %24, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %23, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %22, align 4
  %29 = ptrtoint ptr %parent_data3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %parent_data.i.i, ptr %parent_data3.i.i, align 4
  %30 = ptrtoint ptr %num_parents7.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %num_parents7.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then.i.i, %if.end10.i.sw.epilog.i.i_crit_edge
  %arrayidx8.i.i = getelementptr %struct.rt5682s_priv, ptr %15, i32 0, i32 1, i32 8, i32 0
  %31 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8.i.i, align 4
  %33 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %init.i.i, align 4
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @rt5682s_dai_clk_ops, ptr %ops.i.i, align 4
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 65, ptr %flags.i.i, align 4
  %init11.i.i = getelementptr %struct.rt5682s_priv, ptr %15, i32 0, i32 10, i32 0, i32 2
  %36 = ptrtoint ptr %init11.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %init.i.i, ptr %init11.i.i, align 4
  %call12.i.i = call i32 @devm_clk_hw_register(ptr noundef %13, ptr noundef %dai_clks_hw.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end19.i.i, label %sw.epilog.i.i.do.end17.i.i_crit_edge

sw.epilog.i.i.do.end17.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %sw.epilog.1.i.i.do.end17.i.i_crit_edge, %sw.epilog.i.i.do.end17.i.i_crit_edge
  %call12.lcssa.i.i = phi i32 [ %call12.i.i, %sw.epilog.i.i.do.end17.i.i_crit_edge ], [ %call12.1.i.i, %sw.epilog.1.i.i.do.end17.i.i_crit_edge ]
  %37 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.218, ptr noundef %38, i32 noundef %call12.lcssa.i.i) #11
  br label %rt5682s_dai_probe_clks.exit.thread17

if.end19.i.i:                                     ; preds = %sw.epilog.i.i
  %39 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node.i.i, align 8
  %tobool20.not.i.i = icmp eq ptr %40, null
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %13, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %dai_clks_hw.i.i) #8
  br label %sw.epilog.1.i.i

if.else.i.i:                                      ; preds = %if.end19.i.i
  %41 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init.i.i, align 4
  %43 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.else.i.i.dev_name.exit.i.i_crit_edge

if.else.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.else.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %46, %if.end.i.i.i ], [ %44, %if.else.i.i.dev_name.exit.i.i_crit_edge ]
  %call25.i.i = call i32 @devm_clk_hw_register_clkdev(ptr noundef %13, ptr noundef %dai_clks_hw.i.i, ptr noundef %42, ptr noundef %retval.0.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %dev_name.exit.i.i.sw.epilog.1.i.i_crit_edge, label %dev_name.exit.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge

dev_name.exit.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge: ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_dai_probe_clks.exit.thread17

dev_name.exit.i.i.sw.epilog.1.i.i_crit_edge:      ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.1.i.i

sw.epilog.1.i.i:                                  ; preds = %dev_name.exit.i.i.sw.epilog.1.i.i_crit_edge, %if.then21.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #8
  %47 = call ptr @memset(ptr %16, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data.i.i) #8
  %48 = call ptr @memset(ptr %parent_data.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.i.i) #8
  %arrayidx.1.i.i = getelementptr %struct.rt5682s_priv, ptr %15, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dai_clks_hw.i.i, ptr %parent.i.i, align 4
  %50 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %parent.i.i, ptr %parent_hws.i.i, align 4
  %51 = ptrtoint ptr %num_parents7.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %num_parents7.i.i, align 4
  %arrayidx8.1.i.i = getelementptr %struct.rt5682s_priv, ptr %15, i32 0, i32 1, i32 8, i32 1
  %52 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx8.1.i.i, align 4
  %54 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %init.i.i, align 4
  %55 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr getelementptr inbounds ([2 x %struct.clk_ops], ptr @rt5682s_dai_clk_ops, i32 0, i32 1), ptr %ops.i.i, align 4
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65, ptr %flags.i.i, align 4
  %init11.1.i.i = getelementptr %struct.rt5682s_priv, ptr %15, i32 0, i32 10, i32 1, i32 2
  %57 = ptrtoint ptr %init11.1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %init.i.i, ptr %init11.1.i.i, align 4
  %call12.1.i.i = call i32 @devm_clk_hw_register(ptr noundef %13, ptr noundef %arrayidx.1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i.i)
  %tobool13.not.1.i.i = icmp eq i32 %call12.1.i.i, 0
  br i1 %tobool13.not.1.i.i, label %if.end19.1.i.i, label %sw.epilog.1.i.i.do.end17.i.i_crit_edge

sw.epilog.1.i.i.do.end17.i.i_crit_edge:           ; preds = %sw.epilog.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i.i

if.end19.1.i.i:                                   ; preds = %sw.epilog.1.i.i
  %58 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i.i, align 8
  %tobool20.not.1.i.i = icmp eq ptr %59, null
  br i1 %tobool20.not.1.i.i, label %if.else.1.i.i, label %if.then21.1.i.i

if.then21.1.i.i:                                  ; preds = %if.end19.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.1.i.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %13, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %arrayidx.1.i.i) #8
  br label %rt5682s_dai_probe_clks.exit.thread

if.else.1.i.i:                                    ; preds = %if.end19.1.i.i
  %60 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init.i.i, align 4
  %62 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.1.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.1.i.i, label %if.end.i.1.i.i, label %if.else.1.i.i.dev_name.exit.1.i.i_crit_edge

if.else.1.i.i.dev_name.exit.1.i.i_crit_edge:      ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.1.i.i

if.end.i.1.i.i:                                   ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %13, align 4
  br label %dev_name.exit.1.i.i

dev_name.exit.1.i.i:                              ; preds = %if.end.i.1.i.i, %if.else.1.i.i.dev_name.exit.1.i.i_crit_edge
  %retval.0.i.1.i.i = phi ptr [ %65, %if.end.i.1.i.i ], [ %63, %if.else.1.i.i.dev_name.exit.1.i.i_crit_edge ]
  %call25.1.i.i = call i32 @devm_clk_hw_register_clkdev(ptr noundef %13, ptr noundef %arrayidx.1.i.i, ptr noundef %61, ptr noundef %retval.0.i.1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1.i.i)
  %tobool26.not.1.i.i = icmp eq i32 %call25.1.i.i, 0
  br i1 %tobool26.not.1.i.i, label %dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread_crit_edge, label %dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge

dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge: ; preds = %dev_name.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_dai_probe_clks.exit.thread17

dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread_crit_edge: ; preds = %dev_name.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_dai_probe_clks.exit.thread

rt5682s_dai_probe_clks.exit.thread17:             ; preds = %dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge, %dev_name.exit.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge, %do.end17.i.i
  %retval.1.ph.i.i = phi i32 [ %call12.lcssa.i.i, %do.end17.i.i ], [ %call25.i.i, %dev_name.exit.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge ], [ %call25.1.i.i, %dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  br label %cleanup

rt5682s_dai_probe_clks.exit.thread:               ; preds = %dev_name.exit.1.i.i.rt5682s_dai_probe_clks.exit.thread_crit_edge, %if.then21.1.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  %lrck.i = getelementptr inbounds %struct.rt5682s_priv, ptr %7, i32 0, i32 14
  %66 = ptrtoint ptr %lrck.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 48000, ptr %lrck.i, align 4
  br label %if.end

if.end:                                           ; preds = %rt5682s_dai_probe_clks.exit.thread, %if.then.i.if.end_crit_edge
  %dapm1 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call4 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm1, ptr noundef nonnull @.str.67) #8
  %call5 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm1, ptr noundef nonnull @.str.68) #8
  %call6 = call i32 @snd_soc_dapm_sync(ptr noundef %dapm1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rt5682s_dai_probe_clks.exit.thread17, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.1.ph.i.i, %rt5682s_dai_probe_clks.exit.thread17 ], [ %9, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_suspend(ptr noundef %component) #0 align 64 {
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
  %jack_detect_work = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #8
  %jd_check_work = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 6
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_check_work) #8
  %hs_jack = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %jack_type = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 227, i32 noundef 32768, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_resume(ptr noundef %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #8
  %hs_jack = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jack_type = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %jack_type, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %sar_mutex.i = getelementptr inbounds %struct.rt5682s_priv, ptr %14, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sar_mutex.i, i32 noundef 0) #8
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 128) #8
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 48, i32 noundef 0) #8
  %call9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 32, i32 noundef 32) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  %call10.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 528, i32 noundef 49152, i32 noundef 32768) #8
  tail call void @mutex_unlock(ptr noundef %sar_mutex.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %15 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %jack_detect_work, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_component_sysclk(ptr noundef %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %freq)
  %cmp = icmp eq i32 %5, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clk_id)
  %cmp1 = icmp eq i32 %7, %clk_id
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %clk_id)
  %8 = icmp ult i32 %clk_id, 4
  br i1 %8, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.234, i32 noundef %clk_id) #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rt5682s_set_component_sysclk, i32 0, i32 %clk_id
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shl = shl nuw nsw i32 %switch.load, 13
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 128, i32 noundef 57344, i32 noundef %shl) #8
  %shl6 = shl nuw nsw i32 %switch.load, 4
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 115, i32 noundef 112, i32 noundef %shl6) #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 160, i32 noundef 112, i32 noundef %shl6) #8
  %10 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src11 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %sysclk_src11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %clk_id, ptr %sysclk_src11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_set_component_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_set_component_sysclk, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !642

if.then16:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_set_component_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %13, ptr noundef nonnull @.str.236, i32 noundef %freq, i32 noundef %clk_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %switch.lookup, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_component_pll(ptr noundef %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
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
  %arrayidx = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 17, i32 %pll_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %source)
  %cmp = icmp eq i32 %5, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 18, i32 %pll_id
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq_in)
  %cmp2 = icmp eq i32 %7, %freq_in
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 19, i32 %pll_id
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %freq_out)
  %cmp5 = icmp eq i32 %9, %freq_out
  br i1 %cmp5, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

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
  %tobool6.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %do.body, label %if.end19

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_set_component_pll, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !642

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_set_component_pll.__UNIQUE_ID_ddebug304, ptr noundef %11, ptr noundef nonnull @.str.238) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %arrayidx15 = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 18, i32 %pll_id
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 19, i32 %pll_id
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx17, align 4
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 128, i32 noundef 57344, i32 noundef 0) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %14 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %source, label %do.end25 [
    i32 0, label %if.end19.sw.epilog_crit_edge
    i32 1, label %sw.bb21
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.239, i32 noundef %source) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %if.end19.sw.epilog_crit_edge
  %.sink = phi i32 [ 256, %sw.bb21 ], [ %source, %if.end19.sw.epilog_crit_edge ]
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 128, i32 noundef 768, i32 noundef %.sink) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog
  %i.080.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [21 x %struct.pll_calc_map], ptr @plla_table, i32 0, i32 %i.080.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %freq_in)
  %cmp1.i = icmp eq i32 %16, %freq_in
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %freq_out.i = getelementptr [21 x %struct.pll_calc_map], ptr @plla_table, i32 0, i32 %i.080.i, i32 1
  %17 = ptrtoint ptr %freq_out.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq_out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %freq_out)
  %cmp3.i = icmp eq i32 %18, %freq_out
  br i1 %cmp3.i, label %find_pll_inter_combination.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %for.body6.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body6.preheader.i:                            ; preds = %for.inc.i
  %19 = zext i32 %freq_in to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %freq_in, label %for.body6.preheader.i.for.inc17.8.i_crit_edge [
    i32 48000000, label %land.lhs.true10.i
    i32 24000000, label %land.lhs.true10.2.i
    i32 19200000, label %land.lhs.true10.4.i
    i32 38400000, label %land.lhs.true10.6.i
    i32 3840000, label %land.lhs.true10.8.i
  ]

for.body6.preheader.i.for.inc17.8.i_crit_edge:    ; preds = %for.body6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.8.i

land.lhs.true10.i:                                ; preds = %for.body6.preheader.i
  %20 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %freq_out, label %land.lhs.true10.i.for.inc17.8.i_crit_edge [
    i32 24576000, label %land.lhs.true10.i.if.then14.i_crit_edge
    i32 22579200, label %if.then14.fold.split.i
  ]

land.lhs.true10.i.if.then14.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

land.lhs.true10.i.for.inc17.8.i_crit_edge:        ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.8.i

if.then14.fold.split.i:                           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then14.fold.split111.i:                        ; preds = %land.lhs.true10.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then14.fold.split112.i:                        ; preds = %land.lhs.true10.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then14.fold.split113.i:                        ; preds = %land.lhs.true10.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then14.i:                                      ; preds = %land.lhs.true10.8.i.if.then14.i_crit_edge, %land.lhs.true10.6.i.if.then14.i_crit_edge, %land.lhs.true10.4.i.if.then14.i_crit_edge, %land.lhs.true10.2.i.if.then14.i_crit_edge, %if.then14.fold.split113.i, %if.then14.fold.split112.i, %if.then14.fold.split111.i, %if.then14.fold.split.i, %land.lhs.true10.i.if.then14.i_crit_edge
  %i.182.lcssa.i = phi i32 [ 0, %land.lhs.true10.i.if.then14.i_crit_edge ], [ 2, %land.lhs.true10.2.i.if.then14.i_crit_edge ], [ 4, %land.lhs.true10.4.i.if.then14.i_crit_edge ], [ 6, %land.lhs.true10.6.i.if.then14.i_crit_edge ], [ 8, %land.lhs.true10.8.i.if.then14.i_crit_edge ], [ 1, %if.then14.fold.split.i ], [ 3, %if.then14.fold.split111.i ], [ 5, %if.then14.fold.split112.i ], [ 7, %if.then14.fold.split113.i ]
  %add.ptr15.i = getelementptr %struct.pll_calc_map, ptr @pllb_table, i32 %i.182.lcssa.i
  %21 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %b_map.sroa.0.0.copyload290 = load i32, ptr %add.ptr15.i, align 4
  %b_map.sroa.6.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 4
  %22 = ptrtoint ptr %b_map.sroa.6.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %b_map.sroa.6.0.copyload291 = load i32, ptr %b_map.sroa.6.0.add.ptr15.i.sroa_idx, align 4
  %b_map.sroa.8.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 8
  %23 = ptrtoint ptr %b_map.sroa.8.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %b_map.sroa.8.0.copyload292 = load i32, ptr %b_map.sroa.8.0.add.ptr15.i.sroa_idx, align 4
  %b_map.sroa.11.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 12
  %24 = ptrtoint ptr %b_map.sroa.11.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %b_map.sroa.11.0.copyload294 = load i32, ptr %b_map.sroa.11.0.add.ptr15.i.sroa_idx, align 4
  %b_map.sroa.14.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 16
  %25 = ptrtoint ptr %b_map.sroa.14.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %b_map.sroa.14.0.copyload296 = load i32, ptr %b_map.sroa.14.0.add.ptr15.i.sroa_idx, align 4
  %b_map.sroa.17.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 20
  %26 = ptrtoint ptr %b_map.sroa.17.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %b_map.sroa.17.0.copyload298 = load i8, ptr %b_map.sroa.17.0.add.ptr15.i.sroa_idx, align 4
  %b_map.sroa.20.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 21
  %27 = ptrtoint ptr %b_map.sroa.20.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %b_map.sroa.20.0.copyload300 = load i8, ptr %b_map.sroa.20.0.add.ptr15.i.sroa_idx, align 1
  %b_map.sroa.24.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 22
  %28 = ptrtoint ptr %b_map.sroa.24.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %b_map.sroa.24.0.copyload303 = load i8, ptr %b_map.sroa.24.0.add.ptr15.i.sroa_idx, align 2
  %b_map.sroa.27.0.add.ptr15.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr15.i, i32 23
  %29 = ptrtoint ptr %b_map.sroa.27.0.add.ptr15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %b_map.sroa.27.0.copyload305 = load i8, ptr %b_map.sroa.27.0.add.ptr15.i.sroa_idx, align 1
  br label %lor.lhs.false32

land.lhs.true10.2.i:                              ; preds = %for.body6.preheader.i
  %30 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %freq_out, label %land.lhs.true10.2.i.for.inc17.8.i_crit_edge [
    i32 24576000, label %land.lhs.true10.2.i.if.then14.i_crit_edge
    i32 22579200, label %if.then14.fold.split111.i
  ]

land.lhs.true10.2.i.if.then14.i_crit_edge:        ; preds = %land.lhs.true10.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

land.lhs.true10.2.i.for.inc17.8.i_crit_edge:      ; preds = %land.lhs.true10.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.8.i

land.lhs.true10.4.i:                              ; preds = %for.body6.preheader.i
  %31 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %freq_out, label %land.lhs.true10.4.i.for.inc17.8.i_crit_edge [
    i32 24576000, label %land.lhs.true10.4.i.if.then14.i_crit_edge
    i32 22579200, label %if.then14.fold.split112.i
  ]

land.lhs.true10.4.i.if.then14.i_crit_edge:        ; preds = %land.lhs.true10.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

land.lhs.true10.4.i.for.inc17.8.i_crit_edge:      ; preds = %land.lhs.true10.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.8.i

land.lhs.true10.6.i:                              ; preds = %for.body6.preheader.i
  %32 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %freq_out, label %land.lhs.true10.6.i.for.inc17.8.i_crit_edge [
    i32 24576000, label %land.lhs.true10.6.i.if.then14.i_crit_edge
    i32 22579200, label %if.then14.fold.split113.i
  ]

land.lhs.true10.6.i.if.then14.i_crit_edge:        ; preds = %land.lhs.true10.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

land.lhs.true10.6.i.for.inc17.8.i_crit_edge:      ; preds = %land.lhs.true10.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.8.i

land.lhs.true10.8.i:                              ; preds = %for.body6.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %freq_out)
  %cmp13.8.i = icmp eq i32 %freq_out, 49152000
  br i1 %cmp13.8.i, label %land.lhs.true10.8.i.if.then14.i_crit_edge, label %land.lhs.true10.8.i.for.inc17.8.i_crit_edge

land.lhs.true10.8.i.for.inc17.8.i_crit_edge:      ; preds = %land.lhs.true10.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.8.i

land.lhs.true10.8.i.if.then14.i_crit_edge:        ; preds = %land.lhs.true10.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

for.inc17.8.i:                                    ; preds = %land.lhs.true10.8.i.for.inc17.8.i_crit_edge, %land.lhs.true10.6.i.for.inc17.8.i_crit_edge, %land.lhs.true10.4.i.for.inc17.8.i_crit_edge, %land.lhs.true10.2.i.for.inc17.8.i_crit_edge, %land.lhs.true10.i.for.inc17.8.i_crit_edge, %for.body6.preheader.i.for.inc17.8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %freq_out)
  %cmp40.i = icmp ne i32 %freq_out, 49152000
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.inc48.i.for.body22.i_crit_edge, %for.inc17.8.i
  %i.286.i = phi i32 [ %dec49.i, %for.inc48.i.for.body22.i_crit_edge ], [ 20, %for.inc17.8.i ]
  %arrayidx23.i = getelementptr [21 x %struct.pll_calc_map], ptr @plla_table, i32 0, i32 %i.286.i
  %33 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %freq_in)
  %cmp25.i = icmp ne i32 %34, %freq_in
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.286.i)
  %cmp29.i = icmp ult i32 %i.286.i, 17
  %or.cond.i = select i1 %cmp25.i, i1 true, i1 %cmp29.i
  %brmerge.i = or i1 %cmp40.i, %or.cond.i
  br i1 %brmerge.i, label %for.inc48.i, label %if.then41.i

if.then41.i:                                      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  %a_map.sroa.6.0.arrayidx23.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx23.i, i32 4
  %35 = ptrtoint ptr %a_map.sroa.6.0.arrayidx23.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %a_map.sroa.6.0.copyload = load i32, ptr %a_map.sroa.6.0.arrayidx23.i.sroa_idx, align 4
  %a_map.sroa.8.0.arrayidx23.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx23.i, i32 8
  %36 = ptrtoint ptr %a_map.sroa.8.0.arrayidx23.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %a_map.sroa.8.0.copyload = load i32, ptr %a_map.sroa.8.0.arrayidx23.i.sroa_idx, align 4
  %a_map.sroa.11.0.arrayidx23.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx23.i, i32 12
  %37 = ptrtoint ptr %a_map.sroa.11.0.arrayidx23.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %a_map.sroa.11.0.copyload = load i32, ptr %a_map.sroa.11.0.arrayidx23.i.sroa_idx, align 4
  %a_map.sroa.14.0.arrayidx23.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx23.i, i32 16
  %38 = ptrtoint ptr %a_map.sroa.14.0.arrayidx23.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %a_map.sroa.14.0.copyload = load i32, ptr %a_map.sroa.14.0.arrayidx23.i.sroa_idx, align 4
  %a_map.sroa.17.0.arrayidx23.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx23.i, i32 20
  %39 = ptrtoint ptr %a_map.sroa.17.0.arrayidx23.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %a_map.sroa.17.0.copyload = load i8, ptr %a_map.sroa.17.0.arrayidx23.i.sroa_idx, align 4
  %a_map.sroa.20.0.arrayidx23.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx23.i, i32 21
  %40 = ptrtoint ptr %a_map.sroa.20.0.arrayidx23.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %a_map.sroa.20.0.copyload = load i8, ptr %a_map.sroa.20.0.arrayidx23.i.sroa_idx, align 1
  br label %lor.lhs.false32

for.inc48.i:                                      ; preds = %for.body22.i
  %dec49.i = add nsw i32 %i.286.i, -1
  %cmp21.i.not = icmp eq i32 %i.286.i, 0
  br i1 %cmp21.i.not, label %lor.lhs.false32.thread436, label %for.inc48.i.for.body22.i_crit_edge

for.inc48.i.for.body22.i_crit_edge:               ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.i

lor.lhs.false32.thread436:                        ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #10
  %pll_comb340454 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 20
  %41 = ptrtoint ptr %pll_comb340454 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -22, ptr %pll_comb340454, align 4
  br label %do.end61

find_pll_inter_combination.exit:                  ; preds = %land.lhs.true.i
  %a_map.sroa.6.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %42 = ptrtoint ptr %a_map.sroa.6.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %a_map.sroa.6.0.copyload308 = load i32, ptr %a_map.sroa.6.0.arrayidx.i.sroa_idx, align 4
  %a_map.sroa.8.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %43 = ptrtoint ptr %a_map.sroa.8.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %a_map.sroa.8.0.copyload309 = load i32, ptr %a_map.sroa.8.0.arrayidx.i.sroa_idx, align 4
  %a_map.sroa.11.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %44 = ptrtoint ptr %a_map.sroa.11.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %a_map.sroa.11.0.copyload311 = load i32, ptr %a_map.sroa.11.0.arrayidx.i.sroa_idx, align 4
  %a_map.sroa.14.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 16
  %45 = ptrtoint ptr %a_map.sroa.14.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %a_map.sroa.14.0.copyload313 = load i32, ptr %a_map.sroa.14.0.arrayidx.i.sroa_idx, align 4
  %a_map.sroa.17.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 20
  %46 = ptrtoint ptr %a_map.sroa.17.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %46)
  %a_map.sroa.17.0.copyload315 = load i8, ptr %a_map.sroa.17.0.arrayidx.i.sroa_idx, align 4
  %a_map.sroa.20.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 21
  %47 = ptrtoint ptr %a_map.sroa.20.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %47)
  %a_map.sroa.20.0.copyload317 = load i8, ptr %a_map.sroa.20.0.arrayidx.i.sroa_idx, align 1
  %pll_comb = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 20
  %48 = ptrtoint ptr %pll_comb to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pll_comb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pll_id)
  %cmp28 = icmp eq i32 %pll_id, 0
  br i1 %cmp28, label %find_pll_inter_combination.exit.do.body41_crit_edge, label %find_pll_inter_combination.exit.do.end61_crit_edge

find_pll_inter_combination.exit.do.end61_crit_edge: ; preds = %find_pll_inter_combination.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61

find_pll_inter_combination.exit.do.body41_crit_edge: ; preds = %find_pll_inter_combination.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

lor.lhs.false32:                                  ; preds = %if.then41.i, %if.then14.i
  %a_map.sroa.20.0.ph = phi i8 [ -1, %if.then14.i ], [ %a_map.sroa.20.0.copyload, %if.then41.i ]
  %a_map.sroa.17.0.ph = phi i8 [ -1, %if.then14.i ], [ %a_map.sroa.17.0.copyload, %if.then41.i ]
  %a_map.sroa.14.0.ph = phi i32 [ -1, %if.then14.i ], [ %a_map.sroa.14.0.copyload, %if.then41.i ]
  %a_map.sroa.11.0.ph = phi i32 [ -1, %if.then14.i ], [ %a_map.sroa.11.0.copyload, %if.then41.i ]
  %a_map.sroa.8.0.ph = phi i32 [ -1, %if.then14.i ], [ %a_map.sroa.8.0.copyload, %if.then41.i ]
  %a_map.sroa.6.0.ph = phi i32 [ -1, %if.then14.i ], [ %a_map.sroa.6.0.copyload, %if.then41.i ]
  %a_map.sroa.0.0.ph = phi i32 [ -1, %if.then14.i ], [ %freq_in, %if.then41.i ]
  %b_map.sroa.27.0.ph = phi i8 [ %b_map.sroa.27.0.copyload305, %if.then14.i ], [ 0, %if.then41.i ]
  %b_map.sroa.24.0.ph = phi i8 [ %b_map.sroa.24.0.copyload303, %if.then14.i ], [ 0, %if.then41.i ]
  %b_map.sroa.20.0.ph = phi i8 [ %b_map.sroa.20.0.copyload300, %if.then14.i ], [ 0, %if.then41.i ]
  %b_map.sroa.17.0.ph = phi i8 [ %b_map.sroa.17.0.copyload298, %if.then14.i ], [ 1, %if.then41.i ]
  %b_map.sroa.14.0.ph = phi i32 [ %b_map.sroa.14.0.copyload296, %if.then14.i ], [ 0, %if.then41.i ]
  %b_map.sroa.11.0.ph = phi i32 [ %b_map.sroa.11.0.copyload294, %if.then14.i ], [ 6, %if.then41.i ]
  %b_map.sroa.8.0.ph = phi i32 [ %b_map.sroa.8.0.copyload292, %if.then14.i ], [ 0, %if.then41.i ]
  %b_map.sroa.6.0.ph = phi i32 [ %b_map.sroa.6.0.copyload291, %if.then14.i ], [ 49152000, %if.then41.i ]
  %b_map.sroa.0.0.ph = phi i32 [ %b_map.sroa.0.0.copyload290, %if.then14.i ], [ 3840000, %if.then41.i ]
  %retval.0.i289.ph = phi i32 [ 1, %if.then14.i ], [ 2, %if.then41.i ]
  %pll_comb340 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 20
  %49 = ptrtoint ptr %pll_comb340 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i289.ph, ptr %pll_comb340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pll_id)
  %cmp33 = icmp eq i32 %pll_id, 1
  br i1 %cmp33, label %lor.lhs.false32.do.body41_crit_edge, label %lor.lhs.false32.do.end61_crit_edge

lor.lhs.false32.do.end61_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61

lor.lhs.false32.do.body41_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

do.body41:                                        ; preds = %lor.lhs.false32.do.body41_crit_edge, %find_pll_inter_combination.exit.do.body41_crit_edge
  %pll_comb395 = phi ptr [ %pll_comb, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %pll_comb340, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.0.0391 = phi i32 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.0.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.6.0389 = phi i32 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.6.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.8.0385 = phi i32 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.8.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.11.0382 = phi i32 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.11.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.14.0378 = phi i32 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.14.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.17.0375 = phi i8 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.17.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.20.0372 = phi i8 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.20.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.24.0369 = phi i8 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.24.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %b_map.sroa.27.0366 = phi i8 [ -1, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %b_map.sroa.27.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.0.0364 = phi i32 [ %freq_in, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.0.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.6.0362 = phi i32 [ %a_map.sroa.6.0.copyload308, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.6.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.8.0358 = phi i32 [ %a_map.sroa.8.0.copyload309, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.8.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.11.0355 = phi i32 [ %a_map.sroa.11.0.copyload311, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.11.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.14.0351 = phi i32 [ %a_map.sroa.14.0.copyload313, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.14.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.17.0348 = phi i8 [ %a_map.sroa.17.0.copyload315, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.17.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  %a_map.sroa.20.0345 = phi i8 [ %a_map.sroa.20.0.copyload317, %find_pll_inter_combination.exit.do.body41_crit_edge ], [ %a_map.sroa.20.0.ph, %lor.lhs.false32.do.body41_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_set_component_pll, %if.then53)) #8
          to label %if.end65 [label %if.then53], !srcloc !642

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %add = add nuw nsw i32 %pll_id, 1
  %52 = ptrtoint ptr %pll_comb395 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pll_comb395, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_set_component_pll.__UNIQUE_ID_ddebug305, ptr noundef %51, ptr noundef nonnull @.str.240, i32 noundef %add, i32 noundef %freq_in, i32 noundef %freq_out, i32 noundef %53) #8
  br label %if.end65

do.end61:                                         ; preds = %lor.lhs.false32.do.end61_crit_edge, %find_pll_inter_combination.exit.do.end61_crit_edge, %lor.lhs.false32.thread436
  %retval.0.i289392435 = phi i32 [ %retval.0.i289.ph, %lor.lhs.false32.do.end61_crit_edge ], [ -22, %lor.lhs.false32.thread436 ], [ 0, %find_pll_inter_combination.exit.do.end61_crit_edge ]
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %add63 = add i32 %pll_id, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.242, i32 noundef %add63, i32 noundef %freq_in, i32 noundef %freq_out, i32 noundef %retval.0.i289392435) #11
  br label %cleanup

if.end65:                                         ; preds = %if.then53, %do.body41
  %56 = ptrtoint ptr %pll_comb395 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pll_comb395, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %57, label %if.end65.if.end119_crit_edge [
    i32 0, label %if.end65.do.body72_crit_edge
    i32 2, label %if.end65.do.body72_crit_edge467
  ]

if.end65.do.body72_crit_edge467:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.end65.do.body72_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.end65.if.end119_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

do.body72:                                        ; preds = %if.end65.do.body72_crit_edge, %if.end65.do.body72_crit_edge467
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_set_component_pll, %if.then84)) #8
          to label %do.end103 [label %if.then84], !srcloc !642

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %a_map.sroa.17.0348)
  %tobool88.not = icmp eq i8 %a_map.sroa.17.0348, 0
  %61 = zext i8 %a_map.sroa.17.0348 to i32
  %62 = zext i8 %a_map.sroa.20.0345 to i32
  %spec.select = select i1 %tobool88.not, i32 %a_map.sroa.8.0358, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %a_map.sroa.20.0345)
  %tobool95.not = icmp eq i8 %a_map.sroa.20.0345, 0
  %cond100 = select i1 %tobool95.not, i32 %a_map.sroa.14.0351, i32 0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_set_component_pll.__UNIQUE_ID_ddebug306, ptr noundef %60, ptr noundef nonnull @.str.244, i32 noundef %a_map.sroa.0.0364, i32 noundef %a_map.sroa.6.0362, i32 noundef %61, i32 noundef %62, i32 noundef %spec.select, i32 noundef %a_map.sroa.11.0355, i32 noundef %cond100) #8
  br label %do.end103

do.end103:                                        ; preds = %if.then84, %do.body72
  %call105 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 152, i32 noundef 511, i32 noundef %a_map.sroa.11.0355) #8
  %shl = shl i32 %a_map.sroa.8.0358, 8
  %or = or i32 %a_map.sroa.14.0351, %shl
  %call108 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 153, i32 noundef 7967, i32 noundef %or) #8
  %63 = shl nuw i8 %a_map.sroa.17.0348, 7
  %64 = shl nuw nsw i8 %a_map.sroa.20.0345, 6
  %or117276 = or i8 %64, %63
  %or117 = zext i8 %or117276 to i32
  %call118 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 157, i32 noundef 192, i32 noundef %or117) #8
  br label %if.end119

if.end119:                                        ; preds = %do.end103, %if.end65.if.end119_crit_edge
  %65 = ptrtoint ptr %pll_comb395 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pll_comb395, align 4
  %.off278 = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off278)
  %switch279 = icmp ult i32 %.off278, 2
  br i1 %switch279, label %do.body128, label %if.end119.if.end207_crit_edge

if.end119.if.end207_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

do.body128:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_set_component_pll, %if.then140)) #8
          to label %if.end201 [label %if.then140], !srcloc !642

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %b_map.sroa.17.0375)
  %tobool145.not = icmp eq i8 %b_map.sroa.17.0375, 0
  %69 = zext i8 %b_map.sroa.17.0375 to i32
  %70 = zext i8 %b_map.sroa.20.0372 to i32
  %spec.select402 = select i1 %tobool145.not, i32 %b_map.sroa.8.0385, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %b_map.sroa.20.0372)
  %tobool160.not = icmp eq i8 %b_map.sroa.20.0372, 0
  %cond166 = select i1 %tobool160.not, i32 %b_map.sroa.14.0378, i32 0
  %71 = zext i8 %b_map.sroa.24.0369 to i32
  %72 = zext i8 %b_map.sroa.27.0366 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_set_component_pll.__UNIQUE_ID_ddebug307, ptr noundef %68, ptr noundef nonnull @.str.245, i32 noundef %b_map.sroa.0.0391, i32 noundef %b_map.sroa.6.0389, i32 noundef %69, i32 noundef %70, i32 noundef %spec.select402, i32 noundef %b_map.sroa.11.0382, i32 noundef %cond166, i32 noundef %71, i32 noundef %72) #8
  br label %if.end201

if.end201:                                        ; preds = %if.then140, %do.body128
  %call175 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 154, i32 noundef 1023, i32 noundef %b_map.sroa.11.0382) #8
  %shl177 = shl i32 %b_map.sroa.8.0385, 8
  %or179 = or i32 %b_map.sroa.14.0378, %shl177
  %call180 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 155, i32 noundef 7967, i32 noundef %or179) #8
  %73 = zext i8 %b_map.sroa.27.0366 to i32
  %shl184 = shl nuw nsw i32 %73, 13
  %74 = zext i8 %b_map.sroa.24.0369 to i32
  %shl188 = shl nuw nsw i32 %74, 12
  %75 = zext i8 %b_map.sroa.17.0375 to i32
  %shl193 = shl nuw nsw i32 %75, 11
  %76 = zext i8 %b_map.sroa.20.0372 to i32
  %shl198 = shl nuw nsw i32 %76, 10
  %or189 = or i32 %shl198, %shl193
  %or194 = or i32 %or189, %shl188
  %or199 = or i32 %or194, %shl184
  %call200 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 157, i32 noundef 15360, i32 noundef %or199) #8
  %77 = ptrtoint ptr %pll_comb395 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %pll_comb395, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp203 = icmp eq i32 %.pr, 1
  br i1 %cmp203, label %if.then205, label %if.end201.if.end207_crit_edge

if.end201.if.end207_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

if.then205:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  %call206 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 158, i32 noundef 1, i32 noundef 1) #8
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end201.if.end207_crit_edge, %if.end119.if.end207_crit_edge
  %arrayidx209 = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 18, i32 %pll_id
  %78 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %freq_in, ptr %arrayidx209, align 4
  %arrayidx211 = getelementptr %struct.rt5682s_priv, ptr %3, i32 0, i32 19, i32 %pll_id
  %79 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %freq_out, ptr %arrayidx211, align 4
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %source, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %do.end61, %do.end25, %do.end, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end25 ], [ 0, %if.end207 ], [ -22, %do.end61 ], [ 0, %do.end ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %hs_jack, ptr nocapture noundef readnone %data) #0 align 64 {
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
  %hs_jack1 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hs_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hs_jack, ptr %hs_jack1, align 4
  %tobool.not = icmp eq ptr %hs_jack, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 183, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 159, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jack_detect_work = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 5
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %jd_src = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %jd_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jd_src, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %10, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap6 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap6, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 20, i32 noundef 1792, i32 noundef 1536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap6, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 17, i32 noundef 112, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap6, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 16, i32 noundef 37122, i32 noundef 37122, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap6, align 4
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 528, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap6, align 4
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 192, i32 noundef 49152, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap6, align 4
  %call.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 101, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap6, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 100, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap6, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 159, i32 noundef 49152, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap6, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 183, i32 noundef 40960, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap6, align 4
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 229, i32 noundef 32639, i32 noundef 4112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap6, align 4
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 230, i32 noundef 32639, i32 noundef 4112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap6, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 231, i32 noundef 32639, i32 noundef 4112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap6, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 232, i32 noundef 32639, i32 noundef 4112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %38 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work38 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 5
  %call.i90 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %jack_detect_work38, i32 noundef 25) #8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap42 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap42, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 183, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap42, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 159, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.246) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb41, %sw.bb, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 0, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 97, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap3 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap3, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 97, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap6 = getelementptr inbounds %struct.rt5682s_priv, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap6, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 97, i32 noundef 257, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_filter_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 192) #8
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp = icmp eq i8 %7, 15
  %and = and i32 %call2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and)
  %cmp4 = icmp eq i32 %and, 768
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  %arrayidx = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 14, i32 1
  %lrck6 = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 14
  %ref.0.in.in = select i1 %or.cond, ptr %arrayidx, ptr %lrck6
  %8 = ptrtoint ptr %ref.0.in.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %ref.0.in = load i32, ptr %ref.0.in.in, align 4
  %ref.0 = shl i32 %ref.0.in, 8
  %call9 = tail call fastcc i32 @rt5682s_div_sel(ptr noundef %5, i32 noundef %ref.0, ptr noundef nonnull @set_filter_clk.div_f, i32 noundef 11)
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp12 = icmp eq i8 %10, 15
  %reg.0 = select i1 %cmp12, i32 133, i32 132
  %shl = shl i32 %call9, 8
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %reg.0, i32 noundef 3840, i32 noundef %shl) #8
  %sysclk = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %12)
  %cmp22.not = icmp sgt i32 %12, 12288000
  br i1 %cmp22.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %12)
  %cmp22.not.1 = icmp ugt i32 %12, 24576000
  br i1 %cmp22.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152000, i32 %12)
  %cmp22.not.2 = icmp ugt i32 %12, 49152000
  br i1 %cmp22.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 73728000, i32 %12)
  %cmp22.not.3 = icmp ugt i32 %12, 73728000
  br i1 %cmp22.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304000, i32 %12)
  %cmp22.not.4 = icmp ugt i32 %12, 98304000
  br i1 %cmp22.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456000, i32 %12)
  %cmp22.not.5 = icmp ugt i32 %12, 147456000
  br i1 %cmp22.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608000, i32 %12)
  %cmp22.not.6 = icmp ugt i32 %12, 196608000
  br i1 %cmp22.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 294912000, i32 %12)
  %cmp22.not.7 = icmp ugt i32 %12, 294912000
  br i1 %cmp22.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216000, i32 %12)
  %cmp22.not.8 = icmp ugt i32 %12, 393216000
  br i1 %cmp22.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824000, i32 %12)
  %cmp22.not.9 = icmp ugt i32 %12, 589824000
  %spec.select = select i1 %cmp22.not.9, i32 10, i32 9
  br label %for.end

for.end:                                          ; preds = %for.inc.8, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ %spec.select, %for.inc.8 ]
  %shl26 = shl nuw nsw i32 %idx.0.lcssa, 12
  %or = or i32 %shl26, %idx.0.lcssa
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 115, i32 noundef 61455, i32 noundef %or) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dmic_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dmic_clk_rate2 = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %dmic_clk_rate2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmic_clk_rate2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 3072000, i32 %7
  %call5 = tail call fastcc i32 @rt5682s_div_sel(ptr noundef %5, i32 noundef %spec.select, ptr noundef nonnull @set_dmic_clk.div, i32 noundef 12)
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 110, i32 noundef 15, i32 noundef %call5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dmic_power(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dmic_delay = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %dmic_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmic_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 50, i32 %7
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 128) #8
  %and = lshr i32 %call4, 13
  %shr = and i32 %and, 7
  %shr.off = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off)
  %switch = icmp ult i32 %shr.off, 2
  br i1 %switch, label %if.then6, label %sw.bb.if.end8_crit_edge

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 8704, i32 noundef 8704) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sw.bb.if.end8_crit_edge
  tail call void @msleep(i32 noundef %spec.select) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %jack_type = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 21
  %9 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.then11, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb9
  %call13 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %1, ptr noundef nonnull @.str.67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 512, i32 noundef 0) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then11.if.end17_crit_edge
  %11 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dapm, align 4
  %call19 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %12, ptr noundef nonnull @.str.68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 8192, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %if.end17.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %if.end8, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_stereo1_adc_mixl_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %amic_delay = getelementptr inbounds %struct.rt5682s_priv, ptr %6, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %amic_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %amic_delay, align 4
  tail call void @msleep(i32 noundef %8) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb ], [ 32768, %entry.sw.epilog.sink.split_crit_edge ]
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 28, i32 noundef 32768, i32 noundef %.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_i2s_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %7)
  %cmp2 = icmp eq i8 %7, 14
  %. = zext i1 %cmp2 to i32
  %.45 = select i1 %cmp2, i32 160, i32 115
  %.46 = select i1 %cmp2, i32 15, i32 3840
  %.47 = select i1 %cmp2, i32 0, i32 8
  %arrayidx = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 16, i32 %.
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sysclk = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysclk, align 4
  %arrayidx8 = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 14, i32 %.
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp1.i = icmp slt i32 %13, 1
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end7.do.end_crit_edge, label %if.end.i

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.end7
  %shl.i = shl i32 %13, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %11)
  %cmp3.i = icmp eq i32 %shl.i, %11
  br i1 %cmp3.i, label %if.end.i.do.body14_crit_edge, label %for.inc.i

if.end.i.do.body14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.i:                                        ; preds = %if.end.i
  %mul.1.i = shl i32 %13, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %11)
  %cmp3.1.i = icmp eq i32 %mul.1.i, %11
  br i1 %cmp3.1.i, label %for.inc.i.do.body14_crit_edge, label %for.inc.1.i

for.inc.i.do.body14_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = mul i32 %13, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %11)
  %cmp3.2.i = icmp eq i32 %mul.2.i, %11
  br i1 %cmp3.2.i, label %for.inc.1.i.do.body14_crit_edge, label %for.inc.2.i

for.inc.1.i.do.body14_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul.3.i = shl i32 %13, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %11)
  %cmp3.3.i = icmp eq i32 %mul.3.i, %11
  br i1 %cmp3.3.i, label %for.inc.2.i.do.body14_crit_edge, label %for.inc.3.i

for.inc.2.i.do.body14_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %mul.4.i = mul i32 %13, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4.i, i32 %11)
  %cmp3.4.i = icmp eq i32 %mul.4.i, %11
  br i1 %cmp3.4.i, label %for.inc.3.i.do.body14_crit_edge, label %for.inc.4.i

for.inc.3.i.do.body14_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %mul.5.i = shl i32 %13, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5.i, i32 %11)
  %cmp3.5.i = icmp eq i32 %mul.5.i, %11
  br i1 %cmp3.5.i, label %for.inc.4.i.do.body14_crit_edge, label %for.inc.5.i

for.inc.4.i.do.body14_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %mul.6.i = mul i32 %13, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6.i, i32 %11)
  %cmp3.6.i = icmp eq i32 %mul.6.i, %11
  br i1 %cmp3.6.i, label %for.inc.5.i.do.body14_crit_edge, label %for.inc.6.i

for.inc.5.i.do.body14_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %mul.7.i = shl i32 %13, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7.i, i32 %11)
  %cmp3.7.i = icmp eq i32 %mul.7.i, %11
  br i1 %cmp3.7.i, label %for.inc.6.i.do.body14_crit_edge, label %for.inc.7.i

for.inc.6.i.do.body14_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %mul.8.i = mul i32 %13, 6144
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.8.i, i32 %11)
  %cmp3.8.i = icmp eq i32 %mul.8.i, %11
  br i1 %cmp3.8.i, label %for.inc.7.i.do.body14_crit_edge, label %for.inc.8.i

for.inc.7.i.do.body14_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %mul.9.i = shl i32 %13, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.9.i, i32 %11)
  %cmp3.9.i = icmp eq i32 %mul.9.i, %11
  br i1 %cmp3.9.i, label %for.inc.8.i.do.body14_crit_edge, label %for.inc.9.i

for.inc.8.i.do.body14_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %mul.10.i = mul i32 %13, 12288
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.10.i, i32 %11)
  %cmp3.10.i = icmp eq i32 %mul.10.i, %11
  br i1 %cmp3.10.i, label %for.inc.9.i.do.body14_crit_edge, label %for.inc.9.i.do.end_crit_edge

for.inc.9.i.do.end_crit_edge:                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.9.i.do.body14_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.end:                                           ; preds = %for.inc.9.i.do.end_crit_edge, %if.end7.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.188) #11
  br label %cleanup

do.body14:                                        ; preds = %for.inc.9.i.do.body14_crit_edge, %for.inc.8.i.do.body14_crit_edge, %for.inc.7.i.do.body14_crit_edge, %for.inc.6.i.do.body14_crit_edge, %for.inc.5.i.do.body14_crit_edge, %for.inc.4.i.do.body14_crit_edge, %for.inc.3.i.do.body14_crit_edge, %for.inc.2.i.do.body14_crit_edge, %for.inc.1.i.do.body14_crit_edge, %for.inc.i.do.body14_crit_edge, %if.end.i.do.body14_crit_edge
  %retval.0.i48.ph = phi i32 [ 9, %for.inc.8.i.do.body14_crit_edge ], [ 8, %for.inc.7.i.do.body14_crit_edge ], [ 7, %for.inc.6.i.do.body14_crit_edge ], [ 6, %for.inc.5.i.do.body14_crit_edge ], [ 5, %for.inc.4.i.do.body14_crit_edge ], [ 4, %for.inc.3.i.do.body14_crit_edge ], [ 3, %for.inc.2.i.do.body14_crit_edge ], [ 2, %for.inc.1.i.do.body14_crit_edge ], [ 1, %for.inc.i.do.body14_crit_edge ], [ 0, %if.end.i.do.body14_crit_edge ], [ 10, %for.inc.9.i.do.body14_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_i2s_clk.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_i2s_clk, %if.then19)) #8
          to label %do.end25 [label %if.then19], !srcloc !642

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_i2s_clk.__UNIQUE_ID_ddebug302, ptr noundef %15, ptr noundef nonnull @.str.190, i32 noundef %17, i32 noundef %retval.0.i48.ph, i32 noundef %.) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body14
  %shl = shl nuw nsw i32 %retval.0.i48.ph, %.47
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %.45, i32 noundef %.46, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end25 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_hp_amp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 96, i32 noundef 96) #8
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 20000, i32 noundef 2) #8
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 27, i32 noundef 27) #8
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 1552, i32 noundef 26214) #8
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 1553, i32 noundef 43050) #8
  %jdet_mutex = getelementptr inbounds %struct.rt5682s_priv, ptr %6, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %jdet_mutex, i32 noundef 0) #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 24577, i32 noundef 24577) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 15104, i32 noundef 112, i32 noundef 80) #8
  tail call void @mutex_unlock(ptr noundef %jdet_mutex) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 24577, i32 noundef 0) #8
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 15104, i32 noundef 112, i32 noundef 32) #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 27, i32 noundef 0) #8
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 96, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sar_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %jack_type = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jack_type, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sar_mutex.i = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sar_mutex.i, i32 noundef 0) #8
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 18, i32 noundef 128, i32 noundef 128) #8
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 48, i32 noundef 0) #8
  %call9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 528, i32 noundef 32, i32 noundef 32) #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  %call10.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 528, i32 noundef 49152, i32 noundef 32768) #8
  tail call void @mutex_unlock(ptr noundef %sar_mutex.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rt5682s_sar_power_mode(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5682s_div_sel(ptr nocapture noundef readonly %rt5682s, i32 noundef %target, ptr nocapture noundef readonly %div, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysclk = getelementptr inbounds %struct.rt5682s_priv, ptr %rt5682s, i32 0, i32 12
  %0 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %target)
  %cmp = icmp slt i32 %1, %target
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %sub = add i32 %size, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %rt5682s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt5682s, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.159, i32 noundef %1) #11
  br label %cleanup

for.cond:                                         ; preds = %if.end16.for.cond_crit_edge, %for.cond.preheader
  %i.0 = phi i32 [ %add, %if.end16.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %smax)
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.end, label %do.body3

do.body3:                                         ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_div_sel.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_div_sel, %if.then6)) #8
          to label %do.end11 [label %if.then6], !srcloc !642

if.then6:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %rt5682s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rt5682s, align 4
  %dev8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %arrayidx = getelementptr i32, ptr %div, i32 %i.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_div_sel.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.161, i32 noundef %i.0, i32 noundef %11) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body3
  %arrayidx12 = getelementptr i32, ptr %div, i32 %i.0
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %mul = mul i32 %13, %target
  %14 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %15)
  %cmp14 = icmp eq i32 %mul, %15
  br i1 %cmp14, label %do.end11.cleanup_crit_edge, label %if.end16

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %add = add nuw i32 %i.0, 1
  %arrayidx17 = getelementptr i32, ptr %div, i32 %add
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %mul18 = mul i32 %17, %target
  %cmp20 = icmp sgt i32 %mul18, %15
  br i1 %cmp20, label %do.body22, label %if.end16.for.cond_crit_edge

if.end16.for.cond_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_div_sel.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_div_sel, %if.then34)) #8
          to label %cleanup [label %if.then34], !srcloc !642

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %rt5682s to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rt5682s, align 4
  %dev36 = getelementptr inbounds %struct.snd_soc_component, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev36, align 4
  %22 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sysclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_div_sel.__UNIQUE_ID_ddebug301, ptr noundef %21, ptr noundef nonnull @.str.162, i32 noundef %23) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %arrayidx42 = getelementptr i32, ptr %div, i32 %smax
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx42, align 4
  %mul43 = mul i32 %25, %target
  %26 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul43, i32 %27)
  %cmp45 = icmp slt i32 %mul43, %27
  br i1 %cmp45, label %do.end49, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %rt5682s to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rt5682s, align 4
  %dev51 = getelementptr inbounds %struct.snd_soc_component, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.164, i32 noundef %27) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %for.end.cleanup_crit_edge, %if.then34, %do.body22, %do.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %i.0, %if.then34 ], [ %sub, %do.end49 ], [ %sub, %for.end.cleanup_crit_edge ], [ %i.0, %do.body22 ], [ %i.0, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_sys_clk_from_plla(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %sink) #6 align 64 {
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
  %sysclk_src = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_comb = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %pll_comb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_comb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp4 = icmp eq i32 %10, 2
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %7, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_sys_clk_from_pllb(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %sink) #6 align 64 {
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
  %sysclk_src = getelementptr inbounds %struct.rt5682s_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is_using_asrc(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 2, label %entry.sw.epilog_crit_edge
    i8 12, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 132, %sw.bb1 ], [ 133, %entry.sw.epilog_crit_edge ]
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %reg.0) #8
  %shr = lshr i32 %call2, 12
  %and = and i32 %shr, 15
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  %. = zext i1 %switch to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_wclk_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -552
  %master.i = getelementptr i8, ptr %hw, i32 52
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_wclk_prepare, %rt5682s_clk_check.exit.thread25)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread25], !srcloc !642

rt5682s_clk_check.exit.thread25:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %5, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 17
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #8
  %call3 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.67) #8
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 99, i32 noundef 512, i32 noundef 512) #8
  %call5 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.68) #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 99, i32 noundef 12288, i32 noundef 8192) #8
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 20000, i32 noundef 2) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 99, i32 noundef 4096, i32 noundef 4096) #8
  %call8 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.127) #8
  %call9 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.91) #8
  %call10 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i) #8
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i24 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rt5682s_clk_check.exit.thread25, %do.body.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %rt5682s_clk_check.exit.thread25 ], [ -22, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5682s_wclk_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -552
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %master.i = getelementptr i8, ptr %hw, i32 52
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_wclk_unprepare, %rt5682s_clk_check.exit.thread24)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread24], !srcloc !642

rt5682s_clk_check.exit.thread24:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #8
  %call3 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.67) #8
  %call4 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.68) #8
  %jack_type = getelementptr i8, ptr %hw, i32 88
  %10 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 99, i32 noundef 12800, i32 noundef 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.127) #8
  %call9 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.91) #8
  %call10 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i) #8
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i23 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %rt5682s_clk_check.exit.thread24, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_wclk_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -552
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %master.i = getelementptr i8, ptr %hw, i32 52
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_wclk_recalc_rate, %rt5682s_clk_check.exit.thread17)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread17], !srcloc !642

rt5682s_clk_check.exit.thread17:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lrck = getelementptr i8, ptr %hw, i32 36
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lrck, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %9, label %do.end [
    i32 48000, label %if.end.cleanup_crit_edge
    i32 44100, label %if.end.cleanup_crit_edge18
  ]

if.end.cleanup_crit_edge18:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223, ptr noundef %call, i32 noundef 44100, i32 noundef 48000) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge18, %rt5682s_clk_check.exit.thread17, %do.body.i
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %rt5682s_clk_check.exit.thread17 ], [ %9, %if.end.cleanup_crit_edge ], [ %9, %if.end.cleanup_crit_edge18 ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_wclk_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -552
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %master.i = getelementptr i8, ptr %hw, i32 52
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_wclk_round_rate, %rt5682s_clk_check.exit.thread12)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread12], !srcloc !642

rt5682s_clk_check.exit.thread12:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %rate, label %do.end [
    i32 48000, label %if.end.cleanup_crit_edge
    i32 44100, label %if.end5.fold.split
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.224, ptr noundef %call, i32 noundef 44100, i32 noundef 48000) #11
  br label %cleanup

if.end5.fold.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5.fold.split, %do.end, %if.end.cleanup_crit_edge, %rt5682s_clk_check.exit.thread12, %do.body.i
  %retval.0 = phi i32 [ 48000, %do.end ], [ %rate, %if.end.cleanup_crit_edge ], [ 44100, %if.end5.fold.split ], [ -22, %rt5682s_clk_check.exit.thread12 ], [ -22, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_wclk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -552
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %master.i = getelementptr i8, ptr %hw, i32 52
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_wclk_set_rate, %rt5682s_clk_check.exit.thread27)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread27], !srcloc !642

rt5682s_clk_check.exit.thread27:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call3 = tail call ptr @clk_get_parent(ptr noundef %9) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.225, i32 noundef 48000000) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000000, i32 %parent_rate)
  %cmp.not = icmp eq i32 %parent_rate, 48000000
  br i1 %cmp.not, label %if.end5.if.end11_crit_edge, label %do.end9

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.228, ptr noundef %call, i32 noundef 48000000) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end5.if.end11_crit_edge
  %mul = shl i32 %rate, 9
  %call12 = tail call i32 @rt5682s_set_component_pll(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 48000000, i32 noundef %mul)
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %sysclk.i = getelementptr inbounds %struct.rt5682s_priv, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysclk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul)
  %cmp.i = icmp eq i32 %19, %mul
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end11.if.end.i_crit_edge

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end11
  %sysclk_src.i = getelementptr inbounds %struct.rt5682s_priv, ptr %17, i32 0, i32 13
  %20 = ptrtoint ptr %sysclk_src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysclk_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp1.i = icmp eq i32 %21, 2
  br i1 %cmp1.i, label %land.lhs.true.i.rt5682s_set_component_sysclk.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.rt5682s_set_component_sysclk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_set_component_sysclk.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end11.if.end.i_crit_edge
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 57344, i32 noundef 16384) #8
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 112, i32 noundef 32) #8
  %call9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 160, i32 noundef 112, i32 noundef 32) #8
  %22 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %sysclk.i, align 4
  %sysclk_src11.i = getelementptr inbounds %struct.rt5682s_priv, ptr %17, i32 0, i32 13
  %23 = ptrtoint ptr %sysclk_src11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %sysclk_src11.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_set_component_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_wclk_set_rate, %if.then16.i)) #8
          to label %rt5682s_set_component_sysclk.exit [label %if.then16.i], !srcloc !642

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_set_component_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %25, ptr noundef nonnull @.str.236, i32 noundef %mul, i32 noundef 2) #8
  br label %rt5682s_set_component_sysclk.exit

rt5682s_set_component_sysclk.exit:                ; preds = %if.then16.i, %if.end.i, %land.lhs.true.i.rt5682s_set_component_sysclk.exit_crit_edge
  %lrck = getelementptr i8, ptr %hw, i32 36
  %26 = ptrtoint ptr %lrck to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rate, ptr %lrck, align 4
  br label %cleanup

cleanup:                                          ; preds = %rt5682s_set_component_sysclk.exit, %rt5682s_clk_check.exit.thread27, %do.body.i
  %retval.0 = phi i32 [ 0, %rt5682s_set_component_sysclk.exit ], [ -22, %rt5682s_clk_check.exit.thread27 ], [ -22, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_bclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -564
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 126) #8
  %and = lshr i32 %call, 8
  %2 = and i32 %and, 3
  %switch.offset = add nuw nsw i32 %2, 5
  %mul7 = shl i32 %parent_rate, %switch.offset
  ret i32 %mul7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_bclk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -564
  %master.i = getelementptr i8, ptr %hw, i32 40
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_bclk_round_rate, %rt5682s_clk_check.exit.thread5)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread5], !srcloc !642

rt5682s_clk_check.exit.thread5:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  %div.i = udiv i32 %rate, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div.i)
  %cmp.i = icmp ult i32 %div.i, 64
  br i1 %cmp.i, label %if.end.rt5682s_bclk_get_factor.exit_crit_edge, label %if.else.i

if.end.rt5682s_bclk_get_factor.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_bclk_get_factor.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i)
  %cmp1.i = icmp ult i32 %div.i, 128
  br i1 %cmp1.i, label %if.else.i.rt5682s_bclk_get_factor.exit_crit_edge, label %if.else3.i

if.else.i.rt5682s_bclk_get_factor.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_bclk_get_factor.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp4.i = icmp ult i32 %div.i, 256
  %..i = select i1 %cmp4.i, i32 128, i32 256
  br label %rt5682s_bclk_get_factor.exit

rt5682s_bclk_get_factor.exit:                     ; preds = %if.else3.i, %if.else.i.rt5682s_bclk_get_factor.exit_crit_edge, %if.end.rt5682s_bclk_get_factor.exit_crit_edge
  %retval.0.i = phi i32 [ 32, %if.end.rt5682s_bclk_get_factor.exit_crit_edge ], [ 64, %if.else.i.rt5682s_bclk_get_factor.exit_crit_edge ], [ %..i, %if.else3.i ]
  %mul = mul i32 %retval.0.i, %9
  br label %cleanup

cleanup:                                          ; preds = %rt5682s_bclk_get_factor.exit, %rt5682s_clk_check.exit.thread5, %do.body.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %rt5682s_bclk_get_factor.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %rt5682s_clk_check.exit.thread5 ], [ -22, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_bclk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -564
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %master.i = getelementptr i8, ptr %hw, i32 40
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5682s_bclk_set_rate, %rt5682s_clk_check.exit.thread28)) #8
          to label %cleanup [label %rt5682s_clk_check.exit.thread28], !srcloc !642

rt5682s_clk_check.exit.thread28:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5682s_clk_check.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.221) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %div.i = udiv i32 %rate, %parent_rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div.i)
  %cmp.i = icmp ult i32 %div.i, 64
  br i1 %cmp.i, label %if.end.rt5682s_bclk_get_factor.exit_crit_edge, label %if.else.i

if.end.rt5682s_bclk_get_factor.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_bclk_get_factor.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i)
  %cmp1.i = icmp ult i32 %div.i, 128
  br i1 %cmp1.i, label %if.else.i.rt5682s_bclk_get_factor.exit_crit_edge, label %if.else3.i

if.else.i.rt5682s_bclk_get_factor.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt5682s_bclk_get_factor.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp4.i = icmp ult i32 %div.i, 256
  %..i = select i1 %cmp4.i, i32 128, i32 256
  br label %rt5682s_bclk_get_factor.exit

rt5682s_bclk_get_factor.exit:                     ; preds = %if.else3.i, %if.else.i.rt5682s_bclk_get_factor.exit_crit_edge, %if.end.rt5682s_bclk_get_factor.exit_crit_edge
  %retval.0.i = phi i32 [ 32, %if.end.rt5682s_bclk_get_factor.exit_crit_edge ], [ 64, %if.else.i.rt5682s_bclk_get_factor.exit_crit_edge ], [ %..i, %if.else3.i ]
  %dai_list = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %rt5682s_bclk_get_factor.exit
  %.pn.in = phi ptr [ %dai_list, %rt5682s_bclk_get_factor.exit ], [ %.pn, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %dai_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id = getelementptr i8, ptr %.pn, i32 -60
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %dai_list, %for.cond.for.end_crit_edge ]
  %dai.0.le = getelementptr i8, ptr %.pn.lcssa, i32 -64
  %tobool.not = icmp eq ptr %dai.0.le, null
  br i1 %tobool.not, label %do.end, label %if.end16

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.230, i32 noundef 0) #11
  br label %cleanup

if.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @rt5682s_set_bclk1_ratio(ptr noundef nonnull %dai.0.le, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %rt5682s_clk_check.exit.thread28, %do.body.i
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -19, %do.end ], [ -22, %rt5682s_clk_check.exit.thread28 ], [ -22, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_bclk1_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #0 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 15, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ratio, ptr %arrayidx, align 4
  %9 = add i32 %ratio, -32
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 27)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %10, label %do.end [
    i32 7, label %sw.bb
    i32 3, label %sw.bb3
    i32 1, label %sw.bb5
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 126, i32 noundef 768, i32 noundef 768) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 126, i32 noundef 768, i32 noundef 512) #8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 126, i32 noundef 768, i32 noundef 256) #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 126, i32 noundef 768, i32 noundef 0) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.232, i32 noundef %ratio) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.283)
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
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 4
  %arrayidx5 = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %arrayidx5, align 4
  %and6 = lshr i32 %fmt, 8
  %11 = and i32 %and6, 15
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %11, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog20_crit_edge
    i32 3, label %sw.bb7
    i32 2, label %sw.bb9
    i32 4, label %sw.bb12
  ]

sw.epilog.sw.epilog20_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.bb9:                                           ; preds = %sw.epilog
  %id10 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %13 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %sw.bb9.sw.epilog20_crit_edge, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb9.sw.epilog20_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.bb12:                                          ; preds = %sw.epilog
  %id13 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %15 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp eq i32 %16, 0
  br i1 %cmp14, label %sw.bb12.sw.epilog20_crit_edge, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb12.sw.epilog20_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb12.sw.epilog20_crit_edge, %sw.bb9.sw.epilog20_crit_edge, %sw.bb7, %sw.epilog.sw.epilog20_crit_edge
  %reg_val.0 = phi i32 [ 256, %sw.bb7 ], [ %11, %sw.epilog.sw.epilog20_crit_edge ], [ 0, %sw.bb9.sw.epilog20_crit_edge ], [ 0, %sw.bb12.sw.epilog20_crit_edge ]
  %tdm_ctrl.0 = phi i32 [ 32768, %sw.bb7 ], [ %11, %sw.epilog.sw.epilog20_crit_edge ], [ 16388, %sw.bb9.sw.epilog20_crit_edge ], [ 49158, %sw.bb12.sw.epilog20_crit_edge ]
  %and21 = and i32 %fmt, 15
  %17 = zext i32 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %and21, label %sw.epilog20.cleanup_crit_edge [
    i32 1, label %sw.epilog20.sw.epilog32_crit_edge
    i32 3, label %sw.bb22
    i32 4, label %sw.bb25
    i32 5, label %sw.bb28
  ]

sw.epilog20.sw.epilog32_crit_edge:                ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog32

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %or23 = or i32 %reg_val.0, 1
  %or24 = or i32 %tdm_ctrl.0, 2048
  br label %sw.epilog32

sw.bb25:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %or26 = or i32 %reg_val.0, 2
  %or27 = or i32 %tdm_ctrl.0, 4096
  br label %sw.epilog32

sw.bb28:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %or29 = or i32 %reg_val.0, 3
  %or30 = or i32 %tdm_ctrl.0, 6144
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb28, %sw.bb25, %sw.bb22, %sw.epilog20.sw.epilog32_crit_edge
  %reg_val.1 = phi i32 [ %or29, %sw.bb28 ], [ %or26, %sw.bb25 ], [ %or23, %sw.bb22 ], [ %reg_val.0, %sw.epilog20.sw.epilog32_crit_edge ]
  %tdm_ctrl.1 = phi i32 [ %or30, %sw.bb28 ], [ %or27, %sw.bb25 ], [ %or24, %sw.bb22 ], [ %tdm_ctrl.0, %sw.epilog20.sw.epilog32_crit_edge ]
  %id33 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %18 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id33, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %19, label %do.end [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb41
  ]

sw.bb34:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 7, i32 noundef %reg_val.1) #8
  %21 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id33, align 4
  %arrayidx38 = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 16, i32 %22
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx38, align 4
  %or39 = or i32 %24, %tdm_ctrl.1
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 126, i32 noundef 63495, i32 noundef %or39) #8
  br label %cleanup

sw.bb41:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp45 = icmp eq i32 %26, 0
  %or47 = or i32 %reg_val.1, 32768
  %spec.select = select i1 %cmp45, i32 %or47, i32 %reg_val.1
  %call49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 33031, i32 noundef %spec.select) #8
  br label %cleanup

do.end:                                           ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.250, i32 noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb41, %sw.bb34, %sw.epilog20.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog20.cleanup_crit_edge ], [ 0, %sw.bb41 ], [ 0, %sw.bb34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = or i32 %rx_mask, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %. = select i1 %3, i32 0, i32 128
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 123, i32 noundef 128, i32 noundef %.) #8
  %switch.tableidx = add i32 %slots, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 7
  br i1 %4, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rt5682s_set_tdm_slot, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 121, i32 noundef 13056, i32 noundef %switch.load) #8
  %7 = add i32 %slot_width, -8
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %8, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %sw.bb12
    i32 2, label %switch.lookup.sw.epilog23_crit_edge
    i32 3, label %sw.bb19
    i32 4, label %sw.bb20
    i32 6, label %sw.bb21
  ]

switch.lookup.sw.epilog23_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb12:                                          ; preds = %switch.lookup
  br i1 %3, label %sw.bb12.sw.epilog23_crit_edge, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb12.sw.epilog23_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.bb19:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.bb20:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.bb21:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb12.sw.epilog23_crit_edge, %switch.lookup.sw.epilog23_crit_edge
  %cl.0 = phi i32 [ 13056, %sw.bb21 ], [ 8704, %sw.bb20 ], [ 4352, %sw.bb19 ], [ 17408, %sw.bb12.sw.epilog23_crit_edge ], [ 0, %switch.lookup.sw.epilog23_crit_edge ]
  %val.1 = phi i32 [ 48, %sw.bb21 ], [ 32, %sw.bb20 ], [ 16, %sw.bb19 ], [ %switch.load, %sw.bb12.sw.epilog23_crit_edge ], [ 0, %switch.lookup.sw.epilog23_crit_edge ]
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 126, i32 noundef 48, i32 noundef %val.1) #8
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 30464, i32 noundef %cl.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog23, %sw.bb12.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog23 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 14, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %call3 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.252, i32 noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %14, %if.end.if.then.i.i.i_crit_edge ], [ %17, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !644
  %add.i.i.i = or i32 %15, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i.i = icmp eq i32 %17, 0
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
  %18 = add i32 %call1.i, -8
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 93, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %23, label %do.end36 [
    i32 0, label %sw.bb16
    i32 1, label %sw.bb24
  ]

sw.bb16:                                          ; preds = %switch.lookup
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rt5682s_hw_params, i32 0, i32 %19
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 112, i32 noundef %switch.load) #8
  %arrayidx.i.i68 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp19 = icmp eq i32 %27, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 128, i32 noundef 128) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 128, i32 noundef 0) #8
  br label %cleanup

sw.bb24:                                          ; preds = %switch.lookup
  %switch.gep70 = getelementptr inbounds [7 x i32], ptr @switch.table.rt5682s_hw_params.258, i32 0, i32 %19
  %28 = ptrtoint ptr %switch.gep70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load71 = load i32, ptr %switch.gep70, align 4
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 112, i32 noundef %switch.load71) #8
  %arrayidx.i.i69 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp27 = icmp eq i32 %30, 1
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 128, i32 noundef 128) #8
  br label %cleanup

if.else30:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 128, i32 noundef 0) #8
  br label %cleanup

do.end36:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.250, i32 noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.else30, %if.then28, %if.else, %if.then20, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end36 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.else30 ], [ 0, %if.then20 ], [ 0, %if.else ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5682s_set_bclk2_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #0 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rt5682s_priv, ptr %5, i32 0, i32 15, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ratio, ptr %arrayidx, align 4
  %9 = zext i32 %ratio to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %ratio, label %do.end [
    i32 64, label %sw.bb
    i32 32, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 2048, i32 noundef 2048) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 2048, i32 noundef 0) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.256, i32 noundef %ratio) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 343)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 343)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !287, !289, !290, !292, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !332, !333, !334, !336, !337, !339, !340, !342, !343, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !427, !428, !429, !431, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !519, !520, !521, !523, !524, !525, !527, !529, !530, !531, !533, !534, !535, !536, !538, !539, !540, !542, !543, !544, !545, !547, !548, !549, !551, !552, !553, !554, !556, !557, !558, !559, !561, !562, !563, !564, !566, !567, !569, !570, !571, !573, !574, !575, !577, !578, !580, !581, !582, !584, !585, !587, !588, !590, !592, !594, !595, !596, !597, !599, !601, !603, !605, !607, !608, !609, !610, !612, !613, !614, !615, !617, !618, !620, !622, !623, !624, !625, !627, !629}
!llvm.module.flags = !{!631, !632, !633, !634, !635, !636, !637, !638}
!llvm.ident = !{!639}

!0 = !{ptr @__ksymtab_rt5682s_sel_asrc_clk_src, !1, !"__ksymtab_rt5682s_sel_asrc_clk_src", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5682s.c", i32 1075, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_rt5682s__309_3225_rt5682s_i2c_driver_init6, !3, !"__initcall__kmod_snd_soc_rt5682s__309_3225_rt5682s_i2c_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/rt5682s.c", i32 3225, i32 1}
!4 = !{ptr @__exitcall_rt5682s_i2c_driver_exit, !3, !"__exitcall_rt5682s_i2c_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5682s.c", i32 3227, i32 1}
!7 = !{ptr @__UNIQUE_ID_author311, !8, !"__UNIQUE_ID_author311", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5682s.c", i32 3228, i32 1}
!9 = !{ptr @__UNIQUE_ID_file312, !10, !"__UNIQUE_ID_file312", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt5682s.c", i32 3229, i32 1}
!11 = !{ptr @__UNIQUE_ID_license313, !10, !"__UNIQUE_ID_license313", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5682s.c", i32 3215, i32 11}
!14 = !{ptr @rt5682s_i2c_driver, !15, !"rt5682s_i2c_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5682s.c", i32 3213, i32 26}
!16 = !{ptr @rt5682s_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rt5682s.c", i32 3055, i32 20}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt5682s.c", i32 3058, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rt5682s_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @rt5682s_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt5682s.c", i32 3068, i32 3}
!29 = !{ptr @rt5682s_i2c_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rt5682s_i2c_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt5682s.c", i32 3078, i32 3}
!33 = !{ptr @rt5682s_i2c_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rt5682s_i2c_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt5682s.c", i32 3085, i32 4}
!37 = !{ptr @rt5682s_i2c_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rt5682s_i2c_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/rt5682s.c", i32 3093, i32 3}
!41 = !{ptr @rt5682s_i2c_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rt5682s_i2c_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @rt5682s_i2c_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt5682s.c", i32 3104, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rt5682s_i2c_probe.__key.20, !47, !"__key", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt5682s.c", i32 3105, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rt5682s_i2c_probe.__key.22, !50, !"__key", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/rt5682s.c", i32 3106, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt5682s.c", i32 3138, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rt5682s_i2c_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rt5682s_i2c_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/rt5682s.c", i32 3158, i32 3}
!59 = !{ptr @rt5682s_i2c_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rt5682s_i2c_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @rt5682s_i2c_probe.__key.31, !62, !"__key", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt5682s.c", i32 3162, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rt5682s_i2c_probe.__key.33, !62, !"__key", i1 false, i1 false}
!65 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rt5682s_i2c_probe.__key.35, !67, !"__key", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt5682s.c", i32 3163, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rt5682s_i2c_probe.__key.37, !67, !"__key", i1 false, i1 false}
!70 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt5682s.c", i32 3170, i32 4}
!73 = !{ptr @rt5682s_i2c_probe._entry.39, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rt5682s_i2c_probe._entry_ptr.41, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt5682s.c", i32 40, i32 41}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt5682s.c", i32 41, i32 41}
!79 = !{ptr @i2s_default_platform_data, !80, !"i2s_default_platform_data", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt5682s.c", i32 36, i32 43}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt5682s.c", i32 2906, i32 32}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt5682s.c", i32 2908, i32 32}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt5682s.c", i32 2910, i32 32}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt5682s.c", i32 2912, i32 32}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt5682s.c", i32 2914, i32 32}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5682s.c", i32 2916, i32 32}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt5682s.c", i32 2920, i32 3}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt5682s.c", i32 2922, i32 45}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt5682s.c", i32 2925, i32 3}
!99 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rt5682s_parse_dt._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @rt5682s_parse_dt._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt5682s.c", i32 2930, i32 3}
!104 = !{ptr @rt5682s_regmap, !105, !"rt5682s_regmap", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt5682s.c", i32 2980, i32 35}
!106 = !{ptr @rt5682s_reg, !107, !"rt5682s_reg", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt5682s.c", i32 74, i32 33}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt5682s.c", i32 45, i32 2}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt5682s.c", i32 46, i32 2}
!112 = distinct !{null, !113, !"rt5682s_supply_names", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt5682s.c", i32 44, i32 20}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt5682s.c", i32 71, i32 3}
!116 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rt5682s_apply_patch_list._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @rt5682s_apply_patch_list._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @patch_list, !120, !"patch_list", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/rt5682s.c", i32 49, i32 34}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/rt5682s.c", i32 2966, i32 3}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rt5682s_calibrate._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rt5682s_calibrate._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt5682s.c", i32 881, i32 5}
!128 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rt5682s_jack_detect_handler._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rt5682s_jack_detect_handler._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/rt5682s.c", i32 771, i32 3}
!133 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rt5682s_headset_detect.__UNIQUE_ID_ddebug298, !132, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt5682s.c", i32 782, i32 55}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5682s.c", i32 800, i32 54}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/rt5682s.c", i32 803, i32 54}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt5682s.c", i32 816, i32 2}
!144 = !{ptr @rt5682s_headset_detect.__UNIQUE_ID_ddebug299, !143, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/rt5682s.c", i32 694, i32 3}
!147 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @rt5682s_sar_power_mode._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @rt5682s_sar_power_mode._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt5682s.c", i32 634, i32 2}
!152 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @rt5682s_button_detect.__UNIQUE_ID_ddebug297, !151, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!154 = !{ptr @rt5682s_soc_component_dev, !155, !"rt5682s_soc_component_dev", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt5682s.c", i32 2884, i32 46}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt5682s.c", i32 1015, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt5682s.c", i32 1019, i32 2}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt5682s.c", i32 1023, i32 2}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt5682s.c", i32 1025, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/rt5682s.c", i32 1029, i32 2}
!166 = !{ptr @rt5682s_snd_controls, !167, !"rt5682s_snd_controls", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt5682s.c", i32 1013, i32 38}
!168 = !{ptr @dac_vol_tlv, !169, !"dac_vol_tlv", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt5682s.c", i32 1008, i32 14}
!170 = !{ptr @cbj_bst_tlv, !171, !"cbj_bst_tlv", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt5682s.c", i32 1011, i32 14}
!172 = !{ptr @adc_vol_tlv, !173, !"adc_vol_tlv", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt5682s.c", i32 1009, i32 14}
!174 = !{ptr @adc_bst_tlv, !175, !"adc_bst_tlv", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt5682s.c", i32 1010, i32 14}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt5682s.c", i32 1611, i32 2}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt5682s.c", i32 1613, i32 2}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt5682s.c", i32 1615, i32 2}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt5682s.c", i32 1621, i32 2}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt5682s.c", i32 1623, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt5682s.c", i32 1625, i32 2}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/rt5682s.c", i32 1627, i32 2}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt5682s.c", i32 1629, i32 2}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/rt5682s.c", i32 1631, i32 2}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt5682s.c", i32 1633, i32 2}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt5682s.c", i32 1635, i32 2}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt5682s.c", i32 1639, i32 2}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt5682s.c", i32 1641, i32 2}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt5682s.c", i32 1643, i32 2}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/rt5682s.c", i32 1645, i32 2}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt5682s.c", i32 1647, i32 2}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/rt5682s.c", i32 1651, i32 2}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt5682s.c", i32 1653, i32 2}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/rt5682s.c", i32 1657, i32 2}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt5682s.c", i32 1658, i32 2}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/rt5682s.c", i32 1660, i32 2}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/rt5682s.c", i32 1662, i32 2}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/rt5682s.c", i32 1664, i32 2}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt5682s.c", i32 1668, i32 2}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/rt5682s.c", i32 1671, i32 2}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt5682s.c", i32 1673, i32 2}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/rt5682s.c", i32 1675, i32 2}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/rt5682s.c", i32 1677, i32 2}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt5682s.c", i32 1681, i32 2}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/rt5682s.c", i32 1682, i32 2}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/rt5682s.c", i32 1684, i32 2}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/rt5682s.c", i32 1686, i32 2}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/rt5682s.c", i32 1688, i32 2}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/rt5682s.c", i32 1692, i32 2}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/rt5682s.c", i32 1694, i32 2}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/rt5682s.c", i32 1696, i32 2}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/rt5682s.c", i32 1698, i32 2}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/rt5682s.c", i32 1700, i32 2}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/rt5682s.c", i32 1702, i32 2}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/rt5682s.c", i32 1704, i32 2}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/rt5682s.c", i32 1708, i32 2}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/rt5682s.c", i32 1710, i32 2}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/rt5682s.c", i32 1714, i32 2}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/rt5682s.c", i32 1719, i32 2}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/rt5682s.c", i32 1722, i32 2}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/rt5682s.c", i32 1724, i32 2}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/rt5682s.c", i32 1726, i32 2}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/rt5682s.c", i32 1727, i32 2}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/rt5682s.c", i32 1730, i32 2}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/rt5682s.c", i32 1732, i32 2}
!276 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/rt5682s.c", i32 1734, i32 2}
!278 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/rt5682s.c", i32 1736, i32 2}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/rt5682s.c", i32 1738, i32 2}
!282 = !{ptr @.str.136, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/rt5682s.c", i32 1741, i32 2}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/rt5682s.c", i32 1744, i32 2}
!286 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.139, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/rt5682s.c", i32 1746, i32 2}
!289 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.141, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/rt5682s.c", i32 1748, i32 2}
!292 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/rt5682s.c", i32 1752, i32 2}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/rt5682s.c", i32 1754, i32 2}
!297 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/rt5682s.c", i32 1758, i32 2}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/rt5682s.c", i32 1759, i32 2}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/rt5682s.c", i32 1762, i32 2}
!303 = !{ptr @.str.148, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/rt5682s.c", i32 1764, i32 2}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/rt5682s.c", i32 1766, i32 2}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/rt5682s.c", i32 1770, i32 2}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/rt5682s.c", i32 1771, i32 2}
!311 = !{ptr @.str.152, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/rt5682s.c", i32 1774, i32 2}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/rt5682s.c", i32 1778, i32 2}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/rt5682s.c", i32 1780, i32 2}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/rt5682s.c", i32 1782, i32 2}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/rt5682s.c", i32 1790, i32 2}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/rt5682s.c", i32 1791, i32 2}
!323 = !{ptr @rt5682s_dapm_widgets, !324, !"rt5682s_dapm_widgets", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/rt5682s.c", i32 1610, i32 41}
!325 = !{ptr @set_filter_clk.div_f, !326, !"div_f", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/rt5682s.c", i32 1157, i32 19}
!327 = distinct !{null, !328, !"div_o", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/rt5682s.c", i32 1158, i32 19}
!329 = !{ptr @.str.159, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/rt5682s.c", i32 1083, i32 3}
!331 = !{ptr @.str.160, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @rt5682s_div_sel._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @rt5682s_div_sel._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.161, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/rt5682s.c", i32 1089, i32 3}
!336 = !{ptr @rt5682s_div_sel.__UNIQUE_ID_ddebug300, !335, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!337 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/rt5682s.c", i32 1093, i32 4}
!339 = !{ptr @rt5682s_div_sel.__UNIQUE_ID_ddebug301, !338, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!340 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/rt5682s.c", i32 1100, i32 3}
!342 = !{ptr @rt5682s_div_sel._entry.163, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @rt5682s_div_sel._entry_ptr.165, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @set_dmic_clk.div, !345, !"div", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/rt5682s.c", i32 1138, i32 19}
!346 = !{ptr @.str.166, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/rt5682s.c", i32 1498, i32 2}
!348 = !{ptr @rt5682s_rec1_l_mix, !349, !"rt5682s_rec1_l_mix", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/rt5682s.c", i32 1497, i32 38}
!350 = !{ptr @rt5682s_rec1_r_mix, !351, !"rt5682s_rec1_r_mix", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/rt5682s.c", i32 1502, i32 38}
!352 = !{ptr @.str.169, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/rt5682s.c", i32 1517, i32 2}
!354 = !{ptr @rt5682s_sto1_adc1l_mux, !355, !"rt5682s_sto1_adc1l_mux", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/rt5682s.c", i32 1516, i32 38}
!356 = !{ptr @rt5682s_sto1_adc1l_enum, !357, !"rt5682s_sto1_adc1l_enum", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/rt5682s.c", i32 1513, i32 8}
!358 = !{ptr @.str.170, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/rt5682s.c", i32 1510, i32 2}
!360 = !{ptr @.str.171, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/rt5682s.c", i32 1510, i32 13}
!362 = !{ptr @rt5682s_sto1_adc1_src, !363, !"rt5682s_sto1_adc1_src", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/rt5682s.c", i32 1509, i32 27}
!364 = !{ptr @rt5682s_sto1_adc1r_mux, !365, !"rt5682s_sto1_adc1r_mux", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/rt5682s.c", i32 1522, i32 38}
!366 = !{ptr @rt5682s_sto1_adc1r_enum, !367, !"rt5682s_sto1_adc1r_enum", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/rt5682s.c", i32 1519, i32 8}
!368 = !{ptr @.str.172, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/rt5682s.c", i32 1553, i32 2}
!370 = !{ptr @rt5682s_sto1_adc2l_mux, !371, !"rt5682s_sto1_adc2l_mux", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/rt5682s.c", i32 1552, i32 38}
!372 = !{ptr @rt5682s_sto1_adc2l_enum, !373, !"rt5682s_sto1_adc2l_enum", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/rt5682s.c", i32 1549, i32 8}
!374 = !{ptr @.str.173, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/rt5682s.c", i32 1546, i32 13}
!376 = !{ptr @rt5682s_sto1_adc2_src, !377, !"rt5682s_sto1_adc2_src", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/rt5682s.c", i32 1545, i32 27}
!378 = !{ptr @.str.174, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/rt5682s.c", i32 1559, i32 2}
!380 = !{ptr @rt5682s_sto1_adc2r_mux, !381, !"rt5682s_sto1_adc2r_mux", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/rt5682s.c", i32 1558, i32 38}
!382 = !{ptr @rt5682s_sto1_adc2r_enum, !383, !"rt5682s_sto1_adc2r_enum", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/rt5682s.c", i32 1555, i32 8}
!384 = !{ptr @.str.175, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/rt5682s.c", i32 1535, i32 2}
!386 = !{ptr @rt5682s_sto1_adcl_mux, !387, !"rt5682s_sto1_adcl_mux", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/rt5682s.c", i32 1534, i32 38}
!388 = !{ptr @rt5682s_sto1_adcl_enum, !389, !"rt5682s_sto1_adcl_enum", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/rt5682s.c", i32 1531, i32 8}
!390 = !{ptr @rt5682s_sto1_adc_src, !391, !"rt5682s_sto1_adc_src", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/rt5682s.c", i32 1527, i32 27}
!392 = !{ptr @.str.176, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/rt5682s.c", i32 1541, i32 2}
!394 = !{ptr @rt5682s_sto1_adcr_mux, !395, !"rt5682s_sto1_adcr_mux", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/rt5682s.c", i32 1540, i32 38}
!396 = !{ptr @rt5682s_sto1_adcr_enum, !397, !"rt5682s_sto1_adcr_enum", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/rt5682s.c", i32 1537, i32 8}
!398 = !{ptr @.str.177, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/rt5682s.c", i32 1575, i32 2}
!400 = !{ptr @rt5682s_if1_adc_slot_mux, !401, !"rt5682s_if1_adc_slot_mux", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/rt5682s.c", i32 1574, i32 38}
!402 = !{ptr @rt5682s_if1_adc_slot_enum, !403, !"rt5682s_if1_adc_slot_enum", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/rt5682s.c", i32 1570, i32 8}
!404 = !{ptr @.str.178, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/rt5682s.c", i32 1567, i32 2}
!406 = !{ptr @.str.179, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/rt5682s.c", i32 1567, i32 12}
!408 = !{ptr @.str.180, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/rt5682s.c", i32 1567, i32 22}
!410 = !{ptr @.str.181, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/rt5682s.c", i32 1567, i32 32}
!412 = !{ptr @rt5682s_if1_adc_slot_src, !413, !"rt5682s_if1_adc_slot_src", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/rt5682s.c", i32 1566, i32 27}
!414 = !{ptr @rt5682s_if1_adc_slot_values, !415, !"rt5682s_if1_adc_slot_values", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/rt5682s.c", i32 1562, i32 27}
!416 = !{ptr @.str.182, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/rt5682s.c", i32 1455, i32 2}
!418 = !{ptr @.str.184, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/rt5682s.c", i32 1457, i32 2}
!420 = !{ptr @rt5682s_sto1_adc_l_mix, !421, !"rt5682s_sto1_adc_l_mix", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/rt5682s.c", i32 1454, i32 38}
!422 = !{ptr @rt5682s_sto1_adc_r_mix, !423, !"rt5682s_sto1_adc_r_mix", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/rt5682s.c", i32 1461, i32 38}
!424 = !{ptr @.str.188, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/rt5682s.c", i32 1257, i32 3}
!426 = !{ptr @.str.189, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @set_i2s_clk._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @set_i2s_clk._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.190, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/rt5682s.c", i32 1261, i32 2}
!431 = !{ptr @set_i2s_clk.__UNIQUE_ID_ddebug302, !430, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!432 = distinct !{null, !433, !"pd", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/rt5682s.c", i32 1109, i32 19}
!434 = !{ptr @rt5682s_if1_01_adc_swap_mux, !435, !"rt5682s_if1_01_adc_swap_mux", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/rt5682s.c", i32 1441, i32 38}
!436 = !{ptr @rt5682s_if1_01_adc_enum, !437, !"rt5682s_if1_01_adc_enum", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/rt5682s.c", i32 1426, i32 8}
!438 = !{ptr @.str.191, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/rt5682s.c", i32 1420, i32 2}
!440 = !{ptr @.str.192, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/rt5682s.c", i32 1420, i32 9}
!442 = !{ptr @.str.193, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/rt5682s.c", i32 1420, i32 16}
!444 = !{ptr @.str.194, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/rt5682s.c", i32 1420, i32 23}
!446 = !{ptr @rt5682s_data_select, !447, !"rt5682s_data_select", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/rt5682s.c", i32 1419, i32 27}
!448 = !{ptr @rt5682s_if1_23_adc_swap_mux, !449, !"rt5682s_if1_23_adc_swap_mux", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/rt5682s.c", i32 1444, i32 38}
!450 = !{ptr @rt5682s_if1_23_adc_enum, !451, !"rt5682s_if1_23_adc_enum", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/rt5682s.c", i32 1429, i32 8}
!452 = !{ptr @rt5682s_if1_45_adc_swap_mux, !453, !"rt5682s_if1_45_adc_swap_mux", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/rt5682s.c", i32 1447, i32 38}
!454 = !{ptr @rt5682s_if1_45_adc_enum, !455, !"rt5682s_if1_45_adc_enum", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/rt5682s.c", i32 1432, i32 8}
!456 = !{ptr @rt5682s_if1_67_adc_swap_mux, !457, !"rt5682s_if1_67_adc_swap_mux", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/rt5682s.c", i32 1450, i32 38}
!458 = !{ptr @rt5682s_if1_67_adc_enum, !459, !"rt5682s_if1_67_adc_enum", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/rt5682s.c", i32 1435, i32 8}
!460 = !{ptr @rt5682s_if2_adc_swap_mux, !461, !"rt5682s_if2_adc_swap_mux", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/rt5682s.c", i32 1438, i32 38}
!462 = !{ptr @rt5682s_if2_adc_enum, !463, !"rt5682s_if2_adc_enum", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/rt5682s.c", i32 1423, i32 8}
!464 = !{ptr @.str.195, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/rt5682s.c", i32 1608, i32 2}
!466 = !{ptr @rt5682s_adcdat_pin_ctrl, !467, !"rt5682s_adcdat_pin_ctrl", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/rt5682s.c", i32 1607, i32 38}
!468 = !{ptr @rt5682s_adcdat_pin_enum, !469, !"rt5682s_adcdat_pin_enum", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/rt5682s.c", i32 1603, i32 8}
!470 = !{ptr @.str.196, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/rt5682s.c", i32 1600, i32 2}
!472 = !{ptr @.str.197, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/rt5682s.c", i32 1600, i32 13}
!474 = !{ptr @rt5682s_adcdat_pin_select, !475, !"rt5682s_adcdat_pin_select", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/rt5682s.c", i32 1599, i32 27}
!476 = !{ptr @rt5682s_adcdat_pin_values, !477, !"rt5682s_adcdat_pin_values", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/rt5682s.c", i32 1595, i32 27}
!478 = !{ptr @.str.198, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/rt5682s.c", i32 1469, i32 2}
!480 = !{ptr @.str.200, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/rt5682s.c", i32 1471, i32 2}
!482 = !{ptr @rt5682s_dac_l_mix, !483, !"rt5682s_dac_l_mix", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/rt5682s.c", i32 1468, i32 38}
!484 = !{ptr @rt5682s_dac_r_mix, !485, !"rt5682s_dac_r_mix", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/rt5682s.c", i32 1475, i32 38}
!486 = !{ptr @.str.204, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/rt5682s.c", i32 1587, i32 2}
!488 = !{ptr @rt5682s_alg_dac_l1_mux, !489, !"rt5682s_alg_dac_l1_mux", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/rt5682s.c", i32 1586, i32 38}
!490 = !{ptr @rt5682s_alg_dac_l1_enum, !491, !"rt5682s_alg_dac_l1_enum", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/rt5682s.c", i32 1583, i32 8}
!492 = !{ptr @.str.205, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/rt5682s.c", i32 1580, i32 2}
!494 = !{ptr @.str.206, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/rt5682s.c", i32 1580, i32 23}
!496 = !{ptr @rt5682s_alg_dac1_src, !497, !"rt5682s_alg_dac1_src", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/rt5682s.c", i32 1579, i32 27}
!498 = !{ptr @.str.207, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/rt5682s.c", i32 1593, i32 2}
!500 = !{ptr @rt5682s_alg_dac_r1_mux, !501, !"rt5682s_alg_dac_r1_mux", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/rt5682s.c", i32 1592, i32 38}
!502 = !{ptr @rt5682s_alg_dac_r1_enum, !503, !"rt5682s_alg_dac_r1_enum", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/rt5682s.c", i32 1589, i32 8}
!504 = !{ptr @.str.208, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/rt5682s.c", i32 1483, i32 2}
!506 = !{ptr @.str.210, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/rt5682s.c", i32 1485, i32 2}
!508 = !{ptr @rt5682s_sto1_dac_l_mix, !509, !"rt5682s_sto1_dac_l_mix", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/rt5682s.c", i32 1482, i32 38}
!510 = !{ptr @rt5682s_sto1_dac_r_mix, !511, !"rt5682s_sto1_dac_r_mix", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/rt5682s.c", i32 1489, i32 38}
!512 = !{ptr @rt5682s_dapm_routes, !513, !"rt5682s_dapm_routes", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/rt5682s.c", i32 1794, i32 40}
!514 = !{ptr @.str.214, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/rt5682s.c", i32 2781, i32 47}
!516 = !{ptr @.str.215, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/rt5682s.c", i32 2747, i32 4}
!518 = !{ptr @.str.216, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @rt5682s_register_dai_clks._entry, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @rt5682s_register_dai_clks._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.218, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/rt5682s.c", i32 2758, i32 4}
!523 = !{ptr @rt5682s_register_dai_clks._entry.217, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @rt5682s_register_dai_clks._entry_ptr.219, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @rt5682s_dai_clk_ops, !526, !"rt5682s_dai_clk_ops", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/rt5682s.c", i32 2699, i32 29}
!527 = !{ptr @.str.220, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/rt5682s.c", i32 2455, i32 3}
!529 = !{ptr @.str.221, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @rt5682s_clk_check.__UNIQUE_ID_ddebug308, !528, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!531 = !{ptr @.str.222, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/rt5682s.c", i32 2534, i32 3}
!533 = !{ptr @.str.223, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @rt5682s_wclk_recalc_rate._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @rt5682s_wclk_recalc_rate._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.224, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/rt5682s.c", i32 2557, i32 3}
!538 = !{ptr @rt5682s_wclk_round_rate._entry, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @rt5682s_wclk_round_rate._entry_ptr, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.225, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/rt5682s.c", i32 2587, i32 3}
!542 = !{ptr @.str.226, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @rt5682s_wclk_set_rate._entry, !541, !"_entry", i1 false, i1 false}
!544 = !{ptr @rt5682s_wclk_set_rate._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.228, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/rt5682s.c", i32 2592, i32 3}
!547 = !{ptr @rt5682s_wclk_set_rate._entry.227, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @rt5682s_wclk_set_rate._entry_ptr.229, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.230, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/rt5682s.c", i32 2691, i32 3}
!551 = !{ptr @.str.231, !550, !"<string literal>", i1 false, i1 false}
!552 = !{ptr @rt5682s_bclk_set_rate._entry, !550, !"_entry", i1 false, i1 false}
!553 = !{ptr @rt5682s_bclk_set_rate._entry_ptr, !550, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.232, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/rt5682s.c", i32 2391, i32 3}
!556 = !{ptr @.str.233, !555, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @rt5682s_set_bclk1_ratio._entry, !555, !"_entry", i1 false, i1 false}
!558 = !{ptr @rt5682s_set_bclk1_ratio._entry_ptr, !555, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.234, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/rt5682s.c", i32 2174, i32 3}
!561 = !{ptr @.str.235, !560, !"<string literal>", i1 false, i1 false}
!562 = !{ptr @rt5682s_set_component_sysclk._entry, !560, !"_entry", i1 false, i1 false}
!563 = !{ptr @rt5682s_set_component_sysclk._entry_ptr, !560, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.236, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/rt5682s.c", i32 2188, i32 2}
!566 = !{ptr @rt5682s_set_component_sysclk.__UNIQUE_ID_ddebug303, !565, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!567 = !{ptr @.str.237, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/rt5682s.c", i32 2280, i32 3}
!569 = !{ptr @.str.238, !568, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug304, !568, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!571 = !{ptr @.str.239, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/rt5682s.c", i32 2298, i32 3}
!573 = !{ptr @rt5682s_set_component_pll._entry, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @rt5682s_set_component_pll._entry_ptr, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.240, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/rt5682s.c", i32 2308, i32 3}
!577 = !{ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug305, !576, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!578 = !{ptr @.str.242, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/rt5682s.c", i32 2312, i32 3}
!580 = !{ptr @rt5682s_set_component_pll._entry.241, !579, !"_entry", i1 false, i1 false}
!581 = !{ptr @rt5682s_set_component_pll._entry_ptr.243, !579, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.244, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/rt5682s.c", i32 2319, i32 3}
!584 = !{ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug306, !583, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!585 = !{ptr @.str.245, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/rt5682s.c", i32 2335, i32 3}
!587 = !{ptr @rt5682s_set_component_pll.__UNIQUE_ID_ddebug307, !586, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!588 = !{ptr @plla_table, !589, !"plla_table", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/rt5682s.c", i32 2194, i32 34}
!590 = !{ptr @pllb_table, !591, !"pllb_table", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/rt5682s.c", i32 2218, i32 34}
!592 = !{ptr @.str.246, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/rt5682s.c", i32 1001, i32 3}
!594 = !{ptr @.str.247, !593, !"<string literal>", i1 false, i1 false}
!595 = !{ptr @rt5682s_set_jack_detect._entry, !593, !"_entry", i1 false, i1 false}
!596 = !{ptr @rt5682s_set_jack_detect._entry_ptr, !593, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @.str.248, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/rt5682s.c", i32 2995, i32 11}
!599 = !{ptr @.str.249, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/rt5682s.c", i32 3014, i32 11}
!601 = !{ptr @rt5682s_dai, !602, !"rt5682s_dai", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/rt5682s.c", i32 2993, i32 34}
!603 = !{ptr @rt5682s_aif1_dai_ops, !604, !"rt5682s_aif1_dai_ops", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/rt5682s.c", i32 2871, i32 37}
!605 = !{ptr @.str.250, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/rt5682s.c", i32 2145, i32 3}
!607 = !{ptr @.str.251, !606, !"<string literal>", i1 false, i1 false}
!608 = !{ptr @rt5682s_set_dai_fmt._entry, !606, !"_entry", i1 false, i1 false}
!609 = !{ptr @rt5682s_set_dai_fmt._entry_ptr, !606, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.252, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/rt5682s.c", i32 2011, i32 3}
!612 = !{ptr @.str.253, !611, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @rt5682s_hw_params._entry, !611, !"_entry", i1 false, i1 false}
!614 = !{ptr @rt5682s_hw_params._entry_ptr, !611, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @rt5682s_hw_params._entry.254, !616, !"_entry", i1 false, i1 false}
!616 = !{!"../sound/soc/codecs/rt5682s.c", i32 2060, i32 3}
!617 = !{ptr @rt5682s_hw_params._entry_ptr.255, !616, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @rt5682s_aif2_dai_ops, !619, !"rt5682s_aif2_dai_ops", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/rt5682s.c", i32 2878, i32 37}
!620 = !{ptr @.str.256, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/rt5682s.c", i32 2415, i32 3}
!622 = !{ptr @.str.257, !621, !"<string literal>", i1 false, i1 false}
!623 = !{ptr @rt5682s_set_bclk2_ratio._entry, !621, !"_entry", i1 false, i1 false}
!624 = !{ptr @rt5682s_set_bclk2_ratio._entry_ptr, !621, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @rt5682s_of_match, !626, !"rt5682s_of_match", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/rt5682s.c", i32 3195, i32 34}
!627 = !{ptr @rt5682s_acpi_match, !628, !"rt5682s_acpi_match", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/rt5682s.c", i32 3201, i32 36}
!629 = !{ptr @rt5682s_i2c_id, !630, !"rt5682s_i2c_id", i1 false, i1 false}
!630 = !{!"../sound/soc/codecs/rt5682s.c", i32 3207, i32 35}
!631 = !{i32 1, !"wchar_size", i32 2}
!632 = !{i32 1, !"min_enum_size", i32 4}
!633 = !{i32 8, !"branch-target-enforcement", i32 0}
!634 = !{i32 8, !"sign-return-address", i32 0}
!635 = !{i32 8, !"sign-return-address-all", i32 0}
!636 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!637 = !{i32 7, !"uwtable", i32 1}
!638 = !{i32 7, !"frame-pointer", i32 2}
!639 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!640 = !{!"auto-init"}
!641 = !{i8 0, i8 2}
!642 = !{i64 2149050361, i64 2149050366, i64 2149050379, i64 2149050423, i64 2149050457, i64 2149050478}
!643 = !{i32 0, i32 4}
!644 = !{i32 0, i32 33}
