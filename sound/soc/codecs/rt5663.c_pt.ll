; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5663.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5663.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt5663_sel_asrc_clk_src\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5663_sel_asrc_clk_src\09\09\09\09"
module asm "\09.long\09__crc_rt5663_sel_asrc_clk_src\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5663_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5663_sel_asrc_clk_src\22\09\09\09\09\09"
module asm "__kstrtabns_rt5663_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rt5663_priv = type { ptr, %struct.rt5663_platform_data, ptr, %struct.delayed_work, %struct.delayed_work, ptr, %struct.timer_list, ptr, [2 x %struct.regulator_bulk_data], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rt5663_platform_data = type { i32, i32, i32, i32, i32, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.impedance_mapping_table = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@rt5663_sel_asrc_clk_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown CODEC Version\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5663_sel_asrc_clk_src\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5663.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5663_sel_asrc_clk_src._entry_ptr = internal global ptr @rt5663_sel_asrc_clk_src._entry, section ".printk_index", align 4
@__kstrtab_rt5663_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5663_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5663_sel_asrc_clk_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5663_sel_asrc_clk_src to i32), ptr @__kstrtab_rt5663_sel_asrc_clk_src, ptr @__kstrtabns_rt5663_sel_asrc_clk_src }, section "___ksymtab_gpl+rt5663_sel_asrc_clk_src", align 4
@__initcall__kmod_snd_soc_rt5663__314_3743_rt5663_i2c_driver_init6 = internal global ptr @rt5663_i2c_driver_init, section ".initcall6.init", align 4
@rt5663_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5663_i2c_probe, ptr @rt5663_i2c_remove, ptr null, ptr @rt5663_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5663_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5663_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5663_i2c_driver_exit = internal global ptr @rt5663_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description315 = internal constant [46 x i8] c"snd_soc_rt5663.description=ASoC RT5663 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [52 x i8] c"snd_soc_rt5663.author=Jack Yu <jack.yu@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [52 x i8] c"snd_soc_rt5663.file=sound/soc/codecs/snd-soc-rt5663\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [30 x i8] c"snd_soc_rt5663.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5663\00", [25 x i8] zeroinitializer }, align 32
@rt5663_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5663\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5663_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5663\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 3523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5663_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr = internal global ptr @rt5663_i2c_probe._entry, section ".printk_index", align 4
@rt5663_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 3534, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to set regulator load on %s, ret: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.10 = internal global ptr @rt5663_i2c_probe._entry.8, section ".printk_index", align 4
@rt5663_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 3543, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.13 = internal global ptr @rt5663_i2c_probe._entry.11, section ".printk_index", align 4
@rt5663_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@temp_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.62, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1011, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rt5663:3548:(&temp_regmap)->lock\00", [63 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 3552, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate temp register map: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.17 = internal global ptr @rt5663_i2c_probe._entry.15, section ".printk_index", align 4
@rt5663_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 3560, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Device with ID register %#x is not rt5663, retry one time.\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.20 = internal global ptr @rt5663_i2c_probe._entry.18, section ".printk_index", align 4
@rt5663_i2c_probe._key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5663_v2_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @rt5663_v2_readable_register, ptr @rt5663_v2_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2042, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5663_v2_reg, i32 399, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rt5663:3567:(&rt5663_v2_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5663_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @rt5663_readable_register, ptr @rt5663_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1011, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5663_reg, i32 255, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5663:3571:(&rt5663_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.2, i32 3577, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device with ID register %#x is not rt5663\0A\00", [53 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.27 = internal global ptr @rt5663_i2c_probe._entry.25, section ".printk_index", align 4
@rt5663_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.7, ptr @.str.2, i32 3585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.30 = internal global ptr @rt5663_i2c_probe._entry.28, section ".printk_index", align 4
@rt5663_i2c_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.2, i32 3600, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:Unknown codec type\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.33 = internal global ptr @rt5663_i2c_probe._entry.31, section ".printk_index", align 4
@rt5663_i2c_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.7, ptr @.str.2, ptr @.str.35, i8 3, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5663\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calibrate done\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5663_patch_list = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 42, i32 32800, i32 0 }, %struct.reg_sequence { i32 134, i32 40, i32 0 }, %struct.reg_sequence { i32 256, i32 40992, i32 0 }, %struct.reg_sequence { i32 279, i32 3880, i32 0 }, %struct.reg_sequence { i32 763, i32 32905, i32 0 }], [36 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.7, ptr @.str.2, i32 3614, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.39 = internal global ptr @rt5663_i2c_probe._entry.36, section ".printk_index", align 4
@rt5663_i2c_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.2, i32 3617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.41 = internal global ptr @rt5663_i2c_probe._entry.40, section ".printk_index", align 4
@rt5663_i2c_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.2, i32 3674, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.43 = internal global ptr @rt5663_i2c_probe._entry.42, section ".printk_index", align 4
@rt5663_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&rt5663->jack_detect_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&rt5663->jack_detect_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&rt5663->jd_unplug_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&rt5663->jd_unplug_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.7, ptr @.str.2, i32 3686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Failed to reguest IRQ: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rt5663_i2c_probe._entry_ptr.53 = internal global ptr @rt5663_i2c_probe._entry.51, section ".printk_index", align 4
@soc_component_dev_rt5663 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5663_snd_controls, i32 3, ptr @rt5663_dapm_widgets, i32 34, ptr @rt5663_dapm_routes, i32 36, ptr @rt5663_probe, ptr @rt5663_remove, ptr @rt5663_suspend, ptr @rt5663_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5663_set_jack_detect, ptr null, ptr null, ptr null, ptr null, ptr @rt5663_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5663_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.201, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5663_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.113, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.111, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"realtek,dc_offset_l_manual\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"realtek,dc_offset_r_manual\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"realtek,dc_offset_l_manual_mic\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"realtek,dc_offset_r_manual_mic\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"realtek,impedance_sensing_num\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"realtek,impedance_sensing_table\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpvdd\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nocache\00", [24 x i8] zeroinitializer }, align 32
@rt5663_v2_reg = internal constant { [399 x %struct.reg_default], [776 x i8] } { [399 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 51400 }, %struct.reg_default { i32 2, i32 32896 }, %struct.reg_default { i32 3, i32 32768 }, %struct.reg_default { i32 4, i32 51210 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 16, i32 16384 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 5124 }, %struct.reg_default { i32 19, i32 4096 }, %struct.reg_default { i32 20, i32 40970 }, %struct.reg_default { i32 21, i32 1028 }, %struct.reg_default { i32 22, i32 1028 }, %struct.reg_default { i32 23, i32 17 }, %struct.reg_default { i32 24, i32 44975 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 17 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 12079 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 22359 }, %struct.reg_default { i32 35, i32 57 }, %struct.reg_default { i32 36, i32 11 }, %struct.reg_default { i32 38, i32 49344 }, %struct.reg_default { i32 39, i32 49344 }, %struct.reg_default { i32 40, i32 49344 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 43690 }, %struct.reg_default { i32 43, i32 43690 }, %struct.reg_default { i32 44, i32 43944 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 20480 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 255 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 255 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 255 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 255 }, %struct.reg_default { i32 68, i32 3084 }, %struct.reg_default { i32 73, i32 49163 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 799 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 31 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 31 }, %struct.reg_default { i32 82, i32 61440 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 62 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 63 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 109, i32 65280 }, %struct.reg_default { i32 110, i32 10248 }, %struct.reg_default { i32 111, i32 10 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 28672 }, %struct.reg_default { i32 116, i32 30576 }, %struct.reg_default { i32 117, i32 2 }, %struct.reg_default { i32 118, i32 1 }, %struct.reg_default { i32 120, i32 240 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 291 }, %struct.reg_default { i32 126, i32 17664 }, %struct.reg_default { i32 127, i32 32771 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 8 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 3 }, %struct.reg_default { i32 142, i32 96 }, %struct.reg_default { i32 143, i32 4096 }, %struct.reg_default { i32 145, i32 3110 }, %struct.reg_default { i32 146, i32 115 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 128 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 7 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 161, i32 2 }, %struct.reg_default { i32 162, i32 1 }, %struct.reg_default { i32 163, i32 2 }, %struct.reg_default { i32 164, i32 1 }, %struct.reg_default { i32 174, i32 8256 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 185, i32 0 }, %struct.reg_default { i32 186, i32 2 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 2730 }, %struct.reg_default { i32 194, i32 43648 }, %struct.reg_default { i32 195, i32 3 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 209, i32 8772 }, %struct.reg_default { i32 210, i32 0 }, %struct.reg_default { i32 211, i32 13056 }, %struct.reg_default { i32 212, i32 8704 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 8 }, %struct.reg_default { i32 220, i32 192 }, %struct.reg_default { i32 221, i32 26404 }, %struct.reg_default { i32 222, i32 12593 }, %struct.reg_default { i32 223, i32 8 }, %struct.reg_default { i32 224, i32 16384 }, %struct.reg_default { i32 225, i32 12593 }, %struct.reg_default { i32 226, i32 24588 }, %struct.reg_default { i32 234, i32 45856 }, %struct.reg_default { i32 235, i32 0 }, %struct.reg_default { i32 236, i32 45824 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 238, i32 45856 }, %struct.reg_default { i32 239, i32 0 }, %struct.reg_default { i32 240, i32 513 }, %struct.reg_default { i32 241, i32 3549 }, %struct.reg_default { i32 242, i32 3549 }, %struct.reg_default { i32 246, i32 0 }, %struct.reg_default { i32 247, i32 0 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 250, i32 0 }, %struct.reg_default { i32 251, i32 0 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 0 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25681 }, %struct.reg_default { i32 256, i32 43690 }, %struct.reg_default { i32 257, i32 10 }, %struct.reg_default { i32 266, i32 43690 }, %struct.reg_default { i32 267, i32 41120 }, %struct.reg_default { i32 268, i32 44718 }, %struct.reg_default { i32 269, i32 43690 }, %struct.reg_default { i32 270, i32 43690 }, %struct.reg_default { i32 271, i32 43690 }, %struct.reg_default { i32 272, i32 57346 }, %struct.reg_default { i32 273, i32 42498 }, %struct.reg_default { i32 274, i32 43690 }, %struct.reg_default { i32 275, i32 8192 }, %struct.reg_default { i32 279, i32 3840 }, %struct.reg_default { i32 293, i32 1056 }, %struct.reg_default { i32 306, i32 0 }, %struct.reg_default { i32 307, i32 0 }, %struct.reg_default { i32 310, i32 21845 }, %struct.reg_default { i32 311, i32 21824 }, %struct.reg_default { i32 312, i32 14080 }, %struct.reg_default { i32 313, i32 31137 }, %struct.reg_default { i32 314, i32 8224 }, %struct.reg_default { i32 315, i32 8224 }, %struct.reg_default { i32 316, i32 8197 }, %struct.reg_default { i32 319, i32 0 }, %struct.reg_default { i32 325, i32 2 }, %struct.reg_default { i32 326, i32 0 }, %struct.reg_default { i32 327, i32 0 }, %struct.reg_default { i32 328, i32 0 }, %struct.reg_default { i32 352, i32 20160 }, %struct.reg_default { i32 353, i32 128 }, %struct.reg_default { i32 354, i32 512 }, %struct.reg_default { i32 355, i32 2048 }, %struct.reg_default { i32 356, i32 0 }, %struct.reg_default { i32 357, i32 0 }, %struct.reg_default { i32 358, i32 0 }, %struct.reg_default { i32 359, i32 15 }, %struct.reg_default { i32 360, i32 15 }, %struct.reg_default { i32 368, i32 20096 }, %struct.reg_default { i32 369, i32 128 }, %struct.reg_default { i32 370, i32 512 }, %struct.reg_default { i32 371, i32 2048 }, %struct.reg_default { i32 372, i32 255 }, %struct.reg_default { i32 373, i32 0 }, %struct.reg_default { i32 400, i32 16689 }, %struct.reg_default { i32 401, i32 16689 }, %struct.reg_default { i32 402, i32 16689 }, %struct.reg_default { i32 403, i32 16689 }, %struct.reg_default { i32 404, i32 0 }, %struct.reg_default { i32 405, i32 0 }, %struct.reg_default { i32 406, i32 0 }, %struct.reg_default { i32 407, i32 0 }, %struct.reg_default { i32 408, i32 0 }, %struct.reg_default { i32 409, i32 0 }, %struct.reg_default { i32 416, i32 7780 }, %struct.reg_default { i32 417, i32 1699 }, %struct.reg_default { i32 418, i32 0 }, %struct.reg_default { i32 419, i32 0 }, %struct.reg_default { i32 420, i32 0 }, %struct.reg_default { i32 421, i32 0 }, %struct.reg_default { i32 422, i32 0 }, %struct.reg_default { i32 423, i32 0 }, %struct.reg_default { i32 424, i32 0 }, %struct.reg_default { i32 425, i32 0 }, %struct.reg_default { i32 426, i32 0 }, %struct.reg_default { i32 427, i32 0 }, %struct.reg_default { i32 437, i32 0 }, %struct.reg_default { i32 438, i32 451 }, %struct.reg_default { i32 439, i32 672 }, %struct.reg_default { i32 440, i32 1001 }, %struct.reg_default { i32 441, i32 5001 }, %struct.reg_default { i32 442, i32 50001 }, %struct.reg_default { i32 443, i32 9 }, %struct.reg_default { i32 444, i32 24 }, %struct.reg_default { i32 445, i32 42 }, %struct.reg_default { i32 446, i32 76 }, %struct.reg_default { i32 447, i32 151 }, %struct.reg_default { i32 448, i32 17213 }, %struct.reg_default { i32 449, i32 0 }, %struct.reg_default { i32 450, i32 0 }, %struct.reg_default { i32 451, i32 0 }, %struct.reg_default { i32 452, i32 0 }, %struct.reg_default { i32 453, i32 0 }, %struct.reg_default { i32 454, i32 0 }, %struct.reg_default { i32 455, i32 0 }, %struct.reg_default { i32 456, i32 16559 }, %struct.reg_default { i32 457, i32 1794 }, %struct.reg_default { i32 458, i32 0 }, %struct.reg_default { i32 459, i32 0 }, %struct.reg_default { i32 460, i32 22359 }, %struct.reg_default { i32 461, i32 22359 }, %struct.reg_default { i32 462, i32 22359 }, %struct.reg_default { i32 463, i32 22359 }, %struct.reg_default { i32 464, i32 22359 }, %struct.reg_default { i32 465, i32 22359 }, %struct.reg_default { i32 466, i32 22359 }, %struct.reg_default { i32 467, i32 22359 }, %struct.reg_default { i32 468, i32 22359 }, %struct.reg_default { i32 469, i32 22359 }, %struct.reg_default { i32 470, i32 60 }, %struct.reg_default { i32 474, i32 0 }, %struct.reg_default { i32 475, i32 0 }, %struct.reg_default { i32 476, i32 0 }, %struct.reg_default { i32 478, i32 31744 }, %struct.reg_default { i32 479, i32 800 }, %struct.reg_default { i32 480, i32 1697 }, %struct.reg_default { i32 481, i32 0 }, %struct.reg_default { i32 482, i32 0 }, %struct.reg_default { i32 483, i32 0 }, %struct.reg_default { i32 484, i32 0 }, %struct.reg_default { i32 485, i32 0 }, %struct.reg_default { i32 486, i32 1 }, %struct.reg_default { i32 487, i32 0 }, %struct.reg_default { i32 488, i32 0 }, %struct.reg_default { i32 490, i32 0 }, %struct.reg_default { i32 491, i32 0 }, %struct.reg_default { i32 492, i32 0 }, %struct.reg_default { i32 493, i32 0 }, %struct.reg_default { i32 494, i32 0 }, %struct.reg_default { i32 495, i32 0 }, %struct.reg_default { i32 496, i32 0 }, %struct.reg_default { i32 497, i32 0 }, %struct.reg_default { i32 498, i32 0 }, %struct.reg_default { i32 499, i32 0 }, %struct.reg_default { i32 500, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 514, i32 0 }, %struct.reg_default { i32 515, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 518, i32 0 }, %struct.reg_default { i32 519, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 528, i32 24753 }, %struct.reg_default { i32 529, i32 40960 }, %struct.reg_default { i32 530, i32 588 }, %struct.reg_default { i32 531, i32 63487 }, %struct.reg_default { i32 532, i32 588 }, %struct.reg_default { i32 533, i32 258 }, %struct.reg_default { i32 534, i32 163 }, %struct.reg_default { i32 535, i32 72 }, %struct.reg_default { i32 536, i32 37568 }, %struct.reg_default { i32 537, i32 0 }, %struct.reg_default { i32 538, i32 200 }, %struct.reg_default { i32 539, i32 32 }, %struct.reg_default { i32 762, i32 0 }, %struct.reg_default { i32 763, i32 0 }, %struct.reg_default { i32 764, i32 0 }, %struct.reg_default { i32 767, i32 272 }, %struct.reg_default { i32 768, i32 31 }, %struct.reg_default { i32 769, i32 812 }, %struct.reg_default { i32 770, i32 24353 }, %struct.reg_default { i32 771, i32 16384 }, %struct.reg_default { i32 772, i32 16384 }, %struct.reg_default { i32 773, i32 1749 }, %struct.reg_default { i32 774, i32 32768 }, %struct.reg_default { i32 775, i32 1792 }, %struct.reg_default { i32 784, i32 17760 }, %struct.reg_default { i32 785, i32 42152 }, %struct.reg_default { i32 786, i32 29720 }, %struct.reg_default { i32 787, i32 0 }, %struct.reg_default { i32 788, i32 6 }, %struct.reg_default { i32 789, i32 65535 }, %struct.reg_default { i32 790, i32 50176 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 816, i32 166 }, %struct.reg_default { i32 817, i32 1219 }, %struct.reg_default { i32 818, i32 10184 }, %struct.reg_default { i32 819, i32 48976 }, %struct.reg_default { i32 820, i32 69 }, %struct.reg_default { i32 821, i32 7 }, %struct.reg_default { i32 822, i32 29720 }, %struct.reg_default { i32 823, i32 1281 }, %struct.reg_default { i32 824, i32 0 }, %struct.reg_default { i32 825, i32 16 }, %struct.reg_default { i32 826, i32 4112 }, %struct.reg_default { i32 960, i32 32256 }, %struct.reg_default { i32 961, i32 32768 }, %struct.reg_default { i32 962, i32 32768 }, %struct.reg_default { i32 963, i32 32768 }, %struct.reg_default { i32 964, i32 32768 }, %struct.reg_default { i32 965, i32 32768 }, %struct.reg_default { i32 966, i32 32768 }, %struct.reg_default { i32 967, i32 32768 }, %struct.reg_default { i32 968, i32 32768 }, %struct.reg_default { i32 969, i32 32768 }, %struct.reg_default { i32 970, i32 32768 }, %struct.reg_default { i32 971, i32 32768 }, %struct.reg_default { i32 972, i32 32768 }, %struct.reg_default { i32 976, i32 0 }, %struct.reg_default { i32 977, i32 0 }, %struct.reg_default { i32 978, i32 0 }, %struct.reg_default { i32 979, i32 0 }, %struct.reg_default { i32 980, i32 8192 }, %struct.reg_default { i32 981, i32 8192 }, %struct.reg_default { i32 982, i32 0 }, %struct.reg_default { i32 983, i32 0 }, %struct.reg_default { i32 984, i32 8192 }, %struct.reg_default { i32 985, i32 8192 }, %struct.reg_default { i32 986, i32 8192 }, %struct.reg_default { i32 987, i32 8192 }, %struct.reg_default { i32 988, i32 0 }, %struct.reg_default { i32 989, i32 0 }, %struct.reg_default { i32 990, i32 0 }, %struct.reg_default { i32 991, i32 8192 }, %struct.reg_default { i32 992, i32 0 }, %struct.reg_default { i32 993, i32 0 }, %struct.reg_default { i32 994, i32 0 }, %struct.reg_default { i32 995, i32 0 }, %struct.reg_default { i32 996, i32 0 }, %struct.reg_default { i32 997, i32 0 }, %struct.reg_default { i32 998, i32 0 }, %struct.reg_default { i32 999, i32 0 }, %struct.reg_default { i32 1000, i32 0 }, %struct.reg_default { i32 1001, i32 0 }, %struct.reg_default { i32 1002, i32 0 }, %struct.reg_default { i32 1003, i32 0 }, %struct.reg_default { i32 1004, i32 0 }, %struct.reg_default { i32 1005, i32 0 }, %struct.reg_default { i32 1006, i32 0 }, %struct.reg_default { i32 1007, i32 0 }, %struct.reg_default { i32 1008, i32 2048 }, %struct.reg_default { i32 1009, i32 2048 }, %struct.reg_default { i32 1010, i32 2048 }, %struct.reg_default { i32 1011, i32 2048 }, %struct.reg_default { i32 1022, i32 0 }, %struct.reg_default { i32 1023, i32 0 }, %struct.reg_default { i32 2032, i32 0 }, %struct.reg_default { i32 2042, i32 0 }], [776 x i8] zeroinitializer }, align 32
@rt5663_reg = internal constant { [255 x %struct.reg_default], [488 x i8] } { [255 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 2, i32 8 }, %struct.reg_default { i32 5, i32 4096 }, %struct.reg_default { i32 6, i32 4096 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 16, i32 15 }, %struct.reg_default { i32 21, i32 17137 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 24, i32 11 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 34, i32 22359 }, %struct.reg_default { i32 35, i32 57 }, %struct.reg_default { i32 38, i32 49344 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 32800 }, %struct.reg_default { i32 44, i32 12 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 64, i32 2056 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 62 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 32800 }, %struct.reg_default { i32 115, i32 4096 }, %struct.reg_default { i32 116, i32 58368 }, %struct.reg_default { i32 117, i32 2 }, %struct.reg_default { i32 118, i32 1 }, %struct.reg_default { i32 119, i32 240 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 291 }, %struct.reg_default { i32 123, i32 32771 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 134, i32 40 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 3 }, %struct.reg_default { i32 142, i32 8 }, %struct.reg_default { i32 143, i32 4096 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3646 }, %struct.reg_default { i32 146, i32 4209 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 128 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 174, i32 24576 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 186, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 203, i32 41007 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 205, i32 3586 }, %struct.reg_default { i32 217, i32 2297 }, %struct.reg_default { i32 219, i32 8 }, %struct.reg_default { i32 220, i32 192 }, %struct.reg_default { i32 221, i32 26409 }, %struct.reg_default { i32 222, i32 12593 }, %struct.reg_default { i32 223, i32 8 }, %struct.reg_default { i32 224, i32 16384 }, %struct.reg_default { i32 225, i32 12593 }, %struct.reg_default { i32 226, i32 67 }, %struct.reg_default { i32 228, i32 16395 }, %struct.reg_default { i32 229, i32 32817 }, %struct.reg_default { i32 230, i32 12416 }, %struct.reg_default { i32 231, i32 16640 }, %struct.reg_default { i32 232, i32 5120 }, %struct.reg_default { i32 233, i32 57354 }, %struct.reg_default { i32 234, i32 1028 }, %struct.reg_default { i32 235, i32 1028 }, %struct.reg_default { i32 236, i32 45856 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 244, i32 0 }, %struct.reg_default { i32 246, i32 0 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 250, i32 32768 }, %struct.reg_default { i32 253, i32 1 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25606 }, %struct.reg_default { i32 256, i32 40992 }, %struct.reg_default { i32 264, i32 17476 }, %struct.reg_default { i32 265, i32 17476 }, %struct.reg_default { i32 266, i32 43690 }, %struct.reg_default { i32 267, i32 160 }, %struct.reg_default { i32 268, i32 35498 }, %struct.reg_default { i32 269, i32 43690 }, %struct.reg_default { i32 270, i32 10922 }, %struct.reg_default { i32 271, i32 42 }, %struct.reg_default { i32 272, i32 41124 }, %struct.reg_default { i32 273, i32 17922 }, %struct.reg_default { i32 274, i32 257 }, %struct.reg_default { i32 275, i32 8192 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 278, i32 0 }, %struct.reg_default { i32 279, i32 3880 }, %struct.reg_default { i32 280, i32 6 }, %struct.reg_default { i32 293, i32 9252 }, %struct.reg_default { i32 294, i32 21840 }, %struct.reg_default { i32 295, i32 1024 }, %struct.reg_default { i32 296, i32 30481 }, %struct.reg_default { i32 306, i32 4 }, %struct.reg_default { i32 311, i32 21569 }, %struct.reg_default { i32 313, i32 31137 }, %struct.reg_default { i32 314, i32 12480 }, %struct.reg_default { i32 315, i32 8192 }, %struct.reg_default { i32 316, i32 8197 }, %struct.reg_default { i32 317, i32 12480 }, %struct.reg_default { i32 318, i32 0 }, %struct.reg_default { i32 320, i32 14080 }, %struct.reg_default { i32 321, i32 7936 }, %struct.reg_default { i32 324, i32 0 }, %struct.reg_default { i32 325, i32 2 }, %struct.reg_default { i32 326, i32 0 }, %struct.reg_default { i32 352, i32 3712 }, %struct.reg_default { i32 353, i32 128 }, %struct.reg_default { i32 354, i32 512 }, %struct.reg_default { i32 355, i32 2048 }, %struct.reg_default { i32 356, i32 0 }, %struct.reg_default { i32 357, i32 0 }, %struct.reg_default { i32 358, i32 0 }, %struct.reg_default { i32 359, i32 5143 }, %struct.reg_default { i32 360, i32 23 }, %struct.reg_default { i32 361, i32 23 }, %struct.reg_default { i32 384, i32 8192 }, %struct.reg_default { i32 385, i32 0 }, %struct.reg_default { i32 386, i32 0 }, %struct.reg_default { i32 387, i32 8192 }, %struct.reg_default { i32 388, i32 0 }, %struct.reg_default { i32 389, i32 0 }, %struct.reg_default { i32 432, i32 19248 }, %struct.reg_default { i32 433, i32 0 }, %struct.reg_default { i32 434, i32 55408 }, %struct.reg_default { i32 435, i32 0 }, %struct.reg_default { i32 436, i32 48 }, %struct.reg_default { i32 437, i32 22359 }, %struct.reg_default { i32 438, i32 22359 }, %struct.reg_default { i32 439, i32 22359 }, %struct.reg_default { i32 440, i32 22359 }, %struct.reg_default { i32 448, i32 17213 }, %struct.reg_default { i32 449, i32 1344 }, %struct.reg_default { i32 450, i32 0 }, %struct.reg_default { i32 451, i32 0 }, %struct.reg_default { i32 452, i32 0 }, %struct.reg_default { i32 453, i32 9 }, %struct.reg_default { i32 454, i32 24 }, %struct.reg_default { i32 455, i32 42 }, %struct.reg_default { i32 456, i32 76 }, %struct.reg_default { i32 457, i32 151 }, %struct.reg_default { i32 458, i32 451 }, %struct.reg_default { i32 459, i32 1001 }, %struct.reg_default { i32 460, i32 5001 }, %struct.reg_default { i32 461, i32 50001 }, %struct.reg_default { i32 462, i32 0 }, %struct.reg_default { i32 463, i32 0 }, %struct.reg_default { i32 464, i32 0 }, %struct.reg_default { i32 465, i32 0 }, %struct.reg_default { i32 466, i32 0 }, %struct.reg_default { i32 467, i32 60 }, %struct.reg_default { i32 468, i32 22359 }, %struct.reg_default { i32 469, i32 22359 }, %struct.reg_default { i32 470, i32 22359 }, %struct.reg_default { i32 471, i32 22359 }, %struct.reg_default { i32 472, i32 22359 }, %struct.reg_default { i32 473, i32 22359 }, %struct.reg_default { i32 474, i32 0 }, %struct.reg_default { i32 475, i32 0 }, %struct.reg_default { i32 477, i32 9 }, %struct.reg_default { i32 478, i32 32512 }, %struct.reg_default { i32 479, i32 200 }, %struct.reg_default { i32 480, i32 1681 }, %struct.reg_default { i32 481, i32 0 }, %struct.reg_default { i32 482, i32 0 }, %struct.reg_default { i32 483, i32 0 }, %struct.reg_default { i32 484, i32 0 }, %struct.reg_default { i32 485, i32 64 }, %struct.reg_default { i32 486, i32 0 }, %struct.reg_default { i32 487, i32 0 }, %struct.reg_default { i32 488, i32 0 }, %struct.reg_default { i32 490, i32 0 }, %struct.reg_default { i32 491, i32 0 }, %struct.reg_default { i32 492, i32 0 }, %struct.reg_default { i32 493, i32 0 }, %struct.reg_default { i32 494, i32 0 }, %struct.reg_default { i32 495, i32 0 }, %struct.reg_default { i32 496, i32 0 }, %struct.reg_default { i32 497, i32 0 }, %struct.reg_default { i32 498, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 8772 }, %struct.reg_default { i32 514, i32 43690 }, %struct.reg_default { i32 592, i32 32784 }, %struct.reg_default { i32 593, i32 0 }, %struct.reg_default { i32 594, i32 650 }, %struct.reg_default { i32 762, i32 0 }, %struct.reg_default { i32 763, i32 32905 }, %struct.reg_default { i32 764, i32 768 }, %struct.reg_default { i32 768, i32 0 }, %struct.reg_default { i32 976, i32 0 }, %struct.reg_default { i32 977, i32 0 }, %struct.reg_default { i32 978, i32 0 }, %struct.reg_default { i32 979, i32 0 }, %struct.reg_default { i32 980, i32 8192 }, %struct.reg_default { i32 981, i32 8192 }, %struct.reg_default { i32 982, i32 0 }, %struct.reg_default { i32 983, i32 0 }, %struct.reg_default { i32 984, i32 8192 }, %struct.reg_default { i32 985, i32 8192 }, %struct.reg_default { i32 986, i32 8192 }, %struct.reg_default { i32 987, i32 8192 }, %struct.reg_default { i32 988, i32 0 }, %struct.reg_default { i32 989, i32 0 }, %struct.reg_default { i32 990, i32 0 }, %struct.reg_default { i32 991, i32 8192 }, %struct.reg_default { i32 992, i32 0 }, %struct.reg_default { i32 993, i32 0 }, %struct.reg_default { i32 994, i32 0 }, %struct.reg_default { i32 995, i32 0 }, %struct.reg_default { i32 996, i32 0 }, %struct.reg_default { i32 997, i32 0 }, %struct.reg_default { i32 998, i32 0 }, %struct.reg_default { i32 999, i32 0 }, %struct.reg_default { i32 1000, i32 0 }, %struct.reg_default { i32 1001, i32 0 }, %struct.reg_default { i32 1002, i32 0 }, %struct.reg_default { i32 1003, i32 0 }, %struct.reg_default { i32 1004, i32 0 }, %struct.reg_default { i32 1005, i32 0 }, %struct.reg_default { i32 1006, i32 0 }, %struct.reg_default { i32 1007, i32 0 }, %struct.reg_default { i32 1008, i32 2048 }, %struct.reg_default { i32 1009, i32 2048 }, %struct.reg_default { i32 1010, i32 2048 }, %struct.reg_default { i32 1011, i32 2048 }], [488 x i8] zeroinitializer }, align 32
@rt5663_jack_detect_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.63, ptr @.str.2, i32 1924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5663_jack_detect_work\00", [40 x i8] zeroinitializer }, align 32
@rt5663_jack_detect_work._entry_ptr = internal global ptr @rt5663_jack_detect_work._entry, section ".printk_index", align 4
@rt5663_jack_detect_work._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1967, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected button code 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5663_jack_detect_work._entry_ptr.66 = internal global ptr @rt5663_jack_detect_work._entry.64, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5663_jack_detect_work._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.63, ptr @.str.2, i32 1991, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rt5663_jack_detect_work._entry_ptr.68 = internal global ptr @rt5663_jack_detect_work._entry.67, section ".printk_index", align 4
@rt5663_jack_detect_work.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.63, ptr @.str.2, ptr @.str.69, i8 1, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s jack report: 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@rt5663_check_jd_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt5663_check_jd_status\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s val=%x\0A\00", [21 x i8] zeroinitializer }, align 32
@rt5663_check_jd_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.70, ptr @.str.2, i32 1893, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rt5663_check_jd_status._entry_ptr = internal global ptr @rt5663_check_jd_status._entry, section ".printk_index", align 4
@__const.rt5663_v2_jack_detect.sleep_time = private unnamed_addr constant [5 x i32] [i32 300, i32 150, i32 100, i32 50, i32 30], align 4
@rt5663_v2_jack_detect.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5663_v2_jack_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s jack_insert:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mic Det Power\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CBJ Power\00", [22 x i8] zeroinitializer }, align 32
@rt5663_v2_jack_detect.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.72, ptr @.str.2, ptr @.str.78, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: MX-0011 val=%x sleep %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rt5663_v2_jack_detect.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.72, ptr @.str.2, ptr @.str.79, i8 1, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s val = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@rt5663_v2_jack_detect.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.72, ptr @.str.2, ptr @.str.80, i8 1, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jack_type = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5663_enable_push_button_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.81, ptr @.str.2, i32 1424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rt5663_enable_push_button_irq\00", [34 x i8] zeroinitializer }, align 32
@rt5663_enable_push_button_irq._entry_ptr = internal global ptr @rt5663_enable_push_button_irq._entry, section ".printk_index", align 4
@rt5663_enable_push_button_irq._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.81, ptr @.str.2, i32 1439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rt5663_enable_push_button_irq._entry_ptr.83 = internal global ptr @rt5663_enable_push_button_irq._entry.82, section ".printk_index", align 4
@rt5663_jack_detect.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.84, ptr @.str.2, ptr @.str.73, i8 1, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5663_jack_detect\00", [45 x i8] zeroinitializer }, align 32
@rt5663_jack_detect.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.84, ptr @.str.2, ptr @.str.79, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rt5663_jack_detect.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.84, ptr @.str.2, ptr @.str.80, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rt5663_button_detect.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5663_button_detect\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: val=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5663_jd_unplug_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.87, ptr @.str.2, i32 2019, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5663_jd_unplug_work\00", [42 x i8] zeroinitializer }, align 32
@rt5663_jd_unplug_work._entry_ptr = internal global ptr @rt5663_jd_unplug_work._entry, section ".printk_index", align 4
@rt5663_irq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 1, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt5663_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s IRQ queue work\0A\00", [45 x i8] zeroinitializer }, align 32
@rt5663_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }], [48 x i8] zeroinitializer }, align 32
@rt5663_dapm_routes = internal constant { [36 x %struct.snd_soc_dapm_route], [464 x i8] } { [36 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.95, ptr @rt5663_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.144, ptr @rt5663_is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.145, ptr @rt5663_is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.146, ptr @rt5663_i2s_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.130, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.132, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.134, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.136, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.140, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.136, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.140, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }], [464 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 25, i32 25, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 28, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1N\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECMIX1L Power\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC L Power\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Clock\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STO1 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5663_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STO1 ADC Filter\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IF DAC\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 L\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 R\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 ADC1\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IF ADC\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFRX\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFTX\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADDA MIXL\00", [22 x i8] zeroinitializer }, align 32
@rt5663_adda_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADDA MIXR\00", [22 x i8] zeroinitializer }, align 32
@rt5663_adda_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STO1 DAC Filter\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STO1 DAC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5663_sto1_dac_l_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STO1 DAC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5663_sto1_dac_r_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STO1 DAC L Power\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"STO1 DAC R Power\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC L\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC R\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HP Charge Pump\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Amp\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@rt5663_dapm_widgets = internal constant { [34 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1528 x i8] } { [34 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 315, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5663_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.110, ptr @.str.111, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.112, ptr @.str.113, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5663_adda_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5663_adda_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_sto1_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_sto1_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rt5663_charge_pump_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5663_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1528 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC ASRC\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC ASRC\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S ASRC\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STO1 ADC L2\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STO1 ADC L1\00", [20 x i8] zeroinitializer }, align 32
@rt5663_i2s_use_asrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.149, ptr @.str.2, i32 2145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt5663_i2s_use_asrc\00", [44 x i8] zeroinitializer }, align 32
@rt5663_i2s_use_asrc._entry_ptr = internal global ptr @rt5663_i2s_use_asrc._entry, section ".printk_index", align 4
@rt5663_i2s_use_asrc._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 2153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sysclk < 384 x fs, disable i2s asrc\0A\00", [59 x i8] zeroinitializer }, align 32
@rt5663_i2s_use_asrc._entry_ptr.152 = internal global ptr @rt5663_i2s_use_asrc._entry.150, section ".printk_index", align 4
@rt5663_v2_specific_dapm_routes = internal constant { [38 x %struct.snd_soc_dapm_route], [488 x i8] } { [38 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.173, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.175, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.173, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.99, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.163, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.99, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.163, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.130, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.132, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.138, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.180, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }], [488 x i8] zeroinitializer }, align 32
@rt5663_v2_specific_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @rt5663_v2_hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @in_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }], [32 x i8] zeroinitializer }, align 32
@rt5663_specific_dapm_routes = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.123, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.192, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.124, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.193, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@rt5663_specific_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @in_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5663_if1_adc_enum to i32) }], [32 x i8] zeroinitializer }, align 32
@rt5663_hpvol_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @rt5663_hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2P\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2N\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BST1 CBJ\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST2\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BST2 Power\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RECMIX1L\00", [23 x i8] zeroinitializer }, align 32
@rt5663_recmix1l = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RECMIX1R\00", [23 x i8] zeroinitializer }, align 32
@rt5663_recmix1r = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RECMIX1R Power\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC R Power\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STO1 ADC R1\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STO1 ADC R2\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STO1 ADC L Mux\00", [17 x i8] zeroinitializer }, align 32
@rt5663_sto1_adcl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5663_sto1_adcl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STO1 ADC R Mux\00", [17 x i8] zeroinitializer }, align 32
@rt5663_sto1_adcr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5663_sto1_adcr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STO1 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5663_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Clock\00", [22 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HPO Playback\00", [19 x i8] zeroinitializer }, align 32
@rt5663_hpo_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, [48 x i8] zeroinitializer }, align 32
@rt5663_v2_specific_dapm_widgets = internal constant { [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1176 x i8] } { [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 103, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5663_bst2_power, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5663_recmix1l, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_recmix1r, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 12, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_sto1_adcl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_sto1_adcr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5663_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 314, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_hpo_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1176 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BST1 CBJ Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@rt5663_sto1_adcl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 10, i8 10, i32 2, i32 1, ptr @rt5663_sto1_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5663_sto1_adc_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.99, ptr @.str.163], [24 x i8] zeroinitializer }, align 32
@rt5663_sto1_adcr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 2, i8 2, i32 2, i32 1, ptr @rt5663_sto1_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@rt5663_v2_hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2250, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 5, i32 6, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IN1 Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@in_bst_tlv = internal constant { [44 x i32], [48 x i8] } { [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 11, i32 11, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Pre Div Power\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST1\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC L Mux\00", [22 x i8] zeroinitializer }, align 32
@rt5663_alg_dacl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.189, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5663_alg_dacl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC R Mux\00", [22 x i8] zeroinitializer }, align 32
@rt5663_alg_dacr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rt5663_alg_dacr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@rt5663_specific_dapm_widgets = internal constant { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [472 x i8] } { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5663_pre_div_power, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_alg_dacl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5663_alg_dacr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [472 x i8] zeroinitializer }, align 32
@rt5663_alg_dacl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 3, i8 3, i32 2, i32 1, ptr @rt5663_alg_dacl_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5663_alg_dacl_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.123, ptr @.str.192], [24 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STO DAC MIXL\00", [19 x i8] zeroinitializer }, align 32
@rt5663_alg_dacr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 2, i8 2, i32 2, i32 1, ptr @rt5663_alg_dacr_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5663_alg_dacr_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.124, ptr @.str.193], [24 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STO DAC MIXR\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 593, i32 593, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IF1 ADC Data Swap\00", [46 x i8] zeroinitializer }, align 32
@rt5663_if1_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 120, i8 14, i8 14, i32 4, i32 3, ptr @rt5663_if1_adc_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5663_if1_adc_data_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], [16 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/R\00", [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/L\00", [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/L\00", [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/R\00", [28 x i8] zeroinitializer }, align 32
@rt5663_hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2400, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 23, i32 23, i32 360, i32 361, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt5663-aif\00", [21 x i8] zeroinitializer }, align 32
@rt5663_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rt5663_set_dai_sysclk, ptr @rt5663_set_dai_pll, ptr null, ptr @rt5663_set_bclk_ratio, ptr @rt5663_set_dai_fmt, ptr null, ptr @rt5663_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5663_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt5663_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 2878, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5663_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@rt5663_set_dai_sysclk._entry_ptr = internal global ptr @rt5663_set_dai_sysclk._entry, section ".printk_index", align 4
@rt5663_set_dai_sysclk.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.203, ptr @.str.2, ptr @.str.204, i8 2, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5663_set_dai_pll.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.205, ptr @.str.2, ptr @.str.206, i8 2, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5663_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5663_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.205, ptr @.str.2, i32 2925, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rt5663_set_dai_pll._entry_ptr = internal global ptr @rt5663_set_dai_pll._entry, section ".printk_index", align 4
@rt5663_set_dai_pll._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.205, ptr @.str.2, i32 2937, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5663_set_dai_pll._entry_ptr.209 = internal global ptr @rt5663_set_dai_pll._entry.207, section ".printk_index", align 4
@rt5663_set_dai_pll._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.205, ptr @.str.2, i32 2944, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5663_set_dai_pll._entry_ptr.212 = internal global ptr @rt5663_set_dai_pll._entry.210, section ".printk_index", align 4
@rt5663_set_dai_pll.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.205, ptr @.str.2, ptr @.str.213, i8 2, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5663_set_bclk_ratio.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.214, ptr @.str.2, ptr @.str.215, i8 2, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5663_set_bclk_ratio\00", [42 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s ratio = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rt5663_set_bclk_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.2, i32 3067, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid ratio!\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5663_set_bclk_ratio._entry_ptr = internal global ptr @rt5663_set_bclk_ratio._entry, section ".printk_index", align 4
@rt5663_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.217, ptr @.str.2, i32 3021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt5663_set_tdm_slot\00", [44 x i8] zeroinitializer }, align 32
@rt5663_set_tdm_slot._entry_ptr = internal global ptr @rt5663_set_tdm_slot._entry, section ".printk_index", align 4
@rt5663_hw_params.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.218, ptr @.str.2, ptr @.str.219, i8 2, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5663_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bclk is %dHz and sysclk is %dHz\0A\00", [63 x i8] zeroinitializer }, align 32
@rt5663_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.2, i32 2778, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rt5663_hw_params._entry_ptr = internal global ptr @rt5663_hw_params._entry, section ".printk_index", align 4
@rt5663_hw_params.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.218, ptr @.str.2, ptr @.str.221, i8 2, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pre_div is %d for iis %d\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.rt5663_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 48, i32 0, i32 16, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 32, i64 25606, i64 25681]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 32, i64 25606, i64 25681]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.229 = internal global [15 x i64] [i64 13, i64 16, i64 0, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.233 = internal global [244 x i64] [i64 242, i64 32, i64 1, i64 3, i64 4, i64 7, i64 11, i64 12, i64 13, i64 15, i64 17, i64 18, i64 19, i64 20, i64 23, i64 26, i64 27, i64 29, i64 30, i64 32, i64 33, i64 36, i64 39, i64 40, i64 43, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 65, i64 66, i64 67, i64 68, i64 73, i64 74, i64 75, i64 77, i64 78, i64 79, i64 80, i64 82, i64 103, i64 109, i64 113, i64 114, i64 119, i64 124, i64 125, i64 126, i64 127, i64 133, i64 136, i64 137, i64 144, i64 151, i64 153, i64 160, i64 161, i64 162, i64 163, i64 164, i64 185, i64 191, i64 194, i64 195, i64 196, i64 197, i64 203, i64 204, i64 205, i64 208, i64 209, i64 210, i64 211, i64 212, i64 218, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 238, i64 239, i64 240, i64 241, i64 242, i64 244, i64 247, i64 251, i64 252, i64 253, i64 254, i64 255, i64 257, i64 264, i64 265, i64 276, i64 278, i64 280, i64 294, i64 295, i64 296, i64 307, i64 310, i64 312, i64 317, i64 318, i64 319, i64 320, i64 321, i64 324, i64 327, i64 328, i64 360, i64 361, i64 368, i64 369, i64 370, i64 371, i64 372, i64 373, i64 384, i64 385, i64 386, i64 387, i64 388, i64 389, i64 400, i64 401, i64 402, i64 403, i64 404, i64 405, i64 406, i64 407, i64 408, i64 409, i64 416, i64 417, i64 418, i64 419, i64 420, i64 421, i64 422, i64 423, i64 424, i64 425, i64 426, i64 427, i64 432, i64 433, i64 434, i64 435, i64 436, i64 441, i64 442, i64 443, i64 444, i64 445, i64 446, i64 447, i64 471, i64 472, i64 473, i64 476, i64 477, i64 499, i64 500, i64 515, i64 516, i64 517, i64 518, i64 519, i64 520, i64 528, i64 529, i64 530, i64 531, i64 532, i64 533, i64 534, i64 535, i64 536, i64 537, i64 538, i64 539, i64 592, i64 593, i64 594, i64 767, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 790, i64 791, i64 816, i64 817, i64 818, i64 819, i64 820, i64 821, i64 822, i64 823, i64 824, i64 825, i64 826, i64 960, i64 961, i64 962, i64 963, i64 964, i64 965, i64 966, i64 967, i64 968, i64 969, i64 970, i64 971, i64 972, i64 1022, i64 1023, i64 2032, i64 2042]
@__sancov_gen_cov_switch_values.234 = internal global [48 x i64] [i64 46, i64 32, i64 0, i64 17, i64 49, i64 50, i64 53, i64 73, i64 130, i64 147, i64 174, i64 190, i64 196, i64 219, i64 223, i64 240, i64 248, i64 253, i64 254, i64 255, i64 352, i64 356, i64 357, i64 358, i64 373, i64 400, i64 401, i64 402, i64 403, i64 423, i64 424, i64 425, i64 426, i64 449, i64 450, i64 451, i64 457, i64 477, i64 487, i64 490, i64 493, i64 494, i64 495, i64 496, i64 497, i64 498, i64 499, i64 500]
@__sancov_gen_cov_switch_values.235 = internal global [257 x i64] [i64 255, i64 32, i64 0, i64 2, i64 5, i64 6, i64 10, i64 16, i64 21, i64 22, i64 24, i64 25, i64 28, i64 31, i64 34, i64 35, i64 38, i64 41, i64 42, i64 44, i64 45, i64 64, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 107, i64 110, i64 111, i64 112, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 128, i64 129, i64 130, i64 131, i64 132, i64 134, i64 135, i64 138, i64 139, i64 140, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 151, i64 152, i64 154, i64 159, i64 174, i64 175, i64 182, i64 183, i64 184, i64 186, i64 187, i64 190, i64 191, i64 192, i64 193, i64 197, i64 203, i64 204, i64 205, i64 217, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 244, i64 246, i64 248, i64 250, i64 253, i64 254, i64 255, i64 256, i64 264, i64 265, i64 266, i64 267, i64 268, i64 269, i64 270, i64 271, i64 272, i64 273, i64 274, i64 275, i64 276, i64 278, i64 279, i64 280, i64 293, i64 294, i64 295, i64 296, i64 306, i64 311, i64 313, i64 314, i64 315, i64 316, i64 317, i64 318, i64 320, i64 321, i64 324, i64 325, i64 326, i64 352, i64 353, i64 354, i64 355, i64 356, i64 357, i64 358, i64 359, i64 360, i64 361, i64 384, i64 385, i64 386, i64 387, i64 388, i64 389, i64 432, i64 433, i64 434, i64 435, i64 436, i64 437, i64 438, i64 439, i64 440, i64 448, i64 449, i64 450, i64 451, i64 452, i64 453, i64 454, i64 455, i64 456, i64 457, i64 458, i64 459, i64 460, i64 461, i64 462, i64 463, i64 464, i64 465, i64 466, i64 467, i64 468, i64 469, i64 470, i64 471, i64 472, i64 473, i64 474, i64 475, i64 477, i64 478, i64 479, i64 480, i64 481, i64 482, i64 483, i64 484, i64 485, i64 486, i64 487, i64 488, i64 490, i64 491, i64 492, i64 493, i64 494, i64 495, i64 496, i64 497, i64 498, i64 512, i64 513, i64 514, i64 592, i64 593, i64 594, i64 762, i64 763, i64 764, i64 768, i64 976, i64 977, i64 978, i64 979, i64 980, i64 981, i64 982, i64 983, i64 984, i64 985, i64 986, i64 987, i64 988, i64 989, i64 990, i64 991, i64 992, i64 993, i64 994, i64 995, i64 996, i64 997, i64 998, i64 999, i64 1000, i64 1001, i64 1002, i64 1003, i64 1004, i64 1005, i64 1006, i64 1007, i64 1008, i64 1009, i64 1010, i64 1011]
@__sancov_gen_cov_switch_values.236 = internal global [48 x i64] [i64 46, i64 32, i64 0, i64 21, i64 35, i64 41, i64 118, i64 147, i64 151, i64 174, i64 190, i64 191, i64 197, i64 203, i64 219, i64 223, i64 228, i64 230, i64 231, i64 232, i64 248, i64 253, i64 254, i64 255, i64 313, i64 321, i64 352, i64 356, i64 357, i64 358, i64 384, i64 387, i64 448, i64 450, i64 451, i64 452, i64 478, i64 486, i64 490, i64 491, i64 492, i64 493, i64 494, i64 495, i64 496, i64 497, i64 498, i64 768]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.240 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 10]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 10]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.252 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.253 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.254 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2206, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [18 x i8] c"rt5663_i2c_driver\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3732, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3734, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"rt5663_of_match\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3307, i32 34 }
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"rt5663_i2c_id\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3300, i32 35 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3523, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3532, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3543, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [12 x i8] c"temp_regmap\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3290, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3548, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3551, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3558, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"rt5663_v2_regmap\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3264, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3567, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [14 x i8] c"rt5663_regmap\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3277, i32 35 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3571, i32 20 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3575, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3584, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3600, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3604, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [18 x i8] c"rt5663_patch_list\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 79, i32 34 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3613, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3617, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3674, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3677, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3678, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3685, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5663\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3246, i32 46 }
@___asan_gen_.421 = private unnamed_addr constant [11 x i8] c"rt5663_dai\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3224, i32 34 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3466, i32 32 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3468, i32 32 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3470, i32 32 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3472, i32 32 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3474, i32 32 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3482, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 53, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 54, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3291, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant [14 x i8] c"rt5663_v2_reg\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 87, i32 33 }
@___asan_gen_.454 = private unnamed_addr constant [11 x i8] c"rt5663_reg\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 489, i32 33 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1924, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1965, i32 5 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1991, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1994, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1884, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1893, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1469, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1474, i32 39 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1475, i32 39 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1476, i32 39 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1477, i32 39 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1488, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1492, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1522, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1424, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1439, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1540, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1847, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2019, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1858, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [20 x i8] c"rt5663_snd_controls\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2031, i32 38 }
@___asan_gen_.544 = private unnamed_addr constant [19 x i8] c"rt5663_dapm_routes\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2636, i32 40 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2033, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1375, i32 14 }
@___asan_gen_.553 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2037, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2039, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1376, i32 14 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2454, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2464, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2465, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2468, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2472, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2473, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2475, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2479, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [22 x i8] c"rt5663_sto1_adc_l_mix\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2236, i32 38 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2484, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2488, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2490, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2491, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2492, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2493, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2494, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2497, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2498, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2501, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [18 x i8] c"rt5663_adda_l_mix\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2250, i32 38 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2503, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant [18 x i8] c"rt5663_adda_r_mix\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2257, i32 38 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2505, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2506, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2509, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2511, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [22 x i8] c"rt5663_sto1_dac_l_mix\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2264, i32 38 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2513, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [22 x i8] c"rt5663_sto1_dac_r_mix\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2269, i32 38 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2517, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2519, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2521, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2522, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2525, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2528, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2532, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2533, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant [20 x i8] c"rt5663_dapm_widgets\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2453, i32 41 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2237, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2239, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2251, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2253, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2258, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2260, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2641, i32 29 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2642, i32 29 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2643, i32 17 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2648, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2650, i32 36 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2145, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2153, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [31 x i8] c"rt5663_v2_specific_dapm_routes\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2687, i32 40 }
@___asan_gen_.741 = private unnamed_addr constant [28 x i8] c"rt5663_v2_specific_controls\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2044, i32 38 }
@___asan_gen_.744 = private unnamed_addr constant [28 x i8] c"rt5663_specific_dapm_routes\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2739, i32 40 }
@___asan_gen_.747 = private unnamed_addr constant [25 x i8] c"rt5663_specific_controls\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2054, i32 38 }
@___asan_gen_.750 = private unnamed_addr constant [22 x i8] c"rt5663_hpvol_controls\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2062, i32 38 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2537, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2541, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2553, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2554, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2557, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2560, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2561, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2566, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant [16 x i8] c"rt5663_recmix1l\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2223, i32 38 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2568, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant [16 x i8] c"rt5663_recmix1r\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2230, i32 38 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2570, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2574, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2575, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2581, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2585, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2588, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c"rt5663_sto1_adcl_mux\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2287, i32 38 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2590, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant [21 x i8] c"rt5663_sto1_adcr_mux\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2293, i32 38 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2594, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [22 x i8] c"rt5663_sto1_adc_r_mix\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2243, i32 38 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2598, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2602, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant [18 x i8] c"rt5663_hpo_switch\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2275, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant [32 x i8] c"rt5663_v2_specific_dapm_widgets\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2536, i32 41 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2224, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2226, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.840 = private unnamed_addr constant [22 x i8] c"rt5663_sto1_adcl_enum\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2284, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant [20 x i8] c"rt5663_sto1_adc_src\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2280, i32 27 }
@___asan_gen_.846 = private unnamed_addr constant [22 x i8] c"rt5663_sto1_adcr_enum\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2290, i32 8 }
@___asan_gen_.849 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.850 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2276, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2046, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [21 x i8] c"rt5663_v2_hp_vol_tlv\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1374, i32 14 }
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2050, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [11 x i8] c"in_bst_tlv\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1379, i32 14 }
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2608, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2613, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2625, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2632, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant [20 x i8] c"rt5663_alg_dacl_mux\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2304, i32 38 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2633, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [20 x i8] c"rt5663_alg_dacr_mux\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2315, i32 38 }
@___asan_gen_.890 = private unnamed_addr constant [29 x i8] c"rt5663_specific_dapm_widgets\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2606, i32 41 }
@___asan_gen_.893 = private unnamed_addr constant [21 x i8] c"rt5663_alg_dacl_enum\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2301, i32 8 }
@___asan_gen_.896 = private unnamed_addr constant [20 x i8] c"rt5663_alg_dacl_src\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2297, i32 27 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2298, i32 11 }
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c"rt5663_alg_dacr_enum\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2312, i32 8 }
@___asan_gen_.905 = private unnamed_addr constant [20 x i8] c"rt5663_alg_dacr_src\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2308, i32 27 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2309, i32 11 }
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2059, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [20 x i8] c"rt5663_if1_adc_enum\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1394, i32 8 }
@___asan_gen_.918 = private unnamed_addr constant [27 x i8] c"rt5663_if1_adc_data_select\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1390, i32 27 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1391, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1391, i32 9 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1391, i32 16 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1391, i32 23 }
@___asan_gen_.933 = private unnamed_addr constant [18 x i8] c"rt5663_hp_vol_tlv\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 1373, i32 14 }
@___asan_gen_.936 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3226, i32 11 }
@___asan_gen_.940 = private unnamed_addr constant [19 x i8] c"rt5663_aif_dai_ops\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3215, i32 37 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2878, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2886, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2906, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2925, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2937, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2944, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2948, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3038, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3067, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 3021, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2772, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2777, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1010 = private constant [29 x i8] c"../sound/soc/codecs/rt5663.c\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1010, i32 2782, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant [30 x i8] c"switch.table.rt5663_hw_params\00", align 1
@llvm.compiler.used = appending global [304 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_rt5663_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5663__314_3743_rt5663_i2c_driver_init6, ptr @__ksymtab_rt5663_sel_asrc_clk_src, ptr @rt5663_check_jd_status._entry, ptr @rt5663_check_jd_status._entry_ptr, ptr @rt5663_enable_push_button_irq._entry, ptr @rt5663_enable_push_button_irq._entry.82, ptr @rt5663_enable_push_button_irq._entry_ptr, ptr @rt5663_enable_push_button_irq._entry_ptr.83, ptr @rt5663_hw_params._entry, ptr @rt5663_hw_params._entry_ptr, ptr @rt5663_i2c_driver_exit, ptr @rt5663_i2c_probe._entry, ptr @rt5663_i2c_probe._entry.11, ptr @rt5663_i2c_probe._entry.15, ptr @rt5663_i2c_probe._entry.18, ptr @rt5663_i2c_probe._entry.25, ptr @rt5663_i2c_probe._entry.28, ptr @rt5663_i2c_probe._entry.31, ptr @rt5663_i2c_probe._entry.36, ptr @rt5663_i2c_probe._entry.40, ptr @rt5663_i2c_probe._entry.42, ptr @rt5663_i2c_probe._entry.51, ptr @rt5663_i2c_probe._entry.8, ptr @rt5663_i2c_probe._entry_ptr, ptr @rt5663_i2c_probe._entry_ptr.10, ptr @rt5663_i2c_probe._entry_ptr.13, ptr @rt5663_i2c_probe._entry_ptr.17, ptr @rt5663_i2c_probe._entry_ptr.20, ptr @rt5663_i2c_probe._entry_ptr.27, ptr @rt5663_i2c_probe._entry_ptr.30, ptr @rt5663_i2c_probe._entry_ptr.33, ptr @rt5663_i2c_probe._entry_ptr.39, ptr @rt5663_i2c_probe._entry_ptr.41, ptr @rt5663_i2c_probe._entry_ptr.43, ptr @rt5663_i2c_probe._entry_ptr.53, ptr @rt5663_i2s_use_asrc._entry, ptr @rt5663_i2s_use_asrc._entry.150, ptr @rt5663_i2s_use_asrc._entry_ptr, ptr @rt5663_i2s_use_asrc._entry_ptr.152, ptr @rt5663_jack_detect_work._entry, ptr @rt5663_jack_detect_work._entry.64, ptr @rt5663_jack_detect_work._entry.67, ptr @rt5663_jack_detect_work._entry_ptr, ptr @rt5663_jack_detect_work._entry_ptr.66, ptr @rt5663_jack_detect_work._entry_ptr.68, ptr @rt5663_jd_unplug_work._entry, ptr @rt5663_jd_unplug_work._entry_ptr, ptr @rt5663_sel_asrc_clk_src._entry, ptr @rt5663_sel_asrc_clk_src._entry_ptr, ptr @rt5663_set_bclk_ratio._entry, ptr @rt5663_set_bclk_ratio._entry_ptr, ptr @rt5663_set_dai_pll._entry, ptr @rt5663_set_dai_pll._entry.207, ptr @rt5663_set_dai_pll._entry.210, ptr @rt5663_set_dai_pll._entry_ptr, ptr @rt5663_set_dai_pll._entry_ptr.209, ptr @rt5663_set_dai_pll._entry_ptr.212, ptr @rt5663_set_dai_sysclk._entry, ptr @rt5663_set_dai_sysclk._entry_ptr, ptr @rt5663_set_tdm_slot._entry, ptr @rt5663_set_tdm_slot._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rt5663_i2c_driver, ptr @.str.5, ptr @rt5663_of_match, ptr @rt5663_i2c_id, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @rt5663_i2c_probe._key, ptr @temp_regmap, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @rt5663_i2c_probe._key.21, ptr @rt5663_v2_regmap, ptr @.str.22, ptr @rt5663_i2c_probe._key.23, ptr @rt5663_regmap, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @rt5663_patch_list, ptr @.str.37, ptr @.str.38, ptr @rt5663_i2c_probe.__key, ptr @.str.44, ptr @rt5663_i2c_probe.__key.45, ptr @.str.46, ptr @rt5663_i2c_probe.__key.47, ptr @.str.48, ptr @rt5663_i2c_probe.__key.49, ptr @.str.50, ptr @.str.52, ptr @soc_component_dev_rt5663, ptr @rt5663_dai, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @rt5663_v2_reg, ptr @rt5663_reg, ptr @.str.63, ptr @.str.65, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @rt5663_snd_controls, ptr @rt5663_dapm_routes, ptr @.str.90, ptr @dac_vol_tlv, ptr @.compoundliteral, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @adc_vol_tlv, ptr @.compoundliteral.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @rt5663_sto1_adc_l_mix, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @rt5663_adda_l_mix, ptr @.str.115, ptr @rt5663_adda_r_mix, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @rt5663_sto1_dac_l_mix, ptr @.str.120, ptr @rt5663_sto1_dac_r_mix, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @rt5663_dapm_widgets, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @rt5663_v2_specific_dapm_routes, ptr @rt5663_v2_specific_controls, ptr @rt5663_specific_dapm_routes, ptr @rt5663_specific_controls, ptr @rt5663_hpvol_controls, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @rt5663_recmix1l, ptr @.str.161, ptr @rt5663_recmix1r, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @rt5663_sto1_adcl_mux, ptr @.str.168, ptr @rt5663_sto1_adcr_mux, ptr @.str.169, ptr @rt5663_sto1_adc_r_mix, ptr @.str.170, ptr @.str.171, ptr @rt5663_hpo_switch, ptr @rt5663_v2_specific_dapm_widgets, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.compoundliteral.177, ptr @rt5663_sto1_adcl_enum, ptr @rt5663_sto1_adc_src, ptr @rt5663_sto1_adcr_enum, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @rt5663_v2_hp_vol_tlv, ptr @.compoundliteral.183, ptr @.str.184, ptr @in_bst_tlv, ptr @.compoundliteral.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @rt5663_alg_dacl_mux, ptr @.str.190, ptr @rt5663_alg_dacr_mux, ptr @rt5663_specific_dapm_widgets, ptr @rt5663_alg_dacl_enum, ptr @rt5663_alg_dacl_src, ptr @.str.192, ptr @rt5663_alg_dacr_enum, ptr @rt5663_alg_dacr_src, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @rt5663_if1_adc_enum, ptr @rt5663_if1_adc_data_select, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @rt5663_hp_vol_tlv, ptr @.compoundliteral.200, ptr @.str.201, ptr @rt5663_aif_dai_ops, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @switch.table.rt5663_hw_params], section "llvm.metadata"
@0 = internal global [267 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sel_asrc_clk_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_v2_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_patch_list to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2c_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5663 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_v2_reg to i32), i32 3192, i32 3968, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_reg to i32), i32 2040, i32 2528, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_jack_detect_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_jack_detect_work._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_jack_detect_work._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_check_jd_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_enable_push_button_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_enable_push_button_irq._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_jd_unplug_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_dapm_routes to i32), i32 1872, i32 2336, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_adda_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_adda_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_dac_l_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_dac_r_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_dapm_widgets to i32), i32 6120, i32 7648, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2s_use_asrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_i2s_use_asrc._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_v2_specific_dapm_routes to i32), i32 1976, i32 2464, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_v2_specific_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_specific_dapm_routes to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_specific_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_hpvol_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_recmix1l to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_recmix1r to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adcl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adcr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_hpo_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_v2_specific_dapm_widgets to i32), i32 4680, i32 5856, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adcl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adc_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_sto1_adcr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_v2_hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_bst_tlv to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_alg_dacl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_alg_dacr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_specific_dapm_widgets to i32), i32 1800, i32 2272, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_alg_dacl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_alg_dacl_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_alg_dacr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_alg_dacr_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_if1_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_if1_adc_data_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_set_dai_pll._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_set_dai_pll._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_set_bclk_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5663_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5663_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5663_sel_asrc_clk_src(ptr noundef %component, i32 noundef %filter_mask, i32 noundef %clk_src) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clk_src)
  %switch = icmp ult i32 %clk_src, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and = and i32 %filter_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shl = shl nuw nsw i32 %clk_src, 12
  %spec.select43 = select i1 %tobool.not, i32 0, i32 %shl
  %and2 = and i32 %filter_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %sw.epilog.if.end15_crit_edge, label %if.then4

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then4:                                         ; preds = %sw.epilog
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %codec_ver, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %if.end15.thread
    i32 1, label %if.then17.thread
  ]

if.then17.thread:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = select i1 %tobool.not, i32 7, i32 28679
  %or12 = or i32 %spec.select43, %clk_src
  %call1865 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 132, i32 noundef %or10, i32 noundef %or12) #7
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %sw.epilog.if.end15_crit_edge
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.thread:                                  ; preds = %if.then4
  br i1 %tobool.not, label %if.end15.thread.if.then21_crit_edge, label %if.then17.thread77

if.end15.thread.if.then21_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then17.thread77:                               ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #9
  %call1881 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 132, i32 noundef 28672, i32 noundef %spec.select43) #7
  br label %if.then21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 132, i32 noundef 28672, i32 noundef %spec.select43) #7
  br label %cleanup

if.then21:                                        ; preds = %if.then17.thread77, %if.end15.thread.if.then21_crit_edge
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 133, i32 noundef 28672, i32 noundef %shl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then17, %if.end15.cleanup_crit_edge, %if.then17.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then17 ], [ 0, %if.then17.thread ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_i2c_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5663_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5663_i2c_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5663_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !513
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 344, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %pdata.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %pdata.i, ptr %1, i32 24)
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %pdata.i, i32 noundef 1) #7
  %dc_offset_r_manual.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 1, i32 1
  %call.i36.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %dc_offset_r_manual.i, i32 noundef 1) #7
  %dc_offset_l_manual_mic.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 1, i32 2
  %call.i37.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef %dc_offset_l_manual_mic.i, i32 noundef 1) #7
  %dc_offset_r_manual_mic.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 1, i32 3
  %call.i38.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef %dc_offset_r_manual_mic.i, i32 noundef 1) #7
  %impedance_sensing_num.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 1, i32 4
  %call.i39.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef %impedance_sensing_num.i, i32 noundef 1) #7
  %5 = ptrtoint ptr %impedance_sensing_num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %impedance_sensing_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.if.end10_crit_edge, label %if.then.i

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.i:                                        ; preds = %if.else
  %mul.i = mul i32 %6, 28
  %call.i40.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #7
  %imp_table.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %imp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i40.i, ptr %imp_table.i, align 4
  %call15.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %call.i40.i, i32 noundef %mul.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then.i.if.end10_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %if.else.if.end10_crit_edge, %if.then3
  %arrayidx12 = getelementptr %struct.rt5663_priv, ptr %call.i, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.60, ptr %arrayidx12, align 4
  %arrayidx12.1 = getelementptr %struct.rt5663_priv, ptr %call.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.61, ptr %arrayidx12.1, align 4
  %call15 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.body22.preheader, label %do.end

for.body22.preheader:                             ; preds = %if.end10
  %consumer = getelementptr %struct.rt5663_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer, align 4
  %call25 = tail call i32 @regulator_set_load(ptr noundef %11, i32 noundef 500000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %for.body22.preheader.do.end30_crit_edge, label %for.inc36

for.body22.preheader.do.end30_crit_edge:          ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call15) #10
  br label %cleanup

do.end30:                                         ; preds = %for.inc36.do.end30_crit_edge, %for.body22.preheader.do.end30_crit_edge
  %i.1416.lcssa = phi i32 [ 0, %for.body22.preheader.do.end30_crit_edge ], [ 1, %for.inc36.do.end30_crit_edge ]
  %call25.lcssa = phi i32 [ %call25, %for.body22.preheader.do.end30_crit_edge ], [ %call25.1, %for.inc36.do.end30_crit_edge ]
  %arrayidx24 = getelementptr %struct.rt5663_priv, ptr %call.i, i32 0, i32 8, i32 %i.1416.lcssa
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %13, i32 noundef %call25.lcssa) #10
  br label %cleanup

for.inc36:                                        ; preds = %for.body22.preheader
  %consumer.1 = getelementptr %struct.rt5663_priv, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %14 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer.1, align 4
  %call25.1 = tail call i32 @regulator_set_load(ptr noundef %15, i32 noundef 500000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %cmp26.1 = icmp slt i32 %call25.1, 0
  br i1 %cmp26.1, label %for.inc36.do.end30_crit_edge, label %for.inc36.1

for.inc36.do.end30_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

for.inc36.1:                                      ; preds = %for.inc36
  %call41 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %for.inc36.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call41) #10
  br label %cleanup

if.end48:                                         ; preds = %for.inc36.1
  tail call void @msleep(i32 noundef 300) #7
  %call49 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @temp_regmap, ptr noundef nonnull @rt5663_i2c_probe._key, ptr noundef nonnull @.str.14) #7
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %16) #10
  br label %err_enable

if.end57:                                         ; preds = %if.end48
  %call58 = call i32 @regmap_read(ptr noundef %call49, i32 noundef 255, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %lor.lhs.false, label %if.end57.do.end65_crit_edge

if.end57.do.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

lor.lhs.false:                                    ; preds = %if.end57
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %18, label %lor.lhs.false.do.end65_crit_edge [
    i32 25681, label %lor.lhs.false.if.end68_crit_edge
    i32 25606, label %lor.lhs.false.if.end68_crit_edge423
  ]

lor.lhs.false.if.end68_crit_edge423:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

lor.lhs.false.if.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

lor.lhs.false.do.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end65:                                         ; preds = %lor.lhs.false.do.end65_crit_edge, %if.end57.do.end65_crit_edge
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %21) #10
  call void @msleep(i32 noundef 100) #7
  %call67 = call i32 @regmap_read(ptr noundef %call49, i32 noundef 255, ptr noundef nonnull %val) #7
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %val, align 4
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %lor.lhs.false.if.end68_crit_edge, %lor.lhs.false.if.end68_crit_edge423
  %23 = phi i32 [ %18, %lor.lhs.false.if.end68_crit_edge ], [ %18, %lor.lhs.false.if.end68_crit_edge423 ], [ %.pr, %do.end65 ]
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %23, label %do.end79 [
    i32 25681, label %sw.bb
    i32 25606, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5663_v2_regmap, ptr noundef nonnull @rt5663_i2c_probe._key.21, ptr noundef nonnull @.str.22) #7
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5663_regmap, ptr noundef nonnull @rt5663_i2c_probe._key.23, ptr noundef nonnull @.str.24) #7
  br label %sw.epilog

do.end79:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %23) #10
  br label %err_enable

sw.epilog:                                        ; preds = %sw.bb72, %sw.bb
  %call74.sink = phi ptr [ %call74, %sw.bb72 ], [ %call70, %sw.bb ]
  %.sink = phi i32 [ 1, %sw.bb72 ], [ 0, %sw.bb ]
  %regmap75 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %regmap75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call74.sink, ptr %regmap75, align 4
  %codec_ver76 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %codec_ver76 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %codec_ver76, align 4
  %regmap81 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 2
  %cmp.i373 = icmp ugt ptr %call74.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i373, label %if.then83, label %if.end90

if.then83:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call74.sink to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %27) #10
  br label %err_enable

if.end90:                                         ; preds = %sw.epilog
  %call92 = call i32 @regmap_write(ptr noundef %call74.sink, i32 noundef 0, i32 noundef 0) #7
  %28 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap81, align 4
  call void @regcache_cache_bypass(ptr noundef %29, i1 noundef zeroext true) #7
  %codec_ver94 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %codec_ver94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %codec_ver94, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %31, label %do.end100 [
    i32 0, label %sw.bb95
    i32 1, label %sw.bb96
  ]

sw.bb95:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap81, align 4
  %call.i374 = call i32 @regmap_write(ptr noundef %34, i32 noundef 273, i32 noundef 41986) #7
  %35 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap81, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 97, i32 noundef 256) #7
  %37 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap81, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 16, i32 noundef 16448) #7
  %39 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap81, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 250, i32 noundef 1) #7
  %41 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap81, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 148, i32 noundef 896) #7
  %43 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap81, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 128, i32 noundef 32768) #7
  %45 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap81, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 115, i32 noundef 4096) #7
  %47 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap81, align 4
  %call14.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 314, i32 noundef 12336) #7
  %49 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap81, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 316, i32 noundef 15365) #7
  %51 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap81, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 99, i32 noundef 41534) #7
  call void @msleep(i32 noundef 40) #7
  %53 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap81, align 4
  %call20.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 99, i32 noundef 62014) #7
  %55 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap81, align 4
  %call22.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 479, i32 noundef 801) #7
  %57 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap81, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 477, i32 noundef 64512) #7
  call void @msleep(i32 noundef 500) #7
  br label %sw.epilog102

sw.bb96:                                          ; preds = %if.end90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %59 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %value.i, align 4, !annotation !513
  %60 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap81, align 4
  %call.i376 = call i32 @regmap_write(ptr noundef %61, i32 noundef 0, i32 noundef 0) #7
  call void @msleep(i32 noundef 20) #7
  %62 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap81, align 4
  %call2.i377 = call i32 @regmap_write(ptr noundef %63, i32 noundef 267, i32 noundef 161) #7
  %64 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap81, align 4
  %call4.i378 = call i32 @regmap_write(ptr noundef %65, i32 noundef 148, i32 noundef 896) #7
  %66 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap81, align 4
  %call6.i379 = call i32 @regmap_write(ptr noundef %67, i32 noundef 128, i32 noundef 32768) #7
  %68 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap81, align 4
  %call8.i380 = call i32 @regmap_write(ptr noundef %69, i32 noundef 115, i32 noundef 4096) #7
  %70 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap81, align 4
  %call10.i381 = call i32 @regmap_write(ptr noundef %71, i32 noundef 280, i32 noundef 50) #7
  %72 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap81, align 4
  %call12.i382 = call i32 @regmap_write(ptr noundef %73, i32 noundef 466, i32 noundef 12) #7
  %74 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap81, align 4
  %call14.i383 = call i32 @regmap_write(ptr noundef %75, i32 noundef 762, i32 noundef 804) #7
  %76 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap81, align 4
  %call16.i384 = call i32 @regmap_write(ptr noundef %77, i32 noundef 250, i32 noundef 32769) #7
  %78 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap81, align 4
  %call18.i385 = call i32 @regmap_write(ptr noundef %79, i32 noundef 279, i32 noundef 3880) #7
  %80 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap81, align 4
  %call20.i386 = call i32 @regmap_write(ptr noundef %81, i32 noundef 99, i32 noundef 41531) #7
  call void @msleep(i32 noundef 30) #7
  %82 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap81, align 4
  %call22.i387 = call i32 @regmap_write(ptr noundef %83, i32 noundef 99, i32 noundef 62011) #7
  %84 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap81, align 4
  %call24.i388 = call i32 @regmap_write(ptr noundef %85, i32 noundef 100, i32 noundef 32768) #7
  %86 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap81, align 4
  %call26.i = call i32 @regmap_write(ptr noundef %87, i32 noundef 101, i32 noundef 8) #7
  %88 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap81, align 4
  %call28.i = call i32 @regmap_write(ptr noundef %89, i32 noundef 110, i32 noundef 65535) #7
  %90 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap81, align 4
  %call30.i = call i32 @regmap_write(ptr noundef %91, i32 noundef 111, i32 noundef 65535) #7
  %92 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap81, align 4
  %call32.i = call i32 @regmap_write(ptr noundef %93, i32 noundef 592, i32 noundef 35856) #7
  %94 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap81, align 4
  %call34.i = call i32 @regmap_write(ptr noundef %95, i32 noundef 220, i32 noundef 193) #7
  %96 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap81, align 4
  %call36.i = call i32 @regmap_write(ptr noundef %97, i32 noundef 230, i32 noundef 47232) #7
  %98 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap81, align 4
  %call38.i = call i32 @regmap_write(ptr noundef %99, i32 noundef 231, i32 noundef 16656) #7
  %100 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap81, align 4
  %call40.i = call i32 @regmap_write(ptr noundef %101, i32 noundef 231, i32 noundef 16664) #7
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then.i390.while.cond.i_crit_edge, %sw.bb96
  %count.0.i = phi i32 [ 0, %sw.bb96 ], [ %inc.i, %if.then.i390.while.cond.i_crit_edge ]
  %102 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap81, align 4
  %call42.i = call i32 @regmap_read(ptr noundef %103, i32 noundef 191, ptr noundef nonnull %value.i) #7
  %104 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %value.i, align 4
  %and.i = and i32 %105, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i389 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i389, label %if.then.i390, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then.i390:                                     ; preds = %while.cond.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 201
  br i1 %exitcond.i, label %if.then.i390.while.end.i_crit_edge, label %if.then.i390.while.cond.i_crit_edge

if.then.i390.while.cond.i_crit_edge:              ; preds = %if.then.i390
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.then.i390.while.end.i_crit_edge:               ; preds = %if.then.i390
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.then.i390.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %106 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap81, align 4
  %call46.i = call i32 @regmap_write(ptr noundef %107, i32 noundef 466, i32 noundef 0) #7
  %108 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap81, align 4
  %call48.i = call i32 @regmap_write(ptr noundef %109, i32 noundef 143, i32 noundef 12291) #7
  %110 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap81, align 4
  %call50.i = call i32 @regmap_write(ptr noundef %111, i32 noundef 142, i32 noundef 56) #7
  %112 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap81, align 4
  %call52.i = call i32 @regmap_write(ptr noundef %113, i32 noundef 142, i32 noundef 59) #7
  %114 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap81, align 4
  %call54.i = call i32 @regmap_write(ptr noundef %115, i32 noundef 98, i32 noundef 33792) #7
  %116 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap81, align 4
  %call56.i = call i32 @regmap_write(ptr noundef %117, i32 noundef 97, i32 noundef 36344) #7
  %118 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap81, align 4
  %call58.i = call i32 @regmap_write(ptr noundef %119, i32 noundef 100, i32 noundef 32771) #7
  %120 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap81, align 4
  %call60.i = call i32 @regmap_write(ptr noundef %121, i32 noundef 101, i32 noundef 396) #7
  %122 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap81, align 4
  %call62.i = call i32 @regmap_write(ptr noundef %123, i32 noundef 145, i32 noundef 7730) #7
  %124 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap81, align 4
  %call64.i = call i32 @regmap_write(ptr noundef %125, i32 noundef 763, i32 noundef 32905) #7
  %126 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap81, align 4
  %call66.i = call i32 @regmap_write(ptr noundef %127, i32 noundef 274, i32 noundef 15115) #7
  call void @msleep(i32 noundef 40) #7
  %128 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap81, align 4
  %call68.i = call i32 @regmap_write(ptr noundef %129, i32 noundef 42, i32 noundef 0) #7
  %130 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap81, align 4
  %call70.i = call i32 @regmap_write(ptr noundef %131, i32 noundef 45, i32 noundef 12) #7
  %132 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap81, align 4
  %call72.i = call i32 @regmap_write(ptr noundef %133, i32 noundef 514, i32 noundef 44970) #7
  %134 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap81, align 4
  %call74.i = call i32 @regmap_write(ptr noundef %135, i32 noundef 293, i32 noundef 8740) #7
  %136 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap81, align 4
  %call76.i = call i32 @regmap_write(ptr noundef %137, i32 noundef 2, i32 noundef 32904) #7
  %138 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap81, align 4
  %call78.i = call i32 @regmap_write(ptr noundef %139, i32 noundef 360, i32 noundef 23) #7
  %140 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap81, align 4
  %call80.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 361, i32 noundef 23) #7
  %142 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap81, align 4
  %call82.i = call i32 @regmap_write(ptr noundef %143, i32 noundef 38, i32 noundef 16448) #7
  %144 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap81, align 4
  %call84.i = call i32 @regmap_write(ptr noundef %145, i32 noundef 315, i32 noundef 12288) #7
  %146 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regmap81, align 4
  %call86.i = call i32 @regmap_write(ptr noundef %147, i32 noundef 16, i32 noundef 5) #7
  %148 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap81, align 4
  %call88.i = call i32 @regmap_write(ptr noundef %149, i32 noundef 116, i32 noundef 49152) #7
  %150 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap81, align 4
  %call90.i = call i32 @regmap_write(ptr noundef %151, i32 noundef 236, i32 noundef 13088) #7
  %152 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap81, align 4
  %call92.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 479, i32 noundef 201) #7
  %154 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap81, align 4
  %call94.i = call i32 @regmap_write(ptr noundef %155, i32 noundef 762, i32 noundef 76) #7
  %156 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap81, align 4
  %call96.i = call i32 @regmap_write(ptr noundef %157, i32 noundef 264, i32 noundef 4369) #7
  %158 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap81, align 4
  %call98.i = call i32 @regmap_write(ptr noundef %159, i32 noundef 273, i32 noundef 17410) #7
  %160 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap81, align 4
  %call100.i = call i32 @regmap_write(ptr noundef %161, i32 noundef 296, i32 noundef 13073) #7
  %162 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap81, align 4
  %call102.i = call i32 @regmap_write(ptr noundef %163, i32 noundef 477, i32 noundef 105) #7
  %164 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regmap81, align 4
  %call104.i = call i32 @regmap_write(ptr noundef %165, i32 noundef 480, i32 noundef 1742) #7
  %166 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap81, align 4
  %call106.i = call i32 @regmap_write(ptr noundef %167, i32 noundef 478, i32 noundef 26624) #7
  %168 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regmap81, align 4
  %call108.i = call i32 @regmap_write(ptr noundef %169, i32 noundef 296, i32 noundef 4352) #7
  %170 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regmap81, align 4
  %call110.i = call i32 @regmap_write(ptr noundef %171, i32 noundef 485, i32 noundef 87) #7
  %172 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regmap81, align 4
  %call112.i = call i32 @regmap_write(ptr noundef %173, i32 noundef 478, i32 noundef 59392) #7
  %174 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regmap81, align 4
  %call116231.i = call i32 @regmap_read(ptr noundef %175, i32 noundef 478, ptr noundef nonnull %value.i) #7
  %176 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %value.i, align 4
  %and117232.i = and i32 %177, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117232.i)
  %tobool118.not233.i = icmp eq i32 %and117232.i, 0
  br i1 %tobool118.not233.i, label %while.end.i.while.end126.i_crit_edge, label %while.end.i.if.then119.i_crit_edge

while.end.i.if.then119.i_crit_edge:               ; preds = %while.end.i
  br label %if.then119.i

while.end.i.while.end126.i_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end126.i

while.cond113.i:                                  ; preds = %if.then119.i
  %inc125.i = add nuw nsw i32 %count.1234.i, 1
  %178 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap81, align 4
  %call116.i = call i32 @regmap_read(ptr noundef %179, i32 noundef 478, ptr noundef nonnull %value.i) #7
  %180 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %value.i, align 4
  %and117.i = and i32 %181, 32768
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %while.cond113.i.while.end126.i_crit_edge, label %while.cond113.i.if.then119.i_crit_edge

while.cond113.i.if.then119.i_crit_edge:           ; preds = %while.cond113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119.i

while.cond113.i.while.end126.i_crit_edge:         ; preds = %while.cond113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end126.i

if.then119.i:                                     ; preds = %while.cond113.i.if.then119.i_crit_edge, %while.end.i.if.then119.i_crit_edge
  %count.1234.i = phi i32 [ %inc125.i, %while.cond113.i.if.then119.i_crit_edge ], [ 0, %while.end.i.if.then119.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %count.1234.i)
  %exitcond240.i = icmp eq i32 %count.1234.i, 201
  br i1 %exitcond240.i, label %if.then119.i.rt5663_calibrate.exit_crit_edge, label %while.cond113.i

if.then119.i.rt5663_calibrate.exit_crit_edge:     ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5663_calibrate.exit

while.end126.i:                                   ; preds = %while.cond113.i.while.end126.i_crit_edge, %while.end.i.while.end126.i_crit_edge
  %182 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regmap81, align 4
  %call128.i = call i32 @regmap_write(ptr noundef %183, i32 noundef 478, i32 noundef 25088) #7
  %184 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regmap81, align 4
  %call130.i = call i32 @regmap_write(ptr noundef %185, i32 noundef 485, i32 noundef 89) #7
  %186 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regmap81, align 4
  %call132.i = call i32 @regmap_write(ptr noundef %187, i32 noundef 478, i32 noundef 57856) #7
  %188 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regmap81, align 4
  %call136235.i = call i32 @regmap_read(ptr noundef %189, i32 noundef 478, ptr noundef nonnull %value.i) #7
  %190 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %value.i, align 4
  %and137236.i = and i32 %191, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137236.i)
  %tobool138.not237.i = icmp eq i32 %and137236.i, 0
  br i1 %tobool138.not237.i, label %while.end126.i.while.end146.i_crit_edge, label %while.end126.i.if.then139.i_crit_edge

while.end126.i.if.then139.i_crit_edge:            ; preds = %while.end126.i
  br label %if.then139.i

while.end126.i.while.end146.i_crit_edge:          ; preds = %while.end126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end146.i

while.cond133.i:                                  ; preds = %if.then139.i
  %inc145.i = add nuw nsw i32 %count.2238.i, 1
  %192 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap81, align 4
  %call136.i = call i32 @regmap_read(ptr noundef %193, i32 noundef 478, ptr noundef nonnull %value.i) #7
  %194 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %value.i, align 4
  %and137.i = and i32 %195, 32768
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %while.cond133.i.while.end146.i_crit_edge, label %while.cond133.i.if.then139.i_crit_edge

while.cond133.i.if.then139.i_crit_edge:           ; preds = %while.cond133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139.i

while.cond133.i.while.end146.i_crit_edge:         ; preds = %while.cond133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end146.i

if.then139.i:                                     ; preds = %while.cond133.i.if.then139.i_crit_edge, %while.end126.i.if.then139.i_crit_edge
  %count.2238.i = phi i32 [ %inc145.i, %while.cond133.i.if.then139.i_crit_edge ], [ 0, %while.end126.i.if.then139.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %count.2238.i)
  %exitcond241.i = icmp eq i32 %count.2238.i, 201
  br i1 %exitcond241.i, label %if.then139.i.rt5663_calibrate.exit_crit_edge, label %while.cond133.i

if.then139.i.rt5663_calibrate.exit_crit_edge:     ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt5663_calibrate.exit

while.end146.i:                                   ; preds = %while.cond133.i.while.end146.i_crit_edge, %while.end126.i.while.end146.i_crit_edge
  %196 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap81, align 4
  %call148.i = call i32 @regmap_write(ptr noundef %197, i32 noundef 230, i32 noundef 47328) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %198 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regmap81, align 4
  %call150.i = call i32 @regmap_write(ptr noundef %199, i32 noundef 99, i32 noundef 59) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %200 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regmap81, align 4
  %call152.i = call i32 @regmap_write(ptr noundef %201, i32 noundef 97, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %202 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regmap81, align 4
  %call154.i = call i32 @regmap_write(ptr noundef %203, i32 noundef 142, i32 noundef 11) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %204 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regmap81, align 4
  %call156.i = call i32 @regmap_write(ptr noundef %205, i32 noundef 142, i32 noundef 8) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %206 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regmap81, align 4
  %call158.i = call i32 @regmap_write(ptr noundef %207, i32 noundef 100, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  br label %rt5663_calibrate.exit

rt5663_calibrate.exit:                            ; preds = %while.end146.i, %if.then139.i.rt5663_calibrate.exit_crit_edge, %if.then119.i.rt5663_calibrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %sw.epilog102

do.end100:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.7) #10
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %do.end100, %rt5663_calibrate.exit, %sw.bb95
  %208 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regmap81, align 4
  call void @regcache_cache_bypass(ptr noundef %209, i1 noundef zeroext false) #7
  %210 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regmap81, align 4
  %call105 = call i32 @regmap_write(ptr noundef %211, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_i2c_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_i2c_probe, %if.then112)) #7
          to label %do.end116 [label %if.then112], !srcloc !514

if.then112:                                       ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_i2c_probe.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.35) #7
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %sw.epilog102
  %212 = ptrtoint ptr %codec_ver94 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %codec_ver94, align 4
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %213, label %do.end131 [
    i32 0, label %do.end116.sw.epilog133_crit_edge
    i32 1, label %sw.bb118
  ]

do.end116.sw.epilog133_crit_edge:                 ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog133

sw.bb118:                                         ; preds = %do.end116
  %215 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regmap81, align 4
  %call120 = call i32 @regmap_register_patch(ptr noundef %216, ptr noundef nonnull @rt5663_patch_list, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121.not = icmp eq i32 %call120, 0
  br i1 %cmp121.not, label %sw.bb118.sw.epilog133_crit_edge, label %do.end125

sw.bb118.sw.epilog133_crit_edge:                  ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog133

do.end125:                                        ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call120) #10
  br label %sw.epilog133

do.end131:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.7) #10
  br label %sw.epilog133

sw.epilog133:                                     ; preds = %do.end131, %do.end125, %sw.bb118.sw.epilog133_crit_edge, %do.end116.sw.epilog133_crit_edge
  %217 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap81, align 4
  %call.i391 = call i32 @regmap_update_bits_base(ptr noundef %218, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %219 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regmap81, align 4
  %call.i392 = call i32 @regmap_update_bits_base(ptr noundef %220, i32 noundef 223, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %221 = ptrtoint ptr %codec_ver94 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %codec_ver94, align 4
  %223 = zext i32 %222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %222, label %do.end178 [
    i32 0, label %sw.bb139
    i32 1, label %sw.bb158
  ]

sw.bb139:                                         ; preds = %sw.epilog133
  call void @__sanitizer_cov_trace_pc() #9
  %224 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regmap81, align 4
  %call141 = call i32 @regmap_write(ptr noundef %225, i32 noundef 273, i32 noundef 41986) #7
  %226 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regmap81, align 4
  %call.i393 = call i32 @regmap_update_bits_base(ptr noundef %227, i32 noundef 159, i32 noundef 49152, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %228 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regmap81, align 4
  %call.i394 = call i32 @regmap_update_bits_base(ptr noundef %229, i32 noundef 100, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %230 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regmap81, align 4
  %call.i395 = call i32 @regmap_update_bits_base(ptr noundef %231, i32 noundef 182, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %232 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regmap81, align 4
  %call.i396 = call i32 @regmap_update_bits_base(ptr noundef %233, i32 noundef 475, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %234 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regmap81, align 4
  %call.i397 = call i32 @regmap_update_bits_base(ptr noundef %235, i32 noundef 16, i32 noundef 36928, i32 noundef 36928, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %236 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regmap81, align 4
  %call.i398 = call i32 @regmap_update_bits_base(ptr noundef %237, i32 noundef 193, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %238 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regmap81, align 4
  %call.i399 = call i32 @regmap_update_bits_base(ptr noundef %239, i32 noundef 194, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %240 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regmap81, align 4
  %call.i400 = call i32 @regmap_update_bits_base(ptr noundef %241, i32 noundef 99, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body182

sw.bb158:                                         ; preds = %sw.epilog133
  call void @__sanitizer_cov_trace_pc() #9
  %242 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regmap81, align 4
  %call.i401 = call i32 @regmap_update_bits_base(ptr noundef %243, i32 noundef 250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %244 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regmap81, align 4
  %call.i402 = call i32 @regmap_update_bits_base(ptr noundef %245, i32 noundef 159, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %246 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regmap81, align 4
  %call.i403 = call i32 @regmap_update_bits_base(ptr noundef %247, i32 noundef 182, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %248 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regmap81, align 4
  %call.i404 = call i32 @regmap_update_bits_base(ptr noundef %249, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %250 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regmap81, align 4
  %call168 = call i32 @regmap_write(ptr noundef %251, i32 noundef 280, i32 noundef 50) #7
  %252 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regmap81, align 4
  %call.i405 = call i32 @regmap_update_bits_base(ptr noundef %253, i32 noundef 193, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %254 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regmap81, align 4
  %call.i406 = call i32 @regmap_update_bits_base(ptr noundef %255, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %256 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regmap81, align 4
  %call.i407 = call i32 @regmap_update_bits_base(ptr noundef %257, i32 noundef 120, i32 noundef 49152, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body182

do.end178:                                        ; preds = %sw.epilog133
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.7) #10
  br label %do.body182

do.body182:                                       ; preds = %do.end178, %sw.bb158, %sw.bb139
  %jack_detect_work = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #7
  %258 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.44, ptr noundef nonnull @rt5663_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry189 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %259 = ptrtoint ptr %entry189 to i32
  call void @__asan_store4_noabort(i32 %259)
  store volatile ptr %entry189, ptr %entry189, align 4
  %prev.i = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %260 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %entry189, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %261 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @rt5663_jack_detect_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.46, ptr noundef nonnull @rt5663_i2c_probe.__key.45) #7
  %jd_unplug_work = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %jd_unplug_work, i32 noundef 0) #7
  %262 = ptrtoint ptr %jd_unplug_work to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 -64, ptr %jd_unplug_work, align 4
  %lockdep_map210 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map210, ptr noundef nonnull @.str.48, ptr noundef nonnull @rt5663_i2c_probe.__key.47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry213 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %263 = ptrtoint ptr %entry213 to i32
  call void @__asan_store4_noabort(i32 %263)
  store volatile ptr %entry213, ptr %entry213, align 4
  %prev.i408 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %264 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %entry213, ptr %prev.i408, align 4
  %func216 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %265 = ptrtoint ptr %func216 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @rt5663_jd_unplug_work, ptr %func216, align 4
  %timer221 = getelementptr inbounds %struct.rt5663_priv, ptr %call.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer221, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.50, ptr noundef nonnull @rt5663_i2c_probe.__key.49) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %266 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool226.not = icmp eq i32 %267, 0
  br i1 %tobool226.not, label %do.body182.if.end237_crit_edge, label %if.then227

do.body182.if.end237_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

if.then227:                                       ; preds = %do.body182
  %call.i409 = call i32 @request_threaded_irq(i32 noundef %267, ptr noundef nonnull @rt5663_irq, ptr noundef null, i32 noundef 8195, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i409)
  %tobool230.not = icmp eq i32 %call.i409, 0
  br i1 %tobool230.not, label %if.then227.if.end237_crit_edge, label %do.end234

if.then227.if.end237_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

do.end234:                                        ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.7, i32 noundef %call.i409) #10
  br label %err_enable

if.end237:                                        ; preds = %if.then227.if.end237_crit_edge, %do.body182.if.end237_crit_edge
  %call239 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5663, ptr noundef nonnull @rt5663_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.end237.cleanup_crit_edge, label %if.end237.err_enable_crit_edge

if.end237.err_enable_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_enable

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_enable:                                       ; preds = %if.end237.err_enable_crit_edge, %do.end234, %if.then83, %do.end79, %if.then51
  %ret.0 = phi i32 [ %16, %if.then51 ], [ -19, %do.end79 ], [ %27, %if.then83 ], [ %call.i409, %do.end234 ], [ %call239, %if.end237.err_enable_crit_edge ]
  %irq243 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %268 = ptrtoint ptr %irq243 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %irq243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool244.not = icmp eq i32 %269, 0
  br i1 %tobool244.not, label %err_enable.if.end248_crit_edge, label %if.then245

err_enable.if.end248_crit_edge:                   ; preds = %err_enable
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

if.then245:                                       ; preds = %err_enable
  call void @__sanitizer_cov_trace_pc() #9
  %call247 = call ptr @free_irq(i32 noundef %269, ptr noundef nonnull %call.i) #7
  br label %if.end248

if.end248:                                        ; preds = %if.then245, %err_enable.if.end248_crit_edge
  %call251 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %if.end237.cleanup_crit_edge, %do.end46, %do.end30, %do.end, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %call25.lcssa, %do.end30 ], [ %call41, %do.end46 ], [ %ret.0, %if.end248 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end237.cleanup_crit_edge ], [ %call15.i, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_i2c_remove(ptr nocapture noundef readonly %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.rt5663_priv, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5663_i2c_shutdown(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5663_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5663_jack_detect_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @snd_soc_component_read(ptr noundef nonnull %1, i32 noundef 190) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_check_jd_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jack_detect_work, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !514

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_check_jd_status.__UNIQUE_ID_ddebug305, ptr noundef %7, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef %call1.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %codec_ver.i = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %codec_ver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_ver.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %9, label %rt5663_check_jd_status.exit.thread [
    i32 0, label %rt5663_check_jd_status.exit
    i32 1, label %sw.bb8.i
  ]

sw.bb8.i:                                         ; preds = %do.end.i
  %and9.i = and i32 %call1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %sw.bb8.i.if.then2_crit_edge, label %sw.bb8.i.if.else40_crit_edge

sw.bb8.i.if.else40_crit_edge:                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else40

sw.bb8.i.if.then2_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

rt5663_check_jd_status.exit.thread:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str) #10
  br label %if.else40

rt5663_check_jd_status.exit:                      ; preds = %do.end.i
  %and.i = and i32 %call1.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %rt5663_check_jd_status.exit.if.then2_crit_edge, label %rt5663_check_jd_status.exit.if.else40_crit_edge

rt5663_check_jd_status.exit.if.else40_crit_edge:  ; preds = %rt5663_check_jd_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else40

rt5663_check_jd_status.exit.if.then2_crit_edge:   ; preds = %rt5663_check_jd_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %rt5663_check_jd_status.exit.if.then2_crit_edge, %sw.bb8.i.if.then2_crit_edge
  %jack_type = getelementptr i8, ptr %work, i32 308
  %13 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then2
  %codec_ver = getelementptr i8, ptr %work, i32 280
  %15 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %codec_ver, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %16, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call5 = tail call fastcc i32 @rt5663_v2_jack_detect(ptr noundef %19, i32 noundef 1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then3
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %call8 = tail call fastcc i32 @rt5663_jack_detect(ptr noundef %21, i32 noundef 1)
  %impedance_sensing_num = getelementptr i8, ptr %work, i32 -12
  %22 = ptrtoint ptr %impedance_sensing_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %impedance_sensing_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not = icmp eq i32 %23, 0
  br i1 %tobool9.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then10

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb6
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %dev.i.i96 = getelementptr inbounds %struct.snd_soc_component, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i.i96 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i96, align 4
  %driver_data.i.i.i97 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i97, align 4
  %impedance_sensing_num.i = getelementptr inbounds %struct.rt5663_priv, ptr %29, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %impedance_sensing_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %impedance_sensing_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3.not.i = icmp eq i32 %31, 0
  br i1 %cmp3.not.i, label %if.then10.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then10.for.end.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then10
  %imp_table.i = getelementptr inbounds %struct.rt5663_priv, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %imp_table.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %imp_table.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %vol.i = getelementptr %struct.impedance_mapping_table, ptr %33, i32 %i.04.i, i32 2
  %34 = ptrtoint ptr %vol.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp1.i = icmp eq i32 %35, 7
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %31
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then10.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then10.for.end.i_crit_edge ], [ %31, %for.inc.i.for.end.i_crit_edge ], [ %i.04.i, %for.body.i.for.end.i_crit_edge ]
  %jack_type.i = getelementptr inbounds %struct.rt5663_priv, ptr %29, i32 0, i32 16
  %36 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jack_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp2.i = icmp eq i32 %37, 3
  %imp_table4.i = getelementptr inbounds %struct.rt5663_priv, ptr %29, i32 0, i32 7
  %38 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %imp_table4.i, align 4
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dc_offset_l_manual_mic.i = getelementptr %struct.impedance_mapping_table, ptr %39, i32 %i.0.lcssa.i, i32 5
  %40 = ptrtoint ptr %dc_offset_l_manual_mic.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dc_offset_l_manual_mic.i, align 4
  %shr.i = lshr i32 %41, 16
  %call6.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 385, i32 noundef %shr.i) #7
  %42 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_l_manual_mic9.i = getelementptr %struct.impedance_mapping_table, ptr %43, i32 %i.0.lcssa.i, i32 5
  %44 = ptrtoint ptr %dc_offset_l_manual_mic9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dc_offset_l_manual_mic9.i, align 4
  %and.i98 = and i32 %45, 65535
  %call10.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 386, i32 noundef %and.i98) #7
  %46 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual_mic.i = getelementptr %struct.impedance_mapping_table, ptr %47, i32 %i.0.lcssa.i, i32 6
  %48 = ptrtoint ptr %dc_offset_r_manual_mic.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dc_offset_r_manual_mic.i, align 4
  %shr13.i = lshr i32 %49, 16
  %call14.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 388, i32 noundef %shr13.i) #7
  %50 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual_mic17.i = getelementptr %struct.impedance_mapping_table, ptr %51, i32 %i.0.lcssa.i, i32 6
  br label %if.end38.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dc_offset_l_manual.i = getelementptr %struct.impedance_mapping_table, ptr %39, i32 %i.0.lcssa.i, i32 3
  %52 = ptrtoint ptr %dc_offset_l_manual.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dc_offset_l_manual.i, align 4
  %shr22.i = lshr i32 %53, 16
  %call23.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 385, i32 noundef %shr22.i) #7
  %54 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_l_manual26.i = getelementptr %struct.impedance_mapping_table, ptr %55, i32 %i.0.lcssa.i, i32 3
  %56 = ptrtoint ptr %dc_offset_l_manual26.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dc_offset_l_manual26.i, align 4
  %and27.i = and i32 %57, 65535
  %call28.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 386, i32 noundef %and27.i) #7
  %58 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual.i = getelementptr %struct.impedance_mapping_table, ptr %59, i32 %i.0.lcssa.i, i32 4
  %60 = ptrtoint ptr %dc_offset_r_manual.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dc_offset_r_manual.i, align 4
  %shr31.i = lshr i32 %61, 16
  %call32.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 388, i32 noundef %shr31.i) #7
  %62 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual35.i = getelementptr %struct.impedance_mapping_table, ptr %63, i32 %i.0.lcssa.i, i32 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then3.i
  %dc_offset_r_manual35.sink.i = phi ptr [ %dc_offset_r_manual35.i, %if.else.i ], [ %dc_offset_r_manual_mic17.i, %if.then3.i ]
  %64 = ptrtoint ptr %dc_offset_r_manual35.sink.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dc_offset_r_manual35.sink.i, align 4
  %and36.i = and i32 %65, 65535
  %call37.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 389, i32 noundef %and36.i) #7
  %call39.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 132) #7
  %call40.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 38) #7
  %call41.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 762) #7
  %call42.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 145) #7
  %call43.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 16) #7
  %call44.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 128) #7
  %call45.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 352, i32 noundef 32768, i32 noundef 0) #7
  %call46.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 132, i32 noundef 0) #7
  %call47.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 38, i32 noundef 16448) #7
  %call48.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 99, i32 noundef 61440, i32 noundef 40960) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %call49.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 99, i32 noundef 20480, i32 noundef 20480) #7
  %call50.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 128, i32 noundef 49152, i32 noundef 32768) #7
  %call51.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 148, i32 noundef 512, i32 noundef 512) #7
  %call52.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 115, i32 noundef 28672, i32 noundef 0) #7
  %call53.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 110, i32 noundef 65280) #7
  %call54.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 111, i32 noundef 65532) #7
  %call55.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 145, i32 noundef 4658) #7
  %call56.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 475, i32 noundef 5) #7
  %call57.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 143, i32 noundef 12291) #7
  %call58.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 142, i32 noundef 48, i32 noundef 48) #7
  %call59.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 142, i32 noundef 3, i32 noundef 3) #7
  %call60.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 98, i32 noundef 33792, i32 noundef 33792) #7
  %call61.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 97, i32 noundef 3352, i32 noundef 3352) #7
  tail call void @msleep(i32 noundef 40) #7
  %call62.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 100, i32 noundef 3, i32 noundef 3) #7
  tail call void @msleep(i32 noundef 30) #7
  %call63.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 146, i32 noundef 4977) #7
  %call64.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 42, i32 noundef 0) #7
  %call65.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 45, i32 noundef 12) #7
  %call66.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 514, i32 noundef 44970) #7
  %call67.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 293, i32 noundef 8740) #7
  %call68.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 2, i32 noundef 32904) #7
  %call69.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 315, i32 noundef 12288) #7
  %call70.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 116, i32 noundef 49152) #7
  %call71.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 236, i32 noundef 13088) #7
  %call72.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 479, i32 noundef 201) #7
  %call73.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 762, i32 noundef 76) #7
  %call74.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 264, i32 noundef 30515) #7
  %call75.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 296, i32 noundef 30583) #7
  %call76.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 360, i32 noundef 7) #7
  %call77.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 361, i32 noundef 7) #7
  %call78.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 763, i32 noundef 676) #7
  %call79.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 16, i32 noundef 5) #7
  %call80.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 448, i32 noundef 17204) #7
  %call81.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 184, i32 noundef 4, i32 noundef 4) #7
  %call82.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 474, i32 noundef 8704) #7
  %call83.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 142, i32 noundef 12288, i32 noundef 12288) #7
  %call84.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 474, i32 noundef 25088) #7
  br label %for.body87.i

for.body87.i:                                     ; preds = %for.body87.i.for.body87.i_crit_edge, %if.end38.i
  %i.16.i = phi i32 [ 0, %if.end38.i ], [ %inc93.i, %for.body87.i.for.body87.i_crit_edge ]
  tail call void @msleep(i32 noundef 20) #7
  %call88.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 190) #7
  %and89.i = and i32 %call88.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool.not.i = icmp ne i32 %and89.i, 0
  %inc93.i = add nuw nsw i32 %i.16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc93.i)
  %exitcond12.not.i = icmp eq i32 %inc93.i, 100
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond12.not.i
  br i1 %or.cond.i, label %for.end94.i, label %for.body87.i.for.body87.i_crit_edge

for.body87.i.for.body87.i_crit_edge:              ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87.i

for.end94.i:                                      ; preds = %for.body87.i
  %call95.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 451) #7
  %call96.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 142, i32 noundef 12288, i32 noundef 0) #7
  %call97.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 190, i32 noundef 0) #7
  %call98.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 474, i32 noundef 0) #7
  %call99.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 148, i32 noundef 512, i32 noundef 0) #7
  %call100.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 128, i32 noundef %call44.i) #7
  %call101.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 16, i32 noundef %call43.i) #7
  %call102.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 763, i32 noundef 164) #7
  %call103.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 762, i32 noundef %call41.i) #7
  %call104.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 479, i32 noundef 200) #7
  %call105.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 236, i32 noundef 45856) #7
  %call106.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 116, i32 noundef 58368) #7
  %call107.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 315, i32 noundef 8192) #7
  %call108.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 2, i32 noundef 8) #7
  %call109.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 100, i32 noundef 3, i32 noundef 0) #7
  %call110.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 97, i32 noundef 3352, i32 noundef 0) #7
  %call111.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 98, i32 noundef 33792, i32 noundef 0) #7
  %call112.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 142, i32 noundef 3, i32 noundef 0) #7
  %call113.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 142, i32 noundef 48, i32 noundef 0) #7
  %call114.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 475, i32 noundef 0) #7
  %call115.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 145, i32 noundef %call42.i) #7
  %call116.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 99, i32 noundef 40960, i32 noundef 0) #7
  %call117.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 38, i32 noundef %call40.i) #7
  %call118.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 132, i32 noundef %call39.i) #7
  %66 = ptrtoint ptr %impedance_sensing_num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %impedance_sensing_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1227.not.i = icmp eq i32 %67, 0
  br i1 %cmp1227.not.i, label %for.end94.i.for.end134.i_crit_edge, label %for.body123.lr.ph.i

for.end94.i.for.end134.i_crit_edge:               ; preds = %for.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end134.i

for.body123.lr.ph.i:                              ; preds = %for.end94.i
  %68 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %imp_table4.i, align 4
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.inc132.i.for.body123.i_crit_edge, %for.body123.lr.ph.i
  %i.28.i = phi i32 [ 0, %for.body123.lr.ph.i ], [ %inc133.i, %for.inc132.i.for.body123.i_crit_edge ]
  %arrayidx125.i = getelementptr %struct.impedance_mapping_table, ptr %69, i32 %i.28.i
  %70 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx125.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call95.i, i32 %71)
  %cmp126.not.i = icmp ult i32 %call95.i, %71
  br i1 %cmp126.not.i, label %for.body123.i.for.inc132.i_crit_edge, label %land.lhs.true.i

for.body123.i.for.inc132.i_crit_edge:             ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc132.i

land.lhs.true.i:                                  ; preds = %for.body123.i
  %imp_max.i = getelementptr %struct.impedance_mapping_table, ptr %69, i32 %i.28.i, i32 1
  %72 = ptrtoint ptr %imp_max.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %imp_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call95.i, i32 %73)
  %cmp129.not.i = icmp ugt i32 %call95.i, %73
  br i1 %cmp129.not.i, label %land.lhs.true.i.for.inc132.i_crit_edge, label %land.lhs.true.i.for.end134.i_crit_edge

land.lhs.true.i.for.end134.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end134.i

land.lhs.true.i.for.inc132.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc132.i

for.inc132.i:                                     ; preds = %land.lhs.true.i.for.inc132.i_crit_edge, %for.body123.i.for.inc132.i_crit_edge
  %inc133.i = add nuw i32 %i.28.i, 1
  %exitcond13.not.i = icmp eq i32 %inc133.i, %67
  br i1 %exitcond13.not.i, label %for.inc132.i.for.end134.i_crit_edge, label %for.inc132.i.for.body123.i_crit_edge

for.inc132.i.for.body123.i_crit_edge:             ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body123.i

for.inc132.i.for.end134.i_crit_edge:              ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end134.i

for.end134.i:                                     ; preds = %for.inc132.i.for.end134.i_crit_edge, %land.lhs.true.i.for.end134.i_crit_edge, %for.end94.i.for.end134.i_crit_edge
  %i.2.lcssa.i = phi i32 [ 0, %for.end94.i.for.end134.i_crit_edge ], [ %67, %for.inc132.i.for.end134.i_crit_edge ], [ %i.28.i, %land.lhs.true.i.for.end134.i_crit_edge ]
  %74 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %imp_table4.i, align 4
  %vol137.i = getelementptr %struct.impedance_mapping_table, ptr %75, i32 %i.2.lcssa.i, i32 2
  %76 = ptrtoint ptr %vol137.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vol137.i, align 4
  %call138.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 360, i32 noundef 31, i32 noundef %77) #7
  %78 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %imp_table4.i, align 4
  %vol141.i = getelementptr %struct.impedance_mapping_table, ptr %79, i32 %i.2.lcssa.i, i32 2
  %80 = ptrtoint ptr %vol141.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vol141.i, align 4
  %call142.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 361, i32 noundef 31, i32 noundef %81) #7
  %82 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %jack_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp144.i = icmp eq i32 %83, 3
  %84 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %imp_table4.i, align 4
  br i1 %cmp144.i, label %if.then145.i, label %if.else166.i

if.then145.i:                                     ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  %dc_offset_l_manual_mic148.i = getelementptr %struct.impedance_mapping_table, ptr %85, i32 %i.2.lcssa.i, i32 5
  %86 = ptrtoint ptr %dc_offset_l_manual_mic148.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dc_offset_l_manual_mic148.i, align 4
  %shr149.i = lshr i32 %87, 16
  %call150.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 385, i32 noundef %shr149.i) #7
  %88 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_l_manual_mic153.i = getelementptr %struct.impedance_mapping_table, ptr %89, i32 %i.2.lcssa.i, i32 5
  %90 = ptrtoint ptr %dc_offset_l_manual_mic153.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dc_offset_l_manual_mic153.i, align 4
  %and154.i = and i32 %91, 65535
  %call155.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 386, i32 noundef %and154.i) #7
  %92 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual_mic158.i = getelementptr %struct.impedance_mapping_table, ptr %93, i32 %i.2.lcssa.i, i32 6
  %94 = ptrtoint ptr %dc_offset_r_manual_mic158.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dc_offset_r_manual_mic158.i, align 4
  %shr159.i = lshr i32 %95, 16
  %call160.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 388, i32 noundef %shr159.i) #7
  %96 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual_mic163.i = getelementptr %struct.impedance_mapping_table, ptr %97, i32 %i.2.lcssa.i, i32 6
  br label %rt5663_impedance_sensing.exit

if.else166.i:                                     ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  %dc_offset_l_manual169.i = getelementptr %struct.impedance_mapping_table, ptr %85, i32 %i.2.lcssa.i, i32 3
  %98 = ptrtoint ptr %dc_offset_l_manual169.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dc_offset_l_manual169.i, align 4
  %shr170.i = lshr i32 %99, 16
  %call171.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 385, i32 noundef %shr170.i) #7
  %100 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_l_manual174.i = getelementptr %struct.impedance_mapping_table, ptr %101, i32 %i.2.lcssa.i, i32 3
  %102 = ptrtoint ptr %dc_offset_l_manual174.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dc_offset_l_manual174.i, align 4
  %and175.i = and i32 %103, 65535
  %call176.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 386, i32 noundef %and175.i) #7
  %104 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual179.i = getelementptr %struct.impedance_mapping_table, ptr %105, i32 %i.2.lcssa.i, i32 4
  %106 = ptrtoint ptr %dc_offset_r_manual179.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dc_offset_r_manual179.i, align 4
  %shr180.i = lshr i32 %107, 16
  %call181.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 388, i32 noundef %shr180.i) #7
  %108 = ptrtoint ptr %imp_table4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %imp_table4.i, align 4
  %dc_offset_r_manual184.i = getelementptr %struct.impedance_mapping_table, ptr %109, i32 %i.2.lcssa.i, i32 4
  br label %rt5663_impedance_sensing.exit

rt5663_impedance_sensing.exit:                    ; preds = %if.else166.i, %if.then145.i
  %dc_offset_r_manual184.sink.i = phi ptr [ %dc_offset_r_manual184.i, %if.else166.i ], [ %dc_offset_r_manual_mic163.i, %if.then145.i ]
  %110 = ptrtoint ptr %dc_offset_r_manual184.sink.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dc_offset_r_manual184.sink.i, align 4
  %and185.i = and i32 %111, 65535
  %call186.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 389, i32 noundef %and185.i) #7
  br label %sw.epilog

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %rt5663_impedance_sensing.exit, %sw.bb6.sw.epilog_crit_edge, %sw.bb
  %report.0 = phi i32 [ 0, %do.end ], [ %call8, %rt5663_impedance_sensing.exit ], [ %call8, %sw.bb6.sw.epilog_crit_edge ], [ %call5, %sw.bb ]
  tail call void @msleep(i32 noundef 30) #7
  br label %do.body55

if.else:                                          ; preds = %if.then2
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %115, i32 noundef 223) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_button_detect.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jack_detect_work, %if.then.i99)) #7
          to label %rt5663_button_detect.exit [label %if.then.i99], !srcloc !514

if.then.i99:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_button_detect.__UNIQUE_ID_ddebug303, ptr noundef %117, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef %call.i) #7
  br label %rt5663_button_detect.exit

rt5663_button_detect.exit:                        ; preds = %if.then.i99, %if.else
  %call4.i = tail call i32 @snd_soc_component_write(ptr noundef %115, i32 noundef 223, i32 noundef %call.i) #7
  %118 = trunc i32 %call.i to i16
  %trunc = and i16 %118, -16
  %119 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.229)
  switch i16 %trunc, label %sw.default23 [
    i16 -32768, label %rt5663_button_detect.exit.if.else34_crit_edge
    i16 16384, label %rt5663_button_detect.exit.if.else34_crit_edge109
    i16 8192, label %rt5663_button_detect.exit.if.else34_crit_edge110
    i16 4096, label %rt5663_button_detect.exit.sw.bb17_crit_edge
    i16 2048, label %rt5663_button_detect.exit.sw.bb17_crit_edge111
    i16 1024, label %rt5663_button_detect.exit.sw.bb17_crit_edge112
    i16 512, label %rt5663_button_detect.exit.sw.bb19_crit_edge
    i16 256, label %rt5663_button_detect.exit.sw.bb19_crit_edge113
    i16 128, label %rt5663_button_detect.exit.sw.bb19_crit_edge114
    i16 64, label %rt5663_button_detect.exit.sw.bb21_crit_edge
    i16 32, label %rt5663_button_detect.exit.sw.bb21_crit_edge115
    i16 16, label %rt5663_button_detect.exit.sw.bb21_crit_edge116
    i16 0, label %rt5663_button_detect.exit.if.then31_crit_edge
  ]

rt5663_button_detect.exit.if.then31_crit_edge:    ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

rt5663_button_detect.exit.sw.bb21_crit_edge116:   ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

rt5663_button_detect.exit.sw.bb21_crit_edge115:   ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

rt5663_button_detect.exit.sw.bb21_crit_edge:      ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

rt5663_button_detect.exit.sw.bb19_crit_edge114:   ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

rt5663_button_detect.exit.sw.bb19_crit_edge113:   ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

rt5663_button_detect.exit.sw.bb19_crit_edge:      ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

rt5663_button_detect.exit.sw.bb17_crit_edge112:   ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

rt5663_button_detect.exit.sw.bb17_crit_edge111:   ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

rt5663_button_detect.exit.sw.bb17_crit_edge:      ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

rt5663_button_detect.exit.if.else34_crit_edge110: ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else34

rt5663_button_detect.exit.if.else34_crit_edge109: ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else34

rt5663_button_detect.exit.if.else34_crit_edge:    ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else34

sw.bb17:                                          ; preds = %rt5663_button_detect.exit.sw.bb17_crit_edge, %rt5663_button_detect.exit.sw.bb17_crit_edge111, %rt5663_button_detect.exit.sw.bb17_crit_edge112
  br label %if.else34

sw.bb19:                                          ; preds = %rt5663_button_detect.exit.sw.bb19_crit_edge, %rt5663_button_detect.exit.sw.bb19_crit_edge113, %rt5663_button_detect.exit.sw.bb19_crit_edge114
  br label %if.else34

sw.bb21:                                          ; preds = %rt5663_button_detect.exit.sw.bb21_crit_edge, %rt5663_button_detect.exit.sw.bb21_crit_edge115, %rt5663_button_detect.exit.sw.bb21_crit_edge116
  br label %if.else34

sw.default23:                                     ; preds = %rt5663_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr, align 4
  %dev28 = getelementptr inbounds %struct.snd_soc_component, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.65, i32 noundef 0) #10
  br label %if.then31

if.then31:                                        ; preds = %sw.default23, %rt5663_button_detect.exit.if.then31_crit_edge
  %124 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %jack_type, align 4
  %jd_unplug_work = getelementptr i8, ptr %work, i32 100
  %call33 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jd_unplug_work) #7
  br label %do.body55

if.else34:                                        ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %rt5663_button_detect.exit.if.else34_crit_edge, %rt5663_button_detect.exit.if.else34_crit_edge109, %rt5663_button_detect.exit.if.else34_crit_edge110
  %report.1.ph = phi i32 [ 8195, %sw.bb17 ], [ 4099, %sw.bb19 ], [ 2051, %sw.bb21 ], [ 16387, %rt5663_button_detect.exit.if.else34_crit_edge ], [ 16387, %rt5663_button_detect.exit.if.else34_crit_edge109 ], [ 16387, %rt5663_button_detect.exit.if.else34_crit_edge110 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %126 = load ptr, ptr @system_wq, align 4
  %jd_unplug_work35 = getelementptr i8, ptr %work, i32 100
  %call.i102 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %126, ptr noundef %jd_unplug_work35, i32 noundef 50) #7
  br label %do.body55

if.else40:                                        ; preds = %rt5663_check_jd_status.exit.if.else40_crit_edge, %rt5663_check_jd_status.exit.thread, %sw.bb8.i.if.else40_crit_edge
  %codec_ver41 = getelementptr i8, ptr %work, i32 280
  %127 = ptrtoint ptr %codec_ver41 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %codec_ver41, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %128, label %do.end51 [
    i32 0, label %sw.bb42
    i32 1, label %sw.bb45
  ]

sw.bb42:                                          ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr, align 4
  %call44 = tail call fastcc i32 @rt5663_v2_jack_detect(ptr noundef %131, i32 noundef 0)
  br label %do.body55

sw.bb45:                                          ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr, align 4
  %call47 = tail call fastcc i32 @rt5663_jack_detect(ptr noundef %133, i32 noundef 0)
  br label %do.body55

do.end51:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str) #10
  br label %do.body55

do.body55:                                        ; preds = %do.end51, %sw.bb45, %sw.bb42, %if.else34, %if.then31, %sw.epilog
  %report.2 = phi i32 [ %report.0, %sw.epilog ], [ %125, %if.then31 ], [ %report.1.ph, %if.else34 ], [ 0, %do.end51 ], [ %call47, %sw.bb45 ], [ %call44, %sw.bb42 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_jack_detect_work.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jack_detect_work, %if.then61)) #7
          to label %do.end65 [label %if.then61], !srcloc !514

if.then61:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_jack_detect_work.__UNIQUE_ID_ddebug306, ptr noundef %137, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.63, i32 noundef %report.2) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body55
  %hs_jack = getelementptr i8, ptr %work, i32 200
  %138 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hs_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %139, i32 noundef %report.2, i32 noundef 30723) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5663_jd_unplug_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -132
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @snd_soc_component_read(ptr noundef nonnull %1, i32 noundef 190) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_check_jd_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jd_unplug_work, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !514

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_check_jd_status.__UNIQUE_ID_ddebug305, ptr noundef %7, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef %call1.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %codec_ver.i = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %codec_ver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_ver.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %9, label %rt5663_check_jd_status.exit.thread [
    i32 0, label %rt5663_check_jd_status.exit
    i32 1, label %sw.bb8.i
  ]

sw.bb8.i:                                         ; preds = %do.end.i
  %and9.i = and i32 %call1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %sw.bb8.i.if.else_crit_edge, label %sw.bb8.i.if.then2_crit_edge

sw.bb8.i.if.then2_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

sw.bb8.i.if.else_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

rt5663_check_jd_status.exit.thread:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str) #10
  br label %if.then2

rt5663_check_jd_status.exit:                      ; preds = %do.end.i
  %and.i = and i32 %call1.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %rt5663_check_jd_status.exit.if.else_crit_edge, label %rt5663_check_jd_status.exit.if.then2_crit_edge

rt5663_check_jd_status.exit.if.then2_crit_edge:   ; preds = %rt5663_check_jd_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

rt5663_check_jd_status.exit.if.else_crit_edge:    ; preds = %rt5663_check_jd_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then2:                                         ; preds = %rt5663_check_jd_status.exit.if.then2_crit_edge, %rt5663_check_jd_status.exit.thread, %sw.bb8.i.if.then2_crit_edge
  %codec_ver = getelementptr i8, ptr %work, i32 180
  %13 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %codec_ver, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %14, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call4 = tail call fastcc i32 @rt5663_v2_jack_detect(ptr noundef %17, i32 noundef 0)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call7 = tail call fastcc i32 @rt5663_jack_detect(ptr noundef %19, i32 noundef 0)
  br label %sw.epilog

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb
  %hs_jack = getelementptr i8, ptr %work, i32 100
  %22 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hs_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %23, i32 noundef 0, i32 noundef 30723) #7
  br label %cleanup

if.else:                                          ; preds = %rt5663_check_jd_status.exit.if.else_crit_edge, %sw.bb8.i.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work, i32 noundef 50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_irq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !514

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.rt5663_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call3 = tail call ptr @regmap_get_device(ptr noundef %1) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_irq.__UNIQUE_ID_ddebug304, ptr noundef %call3, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5663_priv, ptr %data, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %jack_detect_work, i32 noundef 25) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5663_v2_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 7, label %entry.return_crit_edge5
    i32 11, label %entry.return_crit_edge6
    i32 12, label %entry.return_crit_edge7
    i32 13, label %entry.return_crit_edge8
    i32 15, label %entry.return_crit_edge9
    i32 17, label %entry.return_crit_edge10
    i32 18, label %entry.return_crit_edge11
    i32 19, label %entry.return_crit_edge12
    i32 20, label %entry.return_crit_edge13
    i32 23, label %entry.return_crit_edge14
    i32 26, label %entry.return_crit_edge15
    i32 27, label %entry.return_crit_edge16
    i32 29, label %entry.return_crit_edge17
    i32 30, label %entry.return_crit_edge18
    i32 32, label %entry.return_crit_edge19
    i32 33, label %entry.return_crit_edge20
    i32 36, label %entry.return_crit_edge21
    i32 39, label %entry.return_crit_edge22
    i32 40, label %entry.return_crit_edge23
    i32 43, label %entry.return_crit_edge24
    i32 46, label %entry.return_crit_edge25
    i32 47, label %entry.return_crit_edge26
    i32 48, label %entry.return_crit_edge27
    i32 49, label %entry.return_crit_edge28
    i32 50, label %entry.return_crit_edge29
    i32 51, label %entry.return_crit_edge30
    i32 52, label %entry.return_crit_edge31
    i32 53, label %entry.return_crit_edge32
    i32 58, label %entry.return_crit_edge33
    i32 59, label %entry.return_crit_edge34
    i32 60, label %entry.return_crit_edge35
    i32 61, label %entry.return_crit_edge36
    i32 62, label %entry.return_crit_edge37
    i32 63, label %entry.return_crit_edge38
    i32 65, label %entry.return_crit_edge39
    i32 66, label %entry.return_crit_edge40
    i32 67, label %entry.return_crit_edge41
    i32 68, label %entry.return_crit_edge42
    i32 73, label %entry.return_crit_edge43
    i32 74, label %entry.return_crit_edge44
    i32 75, label %entry.return_crit_edge45
    i32 77, label %entry.return_crit_edge46
    i32 78, label %entry.return_crit_edge47
    i32 79, label %entry.return_crit_edge48
    i32 80, label %entry.return_crit_edge49
    i32 82, label %entry.return_crit_edge50
    i32 103, label %entry.return_crit_edge51
    i32 109, label %entry.return_crit_edge52
    i32 113, label %entry.return_crit_edge53
    i32 114, label %entry.return_crit_edge54
    i32 124, label %entry.return_crit_edge55
    i32 125, label %entry.return_crit_edge56
    i32 126, label %entry.return_crit_edge57
    i32 127, label %entry.return_crit_edge58
    i32 133, label %entry.return_crit_edge59
    i32 136, label %entry.return_crit_edge60
    i32 137, label %entry.return_crit_edge61
    i32 153, label %entry.return_crit_edge62
    i32 160, label %entry.return_crit_edge63
    i32 161, label %entry.return_crit_edge64
    i32 162, label %entry.return_crit_edge65
    i32 163, label %entry.return_crit_edge66
    i32 164, label %entry.return_crit_edge67
    i32 185, label %entry.return_crit_edge68
    i32 194, label %entry.return_crit_edge69
    i32 195, label %entry.return_crit_edge70
    i32 196, label %entry.return_crit_edge71
    i32 208, label %entry.return_crit_edge72
    i32 209, label %entry.return_crit_edge73
    i32 210, label %entry.return_crit_edge74
    i32 211, label %entry.return_crit_edge75
    i32 212, label %entry.return_crit_edge76
    i32 218, label %entry.return_crit_edge77
    i32 238, label %entry.return_crit_edge78
    i32 239, label %entry.return_crit_edge79
    i32 240, label %entry.return_crit_edge80
    i32 241, label %entry.return_crit_edge81
    i32 242, label %entry.return_crit_edge82
    i32 247, label %entry.return_crit_edge83
    i32 251, label %entry.return_crit_edge84
    i32 252, label %entry.return_crit_edge85
    i32 253, label %entry.return_crit_edge86
    i32 254, label %entry.return_crit_edge87
    i32 255, label %entry.return_crit_edge88
    i32 257, label %entry.return_crit_edge89
    i32 307, label %entry.return_crit_edge90
    i32 310, label %entry.return_crit_edge91
    i32 312, label %entry.return_crit_edge92
    i32 319, label %entry.return_crit_edge93
    i32 327, label %entry.return_crit_edge94
    i32 328, label %entry.return_crit_edge95
    i32 360, label %entry.return_crit_edge96
    i32 368, label %entry.return_crit_edge97
    i32 369, label %entry.return_crit_edge98
    i32 370, label %entry.return_crit_edge99
    i32 371, label %entry.return_crit_edge100
    i32 372, label %entry.return_crit_edge101
    i32 373, label %entry.return_crit_edge102
    i32 400, label %entry.return_crit_edge103
    i32 401, label %entry.return_crit_edge104
    i32 402, label %entry.return_crit_edge105
    i32 403, label %entry.return_crit_edge106
    i32 404, label %entry.return_crit_edge107
    i32 405, label %entry.return_crit_edge108
    i32 406, label %entry.return_crit_edge109
    i32 407, label %entry.return_crit_edge110
    i32 408, label %entry.return_crit_edge111
    i32 409, label %entry.return_crit_edge112
    i32 416, label %entry.return_crit_edge113
    i32 417, label %entry.return_crit_edge114
    i32 418, label %entry.return_crit_edge115
    i32 419, label %entry.return_crit_edge116
    i32 420, label %entry.return_crit_edge117
    i32 421, label %entry.return_crit_edge118
    i32 422, label %entry.return_crit_edge119
    i32 423, label %entry.return_crit_edge120
    i32 424, label %entry.return_crit_edge121
    i32 425, label %entry.return_crit_edge122
    i32 426, label %entry.return_crit_edge123
    i32 427, label %entry.return_crit_edge124
    i32 441, label %entry.return_crit_edge125
    i32 442, label %entry.return_crit_edge126
    i32 443, label %entry.return_crit_edge127
    i32 444, label %entry.return_crit_edge128
    i32 445, label %entry.return_crit_edge129
    i32 446, label %entry.return_crit_edge130
    i32 447, label %entry.return_crit_edge131
    i32 476, label %entry.return_crit_edge132
    i32 499, label %entry.return_crit_edge133
    i32 500, label %entry.return_crit_edge134
    i32 515, label %entry.return_crit_edge135
    i32 516, label %entry.return_crit_edge136
    i32 517, label %entry.return_crit_edge137
    i32 518, label %entry.return_crit_edge138
    i32 519, label %entry.return_crit_edge139
    i32 520, label %entry.return_crit_edge140
    i32 528, label %entry.return_crit_edge141
    i32 529, label %entry.return_crit_edge142
    i32 530, label %entry.return_crit_edge143
    i32 531, label %entry.return_crit_edge144
    i32 532, label %entry.return_crit_edge145
    i32 533, label %entry.return_crit_edge146
    i32 534, label %entry.return_crit_edge147
    i32 535, label %entry.return_crit_edge148
    i32 536, label %entry.return_crit_edge149
    i32 537, label %entry.return_crit_edge150
    i32 538, label %entry.return_crit_edge151
    i32 539, label %entry.return_crit_edge152
    i32 767, label %entry.return_crit_edge153
    i32 769, label %entry.return_crit_edge154
    i32 770, label %entry.return_crit_edge155
    i32 771, label %entry.return_crit_edge156
    i32 772, label %entry.return_crit_edge157
    i32 773, label %entry.return_crit_edge158
    i32 774, label %entry.return_crit_edge159
    i32 775, label %entry.return_crit_edge160
    i32 784, label %entry.return_crit_edge161
    i32 785, label %entry.return_crit_edge162
    i32 786, label %entry.return_crit_edge163
    i32 787, label %entry.return_crit_edge164
    i32 788, label %entry.return_crit_edge165
    i32 789, label %entry.return_crit_edge166
    i32 790, label %entry.return_crit_edge167
    i32 791, label %entry.return_crit_edge168
    i32 816, label %entry.return_crit_edge169
    i32 817, label %entry.return_crit_edge170
    i32 818, label %entry.return_crit_edge171
    i32 819, label %entry.return_crit_edge172
    i32 820, label %entry.return_crit_edge173
    i32 821, label %entry.return_crit_edge174
    i32 822, label %entry.return_crit_edge175
    i32 823, label %entry.return_crit_edge176
    i32 824, label %entry.return_crit_edge177
    i32 825, label %entry.return_crit_edge178
    i32 826, label %entry.return_crit_edge179
    i32 960, label %entry.return_crit_edge180
    i32 961, label %entry.return_crit_edge181
    i32 962, label %entry.return_crit_edge182
    i32 963, label %entry.return_crit_edge183
    i32 964, label %entry.return_crit_edge184
    i32 965, label %entry.return_crit_edge185
    i32 966, label %entry.return_crit_edge186
    i32 967, label %entry.return_crit_edge187
    i32 968, label %entry.return_crit_edge188
    i32 969, label %entry.return_crit_edge189
    i32 970, label %entry.return_crit_edge190
    i32 971, label %entry.return_crit_edge191
    i32 972, label %entry.return_crit_edge192
    i32 1022, label %entry.return_crit_edge193
    i32 1023, label %entry.return_crit_edge194
    i32 2032, label %entry.return_crit_edge195
    i32 2042, label %entry.return_crit_edge196
    i32 119, label %entry.sw.bb1_crit_edge
    i32 144, label %entry.sw.bb1_crit_edge197
    i32 151, label %entry.sw.bb1_crit_edge198
    i32 191, label %entry.sw.bb1_crit_edge199
    i32 197, label %entry.sw.bb1_crit_edge200
    i32 203, label %entry.sw.bb1_crit_edge201
    i32 204, label %entry.sw.bb1_crit_edge202
    i32 205, label %entry.sw.bb1_crit_edge203
    i32 228, label %entry.sw.bb1_crit_edge204
    i32 229, label %entry.sw.bb1_crit_edge205
    i32 230, label %entry.sw.bb1_crit_edge206
    i32 231, label %entry.sw.bb1_crit_edge207
    i32 232, label %entry.sw.bb1_crit_edge208
    i32 233, label %entry.sw.bb1_crit_edge209
    i32 244, label %entry.sw.bb1_crit_edge210
    i32 264, label %entry.sw.bb1_crit_edge211
    i32 265, label %entry.sw.bb1_crit_edge212
    i32 276, label %entry.sw.bb1_crit_edge213
    i32 278, label %entry.sw.bb1_crit_edge214
    i32 280, label %entry.sw.bb1_crit_edge215
    i32 294, label %entry.sw.bb1_crit_edge216
    i32 295, label %entry.sw.bb1_crit_edge217
    i32 296, label %entry.sw.bb1_crit_edge218
    i32 317, label %entry.sw.bb1_crit_edge219
    i32 318, label %entry.sw.bb1_crit_edge220
    i32 320, label %entry.sw.bb1_crit_edge221
    i32 321, label %entry.sw.bb1_crit_edge222
    i32 324, label %entry.sw.bb1_crit_edge223
    i32 361, label %entry.sw.bb1_crit_edge224
    i32 384, label %entry.sw.bb1_crit_edge225
    i32 385, label %entry.sw.bb1_crit_edge226
    i32 386, label %entry.sw.bb1_crit_edge227
    i32 387, label %entry.sw.bb1_crit_edge228
    i32 388, label %entry.sw.bb1_crit_edge229
    i32 389, label %entry.sw.bb1_crit_edge230
    i32 432, label %entry.sw.bb1_crit_edge231
    i32 433, label %entry.sw.bb1_crit_edge232
    i32 434, label %entry.sw.bb1_crit_edge233
    i32 435, label %entry.sw.bb1_crit_edge234
    i32 436, label %entry.sw.bb1_crit_edge235
    i32 471, label %entry.sw.bb1_crit_edge236
    i32 472, label %entry.sw.bb1_crit_edge237
    i32 473, label %entry.sw.bb1_crit_edge238
    i32 477, label %entry.sw.bb1_crit_edge239
    i32 592, label %entry.sw.bb1_crit_edge240
    i32 593, label %entry.sw.bb1_crit_edge241
    i32 594, label %entry.sw.bb1_crit_edge242
  ]

entry.sw.bb1_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge197, %entry.sw.bb1_crit_edge198, %entry.sw.bb1_crit_edge199, %entry.sw.bb1_crit_edge200, %entry.sw.bb1_crit_edge201, %entry.sw.bb1_crit_edge202, %entry.sw.bb1_crit_edge203, %entry.sw.bb1_crit_edge204, %entry.sw.bb1_crit_edge205, %entry.sw.bb1_crit_edge206, %entry.sw.bb1_crit_edge207, %entry.sw.bb1_crit_edge208, %entry.sw.bb1_crit_edge209, %entry.sw.bb1_crit_edge210, %entry.sw.bb1_crit_edge211, %entry.sw.bb1_crit_edge212, %entry.sw.bb1_crit_edge213, %entry.sw.bb1_crit_edge214, %entry.sw.bb1_crit_edge215, %entry.sw.bb1_crit_edge216, %entry.sw.bb1_crit_edge217, %entry.sw.bb1_crit_edge218, %entry.sw.bb1_crit_edge219, %entry.sw.bb1_crit_edge220, %entry.sw.bb1_crit_edge221, %entry.sw.bb1_crit_edge222, %entry.sw.bb1_crit_edge223, %entry.sw.bb1_crit_edge224, %entry.sw.bb1_crit_edge225, %entry.sw.bb1_crit_edge226, %entry.sw.bb1_crit_edge227, %entry.sw.bb1_crit_edge228, %entry.sw.bb1_crit_edge229, %entry.sw.bb1_crit_edge230, %entry.sw.bb1_crit_edge231, %entry.sw.bb1_crit_edge232, %entry.sw.bb1_crit_edge233, %entry.sw.bb1_crit_edge234, %entry.sw.bb1_crit_edge235, %entry.sw.bb1_crit_edge236, %entry.sw.bb1_crit_edge237, %entry.sw.bb1_crit_edge238, %entry.sw.bb1_crit_edge239, %entry.sw.bb1_crit_edge240, %entry.sw.bb1_crit_edge241, %entry.sw.bb1_crit_edge242
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @rt5663_readable_register(ptr noundef %dev, i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196
  %retval.0 = phi i1 [ %call, %sw.default ], [ false, %sw.bb1 ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5663_v2_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 17, label %entry.return_crit_edge1
    i32 49, label %entry.return_crit_edge2
    i32 50, label %entry.return_crit_edge3
    i32 53, label %entry.return_crit_edge4
    i32 73, label %entry.return_crit_edge5
    i32 130, label %entry.return_crit_edge6
    i32 147, label %entry.return_crit_edge7
    i32 174, label %entry.return_crit_edge8
    i32 190, label %entry.return_crit_edge9
    i32 196, label %entry.return_crit_edge10
    i32 219, label %entry.return_crit_edge11
    i32 223, label %entry.return_crit_edge12
    i32 240, label %entry.return_crit_edge13
    i32 248, label %entry.return_crit_edge14
    i32 253, label %entry.return_crit_edge15
    i32 254, label %entry.return_crit_edge16
    i32 255, label %entry.return_crit_edge17
    i32 352, label %entry.return_crit_edge18
    i32 356, label %entry.return_crit_edge19
    i32 357, label %entry.return_crit_edge20
    i32 358, label %entry.return_crit_edge21
    i32 373, label %entry.return_crit_edge22
    i32 400, label %entry.return_crit_edge23
    i32 401, label %entry.return_crit_edge24
    i32 402, label %entry.return_crit_edge25
    i32 403, label %entry.return_crit_edge26
    i32 423, label %entry.return_crit_edge27
    i32 424, label %entry.return_crit_edge28
    i32 425, label %entry.return_crit_edge29
    i32 426, label %entry.return_crit_edge30
    i32 449, label %entry.return_crit_edge31
    i32 450, label %entry.return_crit_edge32
    i32 451, label %entry.return_crit_edge33
    i32 457, label %entry.return_crit_edge34
    i32 477, label %entry.return_crit_edge35
    i32 487, label %entry.return_crit_edge36
    i32 490, label %entry.return_crit_edge37
    i32 493, label %entry.return_crit_edge38
    i32 494, label %entry.return_crit_edge39
    i32 495, label %entry.return_crit_edge40
    i32 496, label %entry.return_crit_edge41
    i32 497, label %entry.return_crit_edge42
    i32 498, label %entry.return_crit_edge43
    i32 499, label %entry.return_crit_edge44
    i32 500, label %entry.return_crit_edge45
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5663_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 5, label %entry.return_crit_edge2
    i32 6, label %entry.return_crit_edge3
    i32 10, label %entry.return_crit_edge4
    i32 16, label %entry.return_crit_edge5
    i32 21, label %entry.return_crit_edge6
    i32 22, label %entry.return_crit_edge7
    i32 24, label %entry.return_crit_edge8
    i32 25, label %entry.return_crit_edge9
    i32 28, label %entry.return_crit_edge10
    i32 31, label %entry.return_crit_edge11
    i32 34, label %entry.return_crit_edge12
    i32 35, label %entry.return_crit_edge13
    i32 38, label %entry.return_crit_edge14
    i32 41, label %entry.return_crit_edge15
    i32 42, label %entry.return_crit_edge16
    i32 44, label %entry.return_crit_edge17
    i32 45, label %entry.return_crit_edge18
    i32 64, label %entry.return_crit_edge19
    i32 97, label %entry.return_crit_edge20
    i32 98, label %entry.return_crit_edge21
    i32 99, label %entry.return_crit_edge22
    i32 100, label %entry.return_crit_edge23
    i32 101, label %entry.return_crit_edge24
    i32 102, label %entry.return_crit_edge25
    i32 107, label %entry.return_crit_edge26
    i32 110, label %entry.return_crit_edge27
    i32 111, label %entry.return_crit_edge28
    i32 112, label %entry.return_crit_edge29
    i32 115, label %entry.return_crit_edge30
    i32 116, label %entry.return_crit_edge31
    i32 117, label %entry.return_crit_edge32
    i32 118, label %entry.return_crit_edge33
    i32 119, label %entry.return_crit_edge34
    i32 120, label %entry.return_crit_edge35
    i32 121, label %entry.return_crit_edge36
    i32 122, label %entry.return_crit_edge37
    i32 123, label %entry.return_crit_edge38
    i32 128, label %entry.return_crit_edge39
    i32 129, label %entry.return_crit_edge40
    i32 130, label %entry.return_crit_edge41
    i32 131, label %entry.return_crit_edge42
    i32 132, label %entry.return_crit_edge43
    i32 134, label %entry.return_crit_edge44
    i32 135, label %entry.return_crit_edge45
    i32 138, label %entry.return_crit_edge46
    i32 139, label %entry.return_crit_edge47
    i32 140, label %entry.return_crit_edge48
    i32 142, label %entry.return_crit_edge49
    i32 143, label %entry.return_crit_edge50
    i32 144, label %entry.return_crit_edge51
    i32 145, label %entry.return_crit_edge52
    i32 146, label %entry.return_crit_edge53
    i32 147, label %entry.return_crit_edge54
    i32 148, label %entry.return_crit_edge55
    i32 151, label %entry.return_crit_edge56
    i32 152, label %entry.return_crit_edge57
    i32 154, label %entry.return_crit_edge58
    i32 159, label %entry.return_crit_edge59
    i32 174, label %entry.return_crit_edge60
    i32 175, label %entry.return_crit_edge61
    i32 182, label %entry.return_crit_edge62
    i32 183, label %entry.return_crit_edge63
    i32 184, label %entry.return_crit_edge64
    i32 186, label %entry.return_crit_edge65
    i32 187, label %entry.return_crit_edge66
    i32 190, label %entry.return_crit_edge67
    i32 191, label %entry.return_crit_edge68
    i32 192, label %entry.return_crit_edge69
    i32 193, label %entry.return_crit_edge70
    i32 197, label %entry.return_crit_edge71
    i32 203, label %entry.return_crit_edge72
    i32 204, label %entry.return_crit_edge73
    i32 205, label %entry.return_crit_edge74
    i32 217, label %entry.return_crit_edge75
    i32 219, label %entry.return_crit_edge76
    i32 220, label %entry.return_crit_edge77
    i32 221, label %entry.return_crit_edge78
    i32 222, label %entry.return_crit_edge79
    i32 223, label %entry.return_crit_edge80
    i32 224, label %entry.return_crit_edge81
    i32 225, label %entry.return_crit_edge82
    i32 226, label %entry.return_crit_edge83
    i32 228, label %entry.return_crit_edge84
    i32 229, label %entry.return_crit_edge85
    i32 230, label %entry.return_crit_edge86
    i32 231, label %entry.return_crit_edge87
    i32 232, label %entry.return_crit_edge88
    i32 233, label %entry.return_crit_edge89
    i32 234, label %entry.return_crit_edge90
    i32 235, label %entry.return_crit_edge91
    i32 236, label %entry.return_crit_edge92
    i32 237, label %entry.return_crit_edge93
    i32 244, label %entry.return_crit_edge94
    i32 246, label %entry.return_crit_edge95
    i32 248, label %entry.return_crit_edge96
    i32 250, label %entry.return_crit_edge97
    i32 253, label %entry.return_crit_edge98
    i32 254, label %entry.return_crit_edge99
    i32 255, label %entry.return_crit_edge100
    i32 256, label %entry.return_crit_edge101
    i32 264, label %entry.return_crit_edge102
    i32 265, label %entry.return_crit_edge103
    i32 266, label %entry.return_crit_edge104
    i32 267, label %entry.return_crit_edge105
    i32 268, label %entry.return_crit_edge106
    i32 269, label %entry.return_crit_edge107
    i32 270, label %entry.return_crit_edge108
    i32 271, label %entry.return_crit_edge109
    i32 272, label %entry.return_crit_edge110
    i32 273, label %entry.return_crit_edge111
    i32 274, label %entry.return_crit_edge112
    i32 275, label %entry.return_crit_edge113
    i32 276, label %entry.return_crit_edge114
    i32 278, label %entry.return_crit_edge115
    i32 279, label %entry.return_crit_edge116
    i32 280, label %entry.return_crit_edge117
    i32 293, label %entry.return_crit_edge118
    i32 294, label %entry.return_crit_edge119
    i32 295, label %entry.return_crit_edge120
    i32 296, label %entry.return_crit_edge121
    i32 306, label %entry.return_crit_edge122
    i32 311, label %entry.return_crit_edge123
    i32 313, label %entry.return_crit_edge124
    i32 314, label %entry.return_crit_edge125
    i32 315, label %entry.return_crit_edge126
    i32 316, label %entry.return_crit_edge127
    i32 317, label %entry.return_crit_edge128
    i32 318, label %entry.return_crit_edge129
    i32 320, label %entry.return_crit_edge130
    i32 321, label %entry.return_crit_edge131
    i32 324, label %entry.return_crit_edge132
    i32 325, label %entry.return_crit_edge133
    i32 326, label %entry.return_crit_edge134
    i32 352, label %entry.return_crit_edge135
    i32 353, label %entry.return_crit_edge136
    i32 354, label %entry.return_crit_edge137
    i32 355, label %entry.return_crit_edge138
    i32 356, label %entry.return_crit_edge139
    i32 357, label %entry.return_crit_edge140
    i32 358, label %entry.return_crit_edge141
    i32 359, label %entry.return_crit_edge142
    i32 360, label %entry.return_crit_edge143
    i32 361, label %entry.return_crit_edge144
    i32 384, label %entry.return_crit_edge145
    i32 385, label %entry.return_crit_edge146
    i32 386, label %entry.return_crit_edge147
    i32 387, label %entry.return_crit_edge148
    i32 388, label %entry.return_crit_edge149
    i32 389, label %entry.return_crit_edge150
    i32 432, label %entry.return_crit_edge151
    i32 433, label %entry.return_crit_edge152
    i32 434, label %entry.return_crit_edge153
    i32 435, label %entry.return_crit_edge154
    i32 436, label %entry.return_crit_edge155
    i32 437, label %entry.return_crit_edge156
    i32 438, label %entry.return_crit_edge157
    i32 439, label %entry.return_crit_edge158
    i32 440, label %entry.return_crit_edge159
    i32 448, label %entry.return_crit_edge160
    i32 449, label %entry.return_crit_edge161
    i32 450, label %entry.return_crit_edge162
    i32 451, label %entry.return_crit_edge163
    i32 452, label %entry.return_crit_edge164
    i32 453, label %entry.return_crit_edge165
    i32 454, label %entry.return_crit_edge166
    i32 455, label %entry.return_crit_edge167
    i32 456, label %entry.return_crit_edge168
    i32 457, label %entry.return_crit_edge169
    i32 458, label %entry.return_crit_edge170
    i32 459, label %entry.return_crit_edge171
    i32 460, label %entry.return_crit_edge172
    i32 461, label %entry.return_crit_edge173
    i32 462, label %entry.return_crit_edge174
    i32 463, label %entry.return_crit_edge175
    i32 464, label %entry.return_crit_edge176
    i32 465, label %entry.return_crit_edge177
    i32 466, label %entry.return_crit_edge178
    i32 467, label %entry.return_crit_edge179
    i32 468, label %entry.return_crit_edge180
    i32 469, label %entry.return_crit_edge181
    i32 470, label %entry.return_crit_edge182
    i32 471, label %entry.return_crit_edge183
    i32 472, label %entry.return_crit_edge184
    i32 473, label %entry.return_crit_edge185
    i32 474, label %entry.return_crit_edge186
    i32 475, label %entry.return_crit_edge187
    i32 477, label %entry.return_crit_edge188
    i32 478, label %entry.return_crit_edge189
    i32 479, label %entry.return_crit_edge190
    i32 480, label %entry.return_crit_edge191
    i32 481, label %entry.return_crit_edge192
    i32 482, label %entry.return_crit_edge193
    i32 483, label %entry.return_crit_edge194
    i32 484, label %entry.return_crit_edge195
    i32 485, label %entry.return_crit_edge196
    i32 486, label %entry.return_crit_edge197
    i32 487, label %entry.return_crit_edge198
    i32 488, label %entry.return_crit_edge199
    i32 490, label %entry.return_crit_edge200
    i32 491, label %entry.return_crit_edge201
    i32 492, label %entry.return_crit_edge202
    i32 493, label %entry.return_crit_edge203
    i32 494, label %entry.return_crit_edge204
    i32 495, label %entry.return_crit_edge205
    i32 496, label %entry.return_crit_edge206
    i32 497, label %entry.return_crit_edge207
    i32 498, label %entry.return_crit_edge208
    i32 512, label %entry.return_crit_edge209
    i32 513, label %entry.return_crit_edge210
    i32 514, label %entry.return_crit_edge211
    i32 592, label %entry.return_crit_edge212
    i32 593, label %entry.return_crit_edge213
    i32 594, label %entry.return_crit_edge214
    i32 762, label %entry.return_crit_edge215
    i32 763, label %entry.return_crit_edge216
    i32 764, label %entry.return_crit_edge217
    i32 768, label %entry.return_crit_edge218
    i32 976, label %entry.return_crit_edge219
    i32 977, label %entry.return_crit_edge220
    i32 978, label %entry.return_crit_edge221
    i32 979, label %entry.return_crit_edge222
    i32 980, label %entry.return_crit_edge223
    i32 981, label %entry.return_crit_edge224
    i32 982, label %entry.return_crit_edge225
    i32 983, label %entry.return_crit_edge226
    i32 984, label %entry.return_crit_edge227
    i32 985, label %entry.return_crit_edge228
    i32 986, label %entry.return_crit_edge229
    i32 987, label %entry.return_crit_edge230
    i32 988, label %entry.return_crit_edge231
    i32 989, label %entry.return_crit_edge232
    i32 990, label %entry.return_crit_edge233
    i32 991, label %entry.return_crit_edge234
    i32 992, label %entry.return_crit_edge235
    i32 993, label %entry.return_crit_edge236
    i32 994, label %entry.return_crit_edge237
    i32 995, label %entry.return_crit_edge238
    i32 996, label %entry.return_crit_edge239
    i32 997, label %entry.return_crit_edge240
    i32 998, label %entry.return_crit_edge241
    i32 999, label %entry.return_crit_edge242
    i32 1000, label %entry.return_crit_edge243
    i32 1001, label %entry.return_crit_edge244
    i32 1002, label %entry.return_crit_edge245
    i32 1003, label %entry.return_crit_edge246
    i32 1004, label %entry.return_crit_edge247
    i32 1005, label %entry.return_crit_edge248
    i32 1006, label %entry.return_crit_edge249
    i32 1007, label %entry.return_crit_edge250
    i32 1008, label %entry.return_crit_edge251
    i32 1009, label %entry.return_crit_edge252
    i32 1010, label %entry.return_crit_edge253
    i32 1011, label %entry.return_crit_edge254
  ]

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5663_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 21, label %entry.return_crit_edge1
    i32 35, label %entry.return_crit_edge2
    i32 41, label %entry.return_crit_edge3
    i32 118, label %entry.return_crit_edge4
    i32 147, label %entry.return_crit_edge5
    i32 151, label %entry.return_crit_edge6
    i32 174, label %entry.return_crit_edge7
    i32 190, label %entry.return_crit_edge8
    i32 191, label %entry.return_crit_edge9
    i32 197, label %entry.return_crit_edge10
    i32 203, label %entry.return_crit_edge11
    i32 219, label %entry.return_crit_edge12
    i32 223, label %entry.return_crit_edge13
    i32 228, label %entry.return_crit_edge14
    i32 230, label %entry.return_crit_edge15
    i32 231, label %entry.return_crit_edge16
    i32 232, label %entry.return_crit_edge17
    i32 248, label %entry.return_crit_edge18
    i32 253, label %entry.return_crit_edge19
    i32 254, label %entry.return_crit_edge20
    i32 255, label %entry.return_crit_edge21
    i32 313, label %entry.return_crit_edge22
    i32 321, label %entry.return_crit_edge23
    i32 352, label %entry.return_crit_edge24
    i32 356, label %entry.return_crit_edge25
    i32 357, label %entry.return_crit_edge26
    i32 358, label %entry.return_crit_edge27
    i32 384, label %entry.return_crit_edge28
    i32 387, label %entry.return_crit_edge29
    i32 448, label %entry.return_crit_edge30
    i32 450, label %entry.return_crit_edge31
    i32 451, label %entry.return_crit_edge32
    i32 452, label %entry.return_crit_edge33
    i32 478, label %entry.return_crit_edge34
    i32 486, label %entry.return_crit_edge35
    i32 490, label %entry.return_crit_edge36
    i32 491, label %entry.return_crit_edge37
    i32 492, label %entry.return_crit_edge38
    i32 493, label %entry.return_crit_edge39
    i32 494, label %entry.return_crit_edge40
    i32 495, label %entry.return_crit_edge41
    i32 496, label %entry.return_crit_edge42
    i32 497, label %entry.return_crit_edge43
    i32 498, label %entry.return_crit_edge44
    i32 768, label %entry.return_crit_edge45
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5663_v2_jack_detect(ptr noundef %component, i32 noundef %jack_insert) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_v2_jack_detect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !514

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug296, ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef %jack_insert) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jack_insert)
  %tobool5.not = icmp eq i32 %jack_insert, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 17, i32 noundef 32832) #7
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 18, i32 noundef 5252) #7
  %call9 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.74) #7
  %call10 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.75) #7
  %call11 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.76) #7
  %call12 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.77) #7
  %call13 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef 256, i32 noundef 256) #7
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 8, i32 noundef 8) #7
  br label %while.body

while.body:                                       ; preds = %do.end40.while.body_crit_edge, %if.then6
  %i.0150 = phi i32 [ 0, %if.then6 ], [ %inc, %do.end40.while.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr @__const.rt5663_v2_jack_detect.sleep_time, i32 0, i32 %i.0150
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @msleep(i32 noundef %7) #7
  %call16 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 17) #7
  %and = and i32 %call16, 3
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.off)
  %switch153 = icmp ult i32 %and.off, 3
  br i1 %switch153, label %while.body.do.body41_crit_edge, label %do.body23

while.body.do.body41_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

do.body23:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_v2_jack_detect, %if.then35)) #7
          to label %do.end40 [label %if.then35], !srcloc !514

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug297, ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.72, i32 noundef %and, i32 noundef %7) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body23
  %inc = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end40.do.body41_crit_edge, label %do.end40.while.body_crit_edge

do.end40.while.body_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end40.do.body41_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

do.body41:                                        ; preds = %do.end40.do.body41_crit_edge, %while.body.do.body41_crit_edge
  %val.1 = phi i32 [ %and, %while.body.do.body41_crit_edge ], [ 0, %do.end40.do.body41_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_v2_jack_detect, %if.then53)) #7
          to label %do.end57 [label %if.then53], !srcloc !514

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug298, ptr noundef %11, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.72, i32 noundef %val.1) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.body41
  %val.1.off = add nsw i32 %val.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val.1.off)
  %switch = icmp ult i32 %val.1.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %jack_type = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %jack_type, align 4
  tail call fastcc void @rt5663_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext true)
  br label %do.body76

sw.default:                                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.74) #7
  %call59 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.75) #7
  %call60 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.76) #7
  %call61 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.77) #7
  %call62 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  %jack_type63 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %jack_type63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %jack_type63, align 4
  br label %do.body76

if.else:                                          ; preds = %do.end
  %call64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 8, i32 noundef 0) #7
  %jack_type65 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %jack_type65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jack_type65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp66 = icmp eq i32 %15, 3
  br i1 %cmp66, label %if.then67, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rt5663_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext false)
  %call68 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.74) #7
  %call69 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.75) #7
  %call70 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.76) #7
  %call71 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.77) #7
  %call72 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.else.if.end73_crit_edge
  %16 = ptrtoint ptr %jack_type65 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %jack_type65, align 4
  br label %do.body76

do.body76:                                        ; preds = %if.end73, %sw.default, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_v2_jack_detect, %if.then88)) #7
          to label %do.end93 [label %if.then88], !srcloc !514

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %jack_type90 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %19 = ptrtoint ptr %jack_type90 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jack_type90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug299, ptr noundef %18, ptr noundef nonnull @.str.80, i32 noundef %20) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %do.body76
  %jack_type94 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %jack_type94 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %jack_type94, align 4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5663_jack_detect(ptr noundef %component, i32 noundef %jack_insert) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !513
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_jack_detect.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jack_detect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !514

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_jack_detect.__UNIQUE_ID_ddebug300, ptr noundef %6, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.84, i32 noundef %jack_insert) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jack_insert)
  %tobool4.not = icmp eq i32 %jack_insert, 0
  br i1 %tobool4.not, label %if.else111, label %if.then5

if.then5:                                         ; preds = %do.end
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #7
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 145, i32 noundef 7168, i32 noundef 4096) #7
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 762, i32 noundef 1016, i32 noundef 584) #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 592, i32 noundef 3072, i32 noundef 3072) #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 220, i32 noundef 1, i32 noundef 1) #7
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 100, i32 noundef 32768, i32 noundef 32768) #7
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 230, i32 noundef 35840, i32 noundef 35840) #7
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 527, i32 noundef 516) #7
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 61440, i32 noundef 40960) #7
  tail call void @msleep(i32 noundef 20) #7
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 20480, i32 noundef 20480) #7
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 159, i32 noundef 32768, i32 noundef 32768) #7
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 182, i32 noundef 64, i32 noundef 64) #7
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 230, i32 noundef 128, i32 noundef 0) #7
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 230, i32 noundef 128, i32 noundef 128) #7
  %regmap = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call20203 = call i32 @regmap_read(ptr noundef %8, i32 noundef 191, ptr noundef nonnull %val) #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and204 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool21.not205 = icmp eq i32 %and204, 0
  br i1 %tobool21.not205, label %if.then5.if.then22_crit_edge, label %if.then5.while.end_crit_edge

if.then5.while.end_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then5.if.then22_crit_edge:                     ; preds = %if.then5
  br label %if.then22

while.cond:                                       ; preds = %if.then22
  %inc = add nuw nsw i32 %i.0206, 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_read(ptr noundef %12, i32 noundef 191, ptr noundef nonnull %val) #7
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, 128
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %while.cond.if.then22_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.if.then22_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %while.cond.if.then22_crit_edge, %if.then5.if.then22_crit_edge
  %i.0206 = phi i32 [ %inc, %while.cond.if.then22_crit_edge ], [ 0, %if.then5.if.then22_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %i.0206)
  %exitcond = icmp eq i32 %i.0206, 201
  br i1 %exitcond, label %if.then22.while.end_crit_edge, label %while.cond

if.then22.while.end_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.then22.while.end_crit_edge, %while.cond.while.end_crit_edge, %if.then5.while.end_crit_edge
  %call26 = call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 231) #7
  %and27 = and i32 %call26, 3
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and27, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_jack_detect.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jack_detect, %if.then40)) #7
          to label %do.end44 [label %if.then40], !srcloc !514

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_jack_detect.__UNIQUE_ID_ddebug301, ptr noundef %17, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.84, i32 noundef %19) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %while.end
  %call45 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 145, i32 noundef 3072, i32 noundef 3072) #7
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %.off = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %jack_type = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end44
  %22 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %jack_type, align 4
  call fastcc void @rt5663_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext true)
  %impedance_sensing_num = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %impedance_sensing_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %impedance_sensing_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool46.not = icmp eq i32 %24, 0
  br i1 %tobool46.not, label %if.end48, label %sw.bb.do.body119_crit_edge

sw.bb.do.body119_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end48:                                         ; preds = %sw.bb
  %dc_offset_l_manual_mic = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %dc_offset_l_manual_mic to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dc_offset_l_manual_mic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool50.not = icmp eq i32 %26, 0
  br i1 %tobool50.not, label %if.end48.if.end61_crit_edge, label %if.then51

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %shr = lshr i32 %26, 16
  %call55 = call i32 @regmap_write(ptr noundef %28, i32 noundef 385, i32 noundef %shr) #7
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %31 = ptrtoint ptr %dc_offset_l_manual_mic to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dc_offset_l_manual_mic, align 4
  %and59 = and i32 %32, 65535
  %call60 = call i32 @regmap_write(ptr noundef %30, i32 noundef 386, i32 noundef %and59) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %if.end48.if.end61_crit_edge
  %dc_offset_r_manual_mic = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %dc_offset_r_manual_mic to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dc_offset_r_manual_mic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool63.not = icmp eq i32 %34, 0
  br i1 %tobool63.not, label %if.end61.do.body119_crit_edge, label %if.then64

if.end61.do.body119_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %shr68 = lshr i32 %34, 16
  %call69 = call i32 @regmap_write(ptr noundef %36, i32 noundef 388, i32 noundef %shr68) #7
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %dc_offset_r_manual_mic to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dc_offset_r_manual_mic, align 4
  %and73 = and i32 %40, 65535
  %call74 = call i32 @regmap_write(ptr noundef %38, i32 noundef 389, i32 noundef %and73) #7
  br label %do.body119

sw.default:                                       ; preds = %do.end44
  %41 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %jack_type, align 4
  %call77 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 41472, i32 noundef 0) #7
  %pdata78 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 1
  %impedance_sensing_num79 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %impedance_sensing_num79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %impedance_sensing_num79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool80.not = icmp eq i32 %43, 0
  br i1 %tobool80.not, label %if.end82, label %sw.default.do.body119_crit_edge

sw.default.do.body119_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.end82:                                         ; preds = %sw.default
  %44 = ptrtoint ptr %pdata78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pdata78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool84.not = icmp eq i32 %45, 0
  br i1 %tobool84.not, label %if.end82.if.end96_crit_edge, label %if.then85

if.end82.if.end96_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %shr89 = lshr i32 %45, 16
  %call90 = call i32 @regmap_write(ptr noundef %47, i32 noundef 385, i32 noundef %shr89) #7
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %50 = ptrtoint ptr %pdata78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pdata78, align 4
  %and94 = and i32 %51, 65535
  %call95 = call i32 @regmap_write(ptr noundef %49, i32 noundef 386, i32 noundef %and94) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then85, %if.end82.if.end96_crit_edge
  %dc_offset_r_manual = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %dc_offset_r_manual to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dc_offset_r_manual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool98.not = icmp eq i32 %53, 0
  br i1 %tobool98.not, label %if.end96.do.body119_crit_edge, label %if.then99

if.end96.do.body119_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %shr103 = lshr i32 %53, 16
  %call104 = call i32 @regmap_write(ptr noundef %55, i32 noundef 388, i32 noundef %shr103) #7
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %58 = ptrtoint ptr %dc_offset_r_manual to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dc_offset_r_manual, align 4
  %and108 = and i32 %59, 65535
  %call109 = call i32 @regmap_write(ptr noundef %57, i32 noundef 389, i32 noundef %and108) #7
  br label %do.body119

if.else111:                                       ; preds = %do.end
  %jack_type112 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %60 = ptrtoint ptr %jack_type112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %jack_type112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp113 = icmp eq i32 %61, 3
  br i1 %cmp113, label %if.then114, label %if.else111.if.end115_crit_edge

if.else111.if.end115_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rt5663_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext false)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.else111.if.end115_crit_edge
  %62 = ptrtoint ptr %jack_type112 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %jack_type112, align 4
  %call117 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 41472, i32 noundef 0) #7
  br label %do.body119

do.body119:                                       ; preds = %if.end115, %if.then99, %if.end96.do.body119_crit_edge, %sw.default.do.body119_crit_edge, %if.then64, %if.end61.do.body119_crit_edge, %sw.bb.do.body119_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_jack_detect.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_jack_detect, %if.then131)) #7
          to label %do.end136 [label %if.then131], !srcloc !514

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  %jack_type133 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %65 = ptrtoint ptr %jack_type133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %jack_type133, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_jack_detect.__UNIQUE_ID_ddebug302, ptr noundef %64, ptr noundef nonnull @.str.80, i32 noundef %66) #7
  br label %do.end136

do.end136:                                        ; preds = %if.then131, %do.body119
  %jack_type137 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %67 = ptrtoint ptr %jack_type137 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %jack_type137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt5663_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
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
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 32768, i32 noundef 32768) #7
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 16384, i32 noundef 0) #7
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 16384, i32 noundef 16384) #7
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %codec_ver, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 64, i32 noundef 64) #7
  br label %if.end

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 183, i32 noundef 8, i32 noundef 8) #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %codec_ver7 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %codec_ver7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_ver7, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %10, label %do.end15 [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb10
  ]

sw.bb8:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 184, i32 noundef 64, i32 noundef 0) #7
  br label %sw.epilog17

sw.bb10:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 183, i32 noundef 8, i32 noundef 0) #7
  br label %sw.epilog17

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #10
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %do.end15, %sw.bb10, %sw.bb8
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 32768, i32 noundef 0) #7
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 16384, i32 noundef 0) #7
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 16384, i32 noundef 16384) #7
  br label %if.end

if.end:                                           ; preds = %sw.epilog17, %do.end, %sw.bb5, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
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
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %codec_ver, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @rt5663_v2_specific_dapm_widgets, i32 noundef 26) #7
  %call4 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5663_v2_specific_dapm_routes, i32 noundef 38) #7
  %call5 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @rt5663_v2_specific_controls, i32 noundef 2) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @rt5663_specific_dapm_widgets, i32 noundef 10) #7
  %call8 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5663_specific_dapm_routes, i32 noundef 14) #7
  %call9 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @rt5663_specific_controls, i32 noundef 2) #7
  %imp_table = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %imp_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imp_table, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @rt5663_hpvol_controls, i32 noundef 1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb6.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5663_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_suspend(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 2
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
define internal i32 @rt5663_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_resume, %if.then.i)) #7
          to label %rt5663_irq.exit [label %if.then.i], !srcloc !514

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call3.i = tail call ptr @regmap_get_device(ptr noundef %9) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_irq.__UNIQUE_ID_ddebug304, ptr noundef %call3.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #7
  br label %rt5663_irq.exit

rt5663_irq.exit:                                  ; preds = %if.then.i, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %jack_detect_work.i = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %jack_detect_work.i, i32 noundef 25) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %hs_jack, ptr nocapture noundef readnone %data) #0 align 64 {
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
  %hs_jack1 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hs_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hs_jack, ptr %hs_jack1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_set_jack_detect, %if.then.i)) #7
          to label %rt5663_irq.exit [label %if.then.i], !srcloc !514

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call3.i = tail call ptr @regmap_get_device(ptr noundef %6) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_irq.__UNIQUE_ID_ddebug304, ptr noundef %call3.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #7
  br label %rt5663_irq.exit

rt5663_irq.exit:                                  ; preds = %if.then.i, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %jack_detect_work.i = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %jack_detect_work.i, i32 noundef 25) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb5
    i32 0, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 20480, i32 noundef 20480) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %codec_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #7
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 32769, i32 noundef 32769) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %codec_ver6 = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %codec_ver6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %codec_ver6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %sw.bb5.if.end10_crit_edge

sw.bb5.if.end10_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb5.if.end10_crit_edge
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 61952, i32 noundef 41472) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10005, i32 noundef 2) #7
  %9 = ptrtoint ptr %codec_ver6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_ver6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then14, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 32769, i32 noundef 0) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %jack_type = getelementptr inbounds %struct.rt5663_priv, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp18.not = icmp eq i32 %12, 3
  br i1 %cmp18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 61952, i32 noundef 0) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 20480, i32 noundef 20480) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then19, %if.then14, %if.end10.sw.epilog_crit_edge, %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_charge_pump_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %codec_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 48, i32 noundef 48) #7
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 3, i32 noundef 3) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %codec_ver5 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %codec_ver5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_ver5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp eq i32 %10, 1
  br i1 %cmp6, label %if.then7, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 3, i32 noundef 0) #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 48, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %sw.bb4.cleanup_crit_edge, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %codec_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 145, i32 noundef 8, i32 noundef 768) #7
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 475, i32 noundef 3, i32 noundef 3) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 274, i32 noundef 15886, i32 noundef 14858) #7
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 143, i32 noundef 12291) #7
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 145, i32 noundef 4, i32 noundef 0) #7
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 146, i32 noundef 4977) #7
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 514, i32 noundef 43962) #7
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 293, i32 noundef 8740) #7
  %call10 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 264, i32 noundef 30566) #7
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 514, i32 noundef 44970) #7
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 296, i32 noundef 30583) #7
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 352, i32 noundef 32768, i32 noundef 32768) #7
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 12288, i32 noundef 12288) #7
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 192, i32 noundef 128) #7
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %codec_ver17 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %codec_ver17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_ver17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18 = icmp eq i32 %10, 0
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 475, i32 noundef 3, i32 noundef 2) #7
  br label %cleanup

if.else21:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 12288, i32 noundef 0) #7
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 145, i32 noundef 4, i32 noundef 4) #7
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 274, i32 noundef 15886, i32 noundef 0) #7
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 192, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.then19, %if.else, %if.then, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_is_sys_clk_from_pll(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 128) #7
  %and = and i32 %call1, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp = icmp eq i32 %and, 16384
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_is_using_asrc(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %shift2 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %8 = ptrtoint ptr %shift2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift2, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.243)
  switch i8 %9, label %if.then.cleanup_crit_edge [
    i8 3, label %if.then.if.end_crit_edge
    i8 10, label %sw.bb3
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.244)
  switch i8 %9, label %if.else.cleanup_crit_edge [
    i8 3, label %if.else.if.end_crit_edge
    i8 10, label %sw.bb7
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.bb7, %if.else.if.end_crit_edge, %sw.bb3, %if.then.if.end_crit_edge
  %reg.0 = phi i32 [ 132, %sw.bb3 ], [ 132, %sw.bb7 ], [ 133, %if.then.if.end_crit_edge ], [ 132, %if.else.if.end_crit_edge ]
  %shift.0 = phi i32 [ 12, %sw.bb3 ], [ 12, %sw.bb7 ], [ 12, %if.then.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ]
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %reg.0) #7
  %12 = shl nuw nsw i32 7, %shift.0
  %13 = and i32 %call10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp ne i32 %13, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_i2s_use_asrc(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 132) #7
  %and = and i32 %call2, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_ver, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %7, label %entry.cleanup.sink.split_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %entry.sw.epilog_crit_edge
  %.sink30 = phi i32 [ 132, %sw.bb7 ], [ 133, %entry.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 7, %sw.bb7 ], [ 28672, %entry.sw.epilog_crit_edge ]
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %.sink30) #7
  %and9 = and i32 %call8, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %ad_asrc_en.0.in.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %tobool.not, i1 %ad_asrc_en.0.in.not, i1 false
  br i1 %or.cond, label %sw.epilog.cleanup.sink.split_crit_edge, label %if.then

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then:                                          ; preds = %sw.epilog
  %sysclk = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sysclk, align 4
  %lrck = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lrck, align 4
  %mul = mul i32 %12, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul)
  %cmp = icmp sgt i32 %10, %mul
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.151.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.151, %sw.epilog.cleanup.sink.split_crit_edge ], [ @.str.151, %if.then.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %entry.cleanup.sink.split_crit_edge ], [ 0, %sw.epilog.cleanup.sink.split_crit_edge ], [ 0, %if.then.cleanup.sink.split_crit_edge ]
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull %.str.151.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_bst2_power(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.246)
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
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 16448, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 16448, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_pre_div_power(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 0, %sw.bb3 ], [ 65280, %entry.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %sw.bb3 ], [ 65532, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 110, i32 noundef %.sink9) #7
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 111, i32 noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 10
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
  %sysclk_src = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 11
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.202, i32 noundef %clk_id) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.mult = shl i32 %clk_id, 14
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef %switch.idx.mult) #7
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src9 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %sysclk_src9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %sysclk_src9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_set_dai_sysclk.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_set_dai_sysclk, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !514

if.then14:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_set_dai_sysclk.__UNIQUE_ID_ddebug309, ptr noundef %14, ptr noundef nonnull @.str.204, i32 noundef %freq, i32 noundef %clk_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %switch.lookup, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
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
  %pll_src = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 13
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
  %pll_in = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 14
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
  %pll_out = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 15
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_set_dai_pll.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_set_dai_pll, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !514

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_set_dai_pll.__UNIQUE_ID_ddebug310, ptr noundef %14, ptr noundef nonnull @.str.206) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pll_in13 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 14
  %15 = ptrtoint ptr %pll_in13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pll_in13, align 4
  %pll_out14 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 15
  %16 = ptrtoint ptr %pll_out14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pll_out14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %codec_ver, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %18, label %do.end20 [
    i32 0, label %if.end16.sw.epilog_crit_edge
    i32 1, label %sw.bb17
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17, %if.end16.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 14336, %sw.bb17 ], [ 1792, %if.end16.sw.epilog_crit_edge ]
  %shift.0 = phi i32 [ 11, %sw.bb17 ], [ 8, %if.end16.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %source)
  %switch = icmp ult i32 %source, 2
  br i1 %switch, label %sw.epilog29, label %do.end27

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.208, i32 noundef %source) #10
  br label %cleanup

sw.epilog29:                                      ; preds = %sw.epilog
  %shl = shl nuw nsw i32 %source, %shift.0
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef %mask.0, i32 noundef %shl) #7
  %call31 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %do.body39

do.end36:                                         ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.211, i32 noundef %freq_in) #10
  br label %cleanup

do.body39:                                        ; preds = %sw.epilog29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_set_dai_pll.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_set_dai_pll, %if.then51)) #7
          to label %do.end59 [label %if.then51], !srcloc !514

if.then51:                                        ; preds = %do.body39
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll_code, align 4, !range !515
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool53.not = icmp eq i8 %29, 0
  %30 = zext i8 %29 to i32
  br i1 %tobool53.not, label %cond.false, label %if.then51.cond.end_crit_edge

if.then51.cond.end_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %31 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then51.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.false ], [ 0, %if.then51.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %33 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %35 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_set_dai_pll.__UNIQUE_ID_ddebug311, ptr noundef %27, ptr noundef nonnull @.str.213, i32 noundef %30, i32 noundef %cond, i32 noundef %34, i32 noundef %36) #7
  br label %do.end59

do.end59:                                         ; preds = %cond.end, %do.body39
  %n_code60 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %37 = ptrtoint ptr %n_code60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_code60, align 4
  %shl61 = shl i32 %38, 7
  %k_code62 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %39 = ptrtoint ptr %k_code62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %k_code62, align 4
  %or = or i32 %shl61, %40
  %call63 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 129, i32 noundef %or) #7
  %41 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pll_code, align 4, !range !515
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool65.not = icmp eq i8 %42, 0
  br i1 %tobool65.not, label %cond.false68, label %do.end59.cond.end70_crit_edge

do.end59.cond.end70_crit_edge:                    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end70

cond.false68:                                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %m_code69 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %43 = ptrtoint ptr %m_code69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %m_code69, align 4
  %phi.bo = shl i32 %44, 12
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false68, %do.end59.cond.end70_crit_edge
  %cond71 = phi i32 [ %phi.bo, %cond.false68 ], [ 0, %do.end59.cond.end70_crit_edge ]
  %45 = zext i8 %42 to i32
  %shl76 = shl nuw nsw i32 %45, 11
  %or77 = or i32 %cond71, %shl76
  %call78 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 130, i32 noundef %or77) #7
  %pll_in79 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 14
  %46 = ptrtoint ptr %pll_in79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %freq_in, ptr %pll_in79, align 4
  %pll_out80 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 15
  %47 = ptrtoint ptr %pll_out80 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %freq_out, ptr %pll_out80, align 4
  %48 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end70, %do.end36, %do.end27, %do.end20, %do.end, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -22, %do.end27 ], [ %call31, %do.end36 ], [ 0, %cond.end70 ], [ 0, %do.end ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_set_bclk_ratio.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_set_bclk_ratio, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !514

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_set_bclk_ratio.__UNIQUE_ID_ddebug312, ptr noundef %7, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.214, i32 noundef %ratio) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %. = select i1 %cmp, i32 127, i32 123
  %10 = add i32 %ratio, -32
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 29)
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %11, label %do.end16 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb10
    i32 4, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %., i32 noundef 3, i32 noundef 0) #7
  br label %cleanup

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %., i32 noundef 3, i32 noundef 1) #7
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %., i32 noundef 3, i32 noundef 2) #7
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %., i32 noundef 3, i32 noundef 3) #7
  br label %cleanup

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.216) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end16 ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.250)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %reg_val.0 = phi i32 [ 32768, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %and2 = and i32 %fmt, 3840
  %4 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %and2, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog6_crit_edge
    i32 768, label %sw.bb3
  ]

sw.epilog.sw.epilog6_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %reg_val.0, 256
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb3, %sw.epilog.sw.epilog6_crit_edge
  %reg_val.1 = phi i32 [ %or4, %sw.bb3 ], [ %reg_val.0, %sw.epilog.sw.epilog6_crit_edge ]
  %and7 = and i32 %fmt, 15
  %5 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %and7, label %sw.epilog6.cleanup_crit_edge [
    i32 1, label %sw.epilog6.sw.epilog15_crit_edge
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
    i32 5, label %sw.bb12
  ]

sw.epilog6.sw.epilog15_crit_edge:                 ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.epilog6.cleanup_crit_edge:                     ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %reg_val.1, 1
  br label %sw.epilog15

sw.bb10:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %reg_val.1, 2
  br label %sw.epilog15

sw.bb12:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %reg_val.1, 3
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.epilog6.sw.epilog15_crit_edge
  %reg_val.2 = phi i32 [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %reg_val.1, %sw.epilog6.sw.epilog15_crit_edge ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 33031, i32 noundef %reg_val.2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog15, %sw.epilog6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %val.0 = select i1 %7, i32 0, i32 32768
  %8 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %slots, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 6, label %sw.bb5
    i32 8, label %sw.bb8
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %val.0, 1280
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or7 = or i32 %val.0, 2560
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %val.0, 3840
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %val.1 = phi i32 [ %val.0, %entry.sw.epilog_crit_edge ], [ %or10, %sw.bb8 ], [ %or7, %sw.bb5 ], [ %or4, %sw.bb ]
  %9 = add i32 %slot_width, -16
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %10, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
    i32 4, label %sw.bb17
    i32 0, label %sw.epilog.sw.epilog21_crit_edge
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %val.1, 80
  br label %sw.epilog21

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or16 = or i32 %val.1, 160
  br label %sw.epilog21

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %val.1, 240
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb17, %sw.bb14, %sw.bb11, %sw.epilog.sw.epilog21_crit_edge
  %val.2 = phi i32 [ %val.1, %sw.epilog.sw.epilog21_crit_edge ], [ %or19, %sw.bb17 ], [ %or16, %sw.bb14 ], [ %or13, %sw.bb11 ]
  %codec_ver = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %codec_ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %codec_ver, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %13, label %do.end [
    i32 0, label %sw.epilog21.sw.epilog25_crit_edge
    i32 1, label %sw.bb23
  ]

sw.epilog21.sw.epilog25_crit_edge:                ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

sw.bb23:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

do.end:                                           ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #10
  br label %cleanup

sw.epilog25:                                      ; preds = %sw.bb23, %sw.epilog21.sw.epilog25_crit_edge
  %reg.0 = phi i32 [ 119, %sw.bb23 ], [ 120, %sw.epilog21.sw.epilog25_crit_edge ]
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %reg.0, i32 noundef 36848, i32 noundef %val.2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog25, %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5663_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %lrck = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lrck, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_hw_params.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_hw_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !514

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lrck, align 4
  %sysclk = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 10
  %13 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sysclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_hw_params.__UNIQUE_ID_ddebug307, ptr noundef %10, ptr noundef nonnull @.str.219, i32 noundef %12, i32 noundef %14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sysclk7 = getelementptr inbounds %struct.rt5663_priv, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %sysclk7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysclk7, align 4
  %17 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lrck, align 4
  %call9 = tail call i32 @rl6231_get_clk_info(i32 noundef %16, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %do.body17

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lrck, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.220, i32 noundef %22, i32 noundef %24) #10
  br label %cleanup

do.body17:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5663_hw_params.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5663_hw_params, %if.then29)) #7
          to label %do.end34 [label %if.then29], !srcloc !514

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %25 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev30, align 4
  %id31 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %27 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5663_hw_params.__UNIQUE_ID_ddebug308, ptr noundef %26, ptr noundef nonnull @.str.221, i32 noundef %call9, i32 noundef %28) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end34.if.then.i.i.i_crit_edge

do.end34.if.then.i.i.i_crit_edge:                 ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end34.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end34.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %30, %do.end34.if.then.i.i.i_crit_edge ], [ %33, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %31 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !516
  %add.i.i.i = or i32 %31, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end34
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i.i = icmp eq i32 %33, 0
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
  %34 = add i32 %call1.i, -8
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %36 = icmp ult i32 %35, 5
  br i1 %36, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %35 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %37 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %switch.lobit.not = icmp eq i8 %37, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt5663_hw_params, i32 0, i32 %35
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 48, i32 noundef %switch.load) #7
  %shl = shl i32 %call9, 12
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 28672, i32 noundef %shl) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ 0, %switch.lookup ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 267)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 267)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !156, !158, !160, !162, !163, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !179, !181, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !242, !244, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !314, !315, !317, !318, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !454, !455, !456, !458, !459, !461, !462, !463, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !502}
!llvm.module.flags = !{!504, !505, !506, !507, !508, !509, !510, !511}
!llvm.ident = !{!512}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5663.c", i32 2206, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rt5663_sel_asrc_clk_src._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rt5663_sel_asrc_clk_src._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_rt5663_sel_asrc_clk_src, !9, !"__ksymtab_rt5663_sel_asrc_clk_src", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/rt5663.c", i32 2220, i32 1}
!10 = !{ptr @__initcall__kmod_snd_soc_rt5663__314_3743_rt5663_i2c_driver_init6, !11, !"__initcall__kmod_snd_soc_rt5663__314_3743_rt5663_i2c_driver_init6", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt5663.c", i32 3743, i32 1}
!12 = !{ptr @__exitcall_rt5663_i2c_driver_exit, !11, !"__exitcall_rt5663_i2c_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description315, !14, !"__UNIQUE_ID_description315", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/rt5663.c", i32 3745, i32 1}
!15 = !{ptr @__UNIQUE_ID_author316, !16, !"__UNIQUE_ID_author316", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/rt5663.c", i32 3746, i32 1}
!17 = !{ptr @__UNIQUE_ID_file317, !18, !"__UNIQUE_ID_file317", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt5663.c", i32 3747, i32 1}
!19 = !{ptr @__UNIQUE_ID_license318, !18, !"__UNIQUE_ID_license318", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/rt5663.c", i32 3734, i32 11}
!22 = !{ptr @rt5663_i2c_driver, !23, !"rt5663_i2c_driver", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/rt5663.c", i32 3732, i32 26}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rt5663.c", i32 3523, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rt5663_i2c_probe._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt5663_i2c_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt5663.c", i32 3532, i32 4}
!31 = !{ptr @rt5663_i2c_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rt5663_i2c_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/rt5663.c", i32 3543, i32 3}
!35 = !{ptr @rt5663_i2c_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rt5663_i2c_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @rt5663_i2c_probe._key, !38, !"_key", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/rt5663.c", i32 3548, i32 11}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5663.c", i32 3551, i32 3}
!42 = !{ptr @rt5663_i2c_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rt5663_i2c_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt5663.c", i32 3558, i32 3}
!46 = !{ptr @rt5663_i2c_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rt5663_i2c_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rt5663_i2c_probe._key.21, !49, !"_key", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt5663.c", i32 3567, i32 20}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rt5663_i2c_probe._key.23, !52, !"_key", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt5663.c", i32 3571, i32 20}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt5663.c", i32 3575, i32 3}
!56 = !{ptr @rt5663_i2c_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rt5663_i2c_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5663.c", i32 3584, i32 3}
!60 = !{ptr @rt5663_i2c_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rt5663_i2c_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt5663.c", i32 3600, i32 3}
!64 = !{ptr @rt5663_i2c_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rt5663_i2c_probe._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt5663.c", i32 3604, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rt5663_i2c_probe.__UNIQUE_ID_ddebug313, !67, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/rt5663.c", i32 3613, i32 4}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rt5663_i2c_probe._entry.36, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @rt5663_i2c_probe._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @rt5663_i2c_probe._entry.40, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt5663.c", i32 3617, i32 3}
!77 = !{ptr @rt5663_i2c_probe._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @rt5663_i2c_probe._entry.42, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt5663.c", i32 3674, i32 3}
!80 = !{ptr @rt5663_i2c_probe._entry_ptr.43, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @rt5663_i2c_probe.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt5663.c", i32 3677, i32 2}
!83 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rt5663_i2c_probe.__key.45, !82, !"__key", i1 false, i1 false}
!85 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rt5663_i2c_probe.__key.47, !87, !"__key", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt5663.c", i32 3678, i32 2}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rt5663_i2c_probe.__key.49, !87, !"__key", i1 false, i1 false}
!90 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5663.c", i32 3685, i32 4}
!93 = !{ptr @rt5663_i2c_probe._entry.51, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rt5663_i2c_probe._entry_ptr.53, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt5663.c", i32 3466, i32 32}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt5663.c", i32 3468, i32 32}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/rt5663.c", i32 3470, i32 32}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/rt5663.c", i32 3472, i32 32}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/rt5663.c", i32 3474, i32 32}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/rt5663.c", i32 3482, i32 4}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/rt5663.c", i32 53, i32 2}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/rt5663.c", i32 54, i32 2}
!111 = distinct !{null, !112, !"rt5663_supply_names", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/rt5663.c", i32 52, i32 26}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/rt5663.c", i32 3291, i32 10}
!115 = !{ptr @temp_regmap, !116, !"temp_regmap", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/rt5663.c", i32 3290, i32 35}
!117 = !{ptr @rt5663_v2_regmap, !118, !"rt5663_v2_regmap", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/rt5663.c", i32 3264, i32 35}
!119 = !{ptr @rt5663_v2_reg, !120, !"rt5663_v2_reg", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/rt5663.c", i32 87, i32 33}
!121 = !{ptr @rt5663_regmap, !122, !"rt5663_regmap", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/rt5663.c", i32 3277, i32 35}
!123 = !{ptr @rt5663_reg, !124, !"rt5663_reg", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/rt5663.c", i32 489, i32 33}
!125 = !{ptr @rt5663_patch_list, !126, !"rt5663_patch_list", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/rt5663.c", i32 79, i32 34}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/rt5663.c", i32 1924, i32 5}
!129 = !{ptr @rt5663_jack_detect_work._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rt5663_jack_detect_work._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/rt5663.c", i32 1965, i32 5}
!133 = !{ptr @rt5663_jack_detect_work._entry.64, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rt5663_jack_detect_work._entry_ptr.66, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @rt5663_jack_detect_work._entry.67, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/rt5663.c", i32 1991, i32 4}
!137 = !{ptr @rt5663_jack_detect_work._entry_ptr.68, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5663.c", i32 1994, i32 2}
!140 = !{ptr @rt5663_jack_detect_work.__UNIQUE_ID_ddebug306, !139, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/rt5663.c", i32 1884, i32 2}
!143 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rt5663_check_jd_status.__UNIQUE_ID_ddebug305, !142, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!145 = !{ptr @rt5663_check_jd_status._entry, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/rt5663.c", i32 1893, i32 3}
!147 = !{ptr @rt5663_check_jd_status._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt5663.c", i32 1469, i32 2}
!150 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug296, !149, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt5663.c", i32 1474, i32 39}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt5663.c", i32 1475, i32 39}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt5663.c", i32 1476, i32 39}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt5663.c", i32 1477, i32 39}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt5663.c", i32 1488, i32 4}
!162 = !{ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug297, !161, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/rt5663.c", i32 1492, i32 3}
!165 = !{ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug298, !164, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt5663.c", i32 1522, i32 2}
!168 = !{ptr @rt5663_v2_jack_detect.__UNIQUE_ID_ddebug299, !167, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/rt5663.c", i32 1424, i32 4}
!171 = !{ptr @rt5663_enable_push_button_irq._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @rt5663_enable_push_button_irq._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @rt5663_enable_push_button_irq._entry.82, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/rt5663.c", i32 1439, i32 4}
!175 = !{ptr @rt5663_enable_push_button_irq._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt5663.c", i32 1540, i32 2}
!178 = !{ptr @rt5663_jack_detect.__UNIQUE_ID_ddebug300, !177, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!179 = !{ptr @rt5663_jack_detect.__UNIQUE_ID_ddebug301, !180, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/rt5663.c", i32 1599, i32 3}
!181 = !{ptr @rt5663_jack_detect.__UNIQUE_ID_ddebug302, !182, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/rt5663.c", i32 1667, i32 2}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/rt5663.c", i32 1847, i32 2}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @rt5663_button_detect.__UNIQUE_ID_ddebug303, !184, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/rt5663.c", i32 2019, i32 4}
!189 = !{ptr @rt5663_jd_unplug_work._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @rt5663_jd_unplug_work._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/rt5663.c", i32 1858, i32 2}
!193 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @rt5663_irq.__UNIQUE_ID_ddebug304, !192, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!195 = !{ptr @soc_component_dev_rt5663, !196, !"soc_component_dev_rt5663", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/rt5663.c", i32 3246, i32 46}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/rt5663.c", i32 2033, i32 2}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/rt5663.c", i32 2037, i32 2}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/rt5663.c", i32 2039, i32 2}
!203 = !{ptr @rt5663_snd_controls, !204, !"rt5663_snd_controls", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/rt5663.c", i32 2031, i32 38}
!205 = !{ptr @dac_vol_tlv, !206, !"dac_vol_tlv", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/rt5663.c", i32 1375, i32 14}
!207 = !{ptr @adc_vol_tlv, !208, !"adc_vol_tlv", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/rt5663.c", i32 1376, i32 14}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/rt5663.c", i32 2454, i32 2}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/rt5663.c", i32 2464, i32 2}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/rt5663.c", i32 2465, i32 2}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/rt5663.c", i32 2468, i32 2}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/rt5663.c", i32 2472, i32 2}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/rt5663.c", i32 2473, i32 2}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/rt5663.c", i32 2475, i32 2}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/rt5663.c", i32 2479, i32 2}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/rt5663.c", i32 2484, i32 2}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/rt5663.c", i32 2488, i32 2}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/rt5663.c", i32 2490, i32 2}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/rt5663.c", i32 2491, i32 2}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/rt5663.c", i32 2492, i32 2}
!235 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/rt5663.c", i32 2493, i32 2}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/rt5663.c", i32 2494, i32 2}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/rt5663.c", i32 2497, i32 2}
!241 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/rt5663.c", i32 2498, i32 2}
!244 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/rt5663.c", i32 2501, i32 2}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/rt5663.c", i32 2503, i32 2}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/rt5663.c", i32 2505, i32 2}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/rt5663.c", i32 2506, i32 2}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/rt5663.c", i32 2509, i32 2}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/rt5663.c", i32 2511, i32 2}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/rt5663.c", i32 2513, i32 2}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/rt5663.c", i32 2517, i32 2}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/rt5663.c", i32 2519, i32 2}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/rt5663.c", i32 2521, i32 2}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/rt5663.c", i32 2522, i32 2}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/rt5663.c", i32 2525, i32 2}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/rt5663.c", i32 2528, i32 2}
!271 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/rt5663.c", i32 2532, i32 2}
!273 = !{ptr @.str.128, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/rt5663.c", i32 2533, i32 2}
!275 = !{ptr @rt5663_dapm_widgets, !276, !"rt5663_dapm_widgets", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/rt5663.c", i32 2453, i32 41}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/rt5663.c", i32 2237, i32 2}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/rt5663.c", i32 2239, i32 2}
!281 = !{ptr @rt5663_sto1_adc_l_mix, !282, !"rt5663_sto1_adc_l_mix", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/rt5663.c", i32 2236, i32 38}
!283 = !{ptr @.str.134, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/rt5663.c", i32 2251, i32 2}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/rt5663.c", i32 2253, i32 2}
!287 = !{ptr @rt5663_adda_l_mix, !288, !"rt5663_adda_l_mix", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/rt5663.c", i32 2250, i32 38}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/rt5663.c", i32 2258, i32 2}
!291 = !{ptr @.str.140, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt5663.c", i32 2260, i32 2}
!293 = !{ptr @rt5663_adda_r_mix, !294, !"rt5663_adda_r_mix", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/rt5663.c", i32 2257, i32 38}
!295 = !{ptr @rt5663_sto1_dac_l_mix, !296, !"rt5663_sto1_dac_l_mix", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/rt5663.c", i32 2264, i32 38}
!297 = !{ptr @rt5663_sto1_dac_r_mix, !298, !"rt5663_sto1_dac_r_mix", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/rt5663.c", i32 2269, i32 38}
!299 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/rt5663.c", i32 2641, i32 29}
!301 = !{ptr @.str.145, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/rt5663.c", i32 2642, i32 29}
!303 = !{ptr @.str.146, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/rt5663.c", i32 2643, i32 17}
!305 = !{ptr @.str.147, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/rt5663.c", i32 2648, i32 4}
!307 = !{ptr @.str.148, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/rt5663.c", i32 2650, i32 36}
!309 = !{ptr @rt5663_dapm_routes, !310, !"rt5663_dapm_routes", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/rt5663.c", i32 2636, i32 40}
!311 = !{ptr @.str.149, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/rt5663.c", i32 2145, i32 3}
!313 = !{ptr @rt5663_i2s_use_asrc._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @rt5663_i2s_use_asrc._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.151, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/rt5663.c", i32 2153, i32 2}
!317 = !{ptr @rt5663_i2s_use_asrc._entry.150, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @rt5663_i2s_use_asrc._entry_ptr.152, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.153, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/rt5663.c", i32 2537, i32 2}
!321 = !{ptr @.str.154, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/rt5663.c", i32 2541, i32 2}
!323 = !{ptr @.str.155, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/rt5663.c", i32 2553, i32 2}
!325 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/rt5663.c", i32 2554, i32 2}
!327 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/rt5663.c", i32 2557, i32 2}
!329 = !{ptr @.str.158, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/rt5663.c", i32 2560, i32 2}
!331 = !{ptr @.str.159, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/rt5663.c", i32 2561, i32 2}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/rt5663.c", i32 2566, i32 2}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/rt5663.c", i32 2568, i32 2}
!337 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/rt5663.c", i32 2570, i32 2}
!339 = !{ptr @.str.163, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/rt5663.c", i32 2574, i32 2}
!341 = !{ptr @.str.164, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/rt5663.c", i32 2575, i32 2}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/rt5663.c", i32 2581, i32 2}
!345 = !{ptr @.str.166, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/rt5663.c", i32 2585, i32 2}
!347 = !{ptr @.str.167, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/rt5663.c", i32 2588, i32 2}
!349 = !{ptr @.str.168, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/rt5663.c", i32 2590, i32 2}
!351 = !{ptr @.str.169, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/rt5663.c", i32 2594, i32 2}
!353 = !{ptr @.str.170, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/rt5663.c", i32 2598, i32 2}
!355 = !{ptr @.str.171, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/rt5663.c", i32 2602, i32 2}
!357 = !{ptr @rt5663_v2_specific_dapm_widgets, !358, !"rt5663_v2_specific_dapm_widgets", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/rt5663.c", i32 2536, i32 41}
!359 = !{ptr @.str.173, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/rt5663.c", i32 2224, i32 2}
!361 = !{ptr @.str.175, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/rt5663.c", i32 2226, i32 2}
!363 = !{ptr @rt5663_recmix1l, !364, !"rt5663_recmix1l", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/rt5663.c", i32 2223, i32 38}
!365 = !{ptr @rt5663_recmix1r, !366, !"rt5663_recmix1r", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/rt5663.c", i32 2230, i32 38}
!367 = !{ptr @rt5663_sto1_adcl_mux, !368, !"rt5663_sto1_adcl_mux", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/rt5663.c", i32 2287, i32 38}
!369 = !{ptr @rt5663_sto1_adcl_enum, !370, !"rt5663_sto1_adcl_enum", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/rt5663.c", i32 2284, i32 8}
!371 = !{ptr @rt5663_sto1_adc_src, !372, !"rt5663_sto1_adc_src", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/rt5663.c", i32 2280, i32 27}
!373 = !{ptr @rt5663_sto1_adcr_mux, !374, !"rt5663_sto1_adcr_mux", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/rt5663.c", i32 2293, i32 38}
!375 = !{ptr @rt5663_sto1_adcr_enum, !376, !"rt5663_sto1_adcr_enum", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/rt5663.c", i32 2290, i32 8}
!377 = !{ptr @rt5663_sto1_adc_r_mix, !378, !"rt5663_sto1_adc_r_mix", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/rt5663.c", i32 2243, i32 38}
!379 = !{ptr @.str.180, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/rt5663.c", i32 2276, i32 2}
!381 = !{ptr @rt5663_hpo_switch, !382, !"rt5663_hpo_switch", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/rt5663.c", i32 2275, i32 38}
!383 = !{ptr @rt5663_v2_specific_dapm_routes, !384, !"rt5663_v2_specific_dapm_routes", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/rt5663.c", i32 2687, i32 40}
!385 = !{ptr @.str.182, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/rt5663.c", i32 2046, i32 2}
!387 = !{ptr @.str.184, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/rt5663.c", i32 2050, i32 2}
!389 = !{ptr @rt5663_v2_specific_controls, !390, !"rt5663_v2_specific_controls", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/rt5663.c", i32 2044, i32 38}
!391 = !{ptr @rt5663_v2_hp_vol_tlv, !392, !"rt5663_v2_hp_vol_tlv", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/rt5663.c", i32 1374, i32 14}
!393 = !{ptr @in_bst_tlv, !394, !"in_bst_tlv", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/rt5663.c", i32 1379, i32 14}
!395 = !{ptr @.str.186, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/rt5663.c", i32 2608, i32 2}
!397 = !{ptr @.str.187, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/rt5663.c", i32 2613, i32 2}
!399 = !{ptr @.str.188, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/rt5663.c", i32 2625, i32 2}
!401 = !{ptr @.str.189, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/rt5663.c", i32 2632, i32 2}
!403 = !{ptr @.str.190, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/rt5663.c", i32 2633, i32 2}
!405 = !{ptr @rt5663_specific_dapm_widgets, !406, !"rt5663_specific_dapm_widgets", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/rt5663.c", i32 2606, i32 41}
!407 = !{ptr @rt5663_alg_dacl_mux, !408, !"rt5663_alg_dacl_mux", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/rt5663.c", i32 2304, i32 38}
!409 = !{ptr @rt5663_alg_dacl_enum, !410, !"rt5663_alg_dacl_enum", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/rt5663.c", i32 2301, i32 8}
!411 = !{ptr @.str.192, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/rt5663.c", i32 2298, i32 11}
!413 = !{ptr @rt5663_alg_dacl_src, !414, !"rt5663_alg_dacl_src", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/rt5663.c", i32 2297, i32 27}
!415 = !{ptr @rt5663_alg_dacr_mux, !416, !"rt5663_alg_dacr_mux", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/rt5663.c", i32 2315, i32 38}
!417 = !{ptr @rt5663_alg_dacr_enum, !418, !"rt5663_alg_dacr_enum", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/rt5663.c", i32 2312, i32 8}
!419 = !{ptr @.str.193, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/rt5663.c", i32 2309, i32 11}
!421 = !{ptr @rt5663_alg_dacr_src, !422, !"rt5663_alg_dacr_src", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/rt5663.c", i32 2308, i32 27}
!423 = !{ptr @rt5663_specific_dapm_routes, !424, !"rt5663_specific_dapm_routes", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/rt5663.c", i32 2739, i32 40}
!425 = !{ptr @.str.195, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/rt5663.c", i32 2059, i32 2}
!427 = !{ptr @rt5663_specific_controls, !428, !"rt5663_specific_controls", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/rt5663.c", i32 2054, i32 38}
!429 = !{ptr @rt5663_if1_adc_enum, !430, !"rt5663_if1_adc_enum", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/rt5663.c", i32 1394, i32 8}
!431 = !{ptr @.str.196, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/rt5663.c", i32 1391, i32 2}
!433 = !{ptr @.str.197, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/rt5663.c", i32 1391, i32 9}
!435 = !{ptr @.str.198, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/rt5663.c", i32 1391, i32 16}
!437 = !{ptr @.str.199, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/rt5663.c", i32 1391, i32 23}
!439 = !{ptr @rt5663_if1_adc_data_select, !440, !"rt5663_if1_adc_data_select", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/rt5663.c", i32 1390, i32 27}
!441 = !{ptr @rt5663_hpvol_controls, !442, !"rt5663_hpvol_controls", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/rt5663.c", i32 2062, i32 38}
!443 = !{ptr @rt5663_hp_vol_tlv, !444, !"rt5663_hp_vol_tlv", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/rt5663.c", i32 1373, i32 14}
!445 = !{ptr @.str.201, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/rt5663.c", i32 3226, i32 11}
!447 = !{ptr @rt5663_dai, !448, !"rt5663_dai", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/rt5663.c", i32 3224, i32 34}
!449 = !{ptr @rt5663_aif_dai_ops, !450, !"rt5663_aif_dai_ops", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/rt5663.c", i32 3215, i32 37}
!451 = !{ptr @.str.202, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/rt5663.c", i32 2878, i32 3}
!453 = !{ptr @.str.203, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @rt5663_set_dai_sysclk._entry, !452, !"_entry", i1 false, i1 false}
!455 = !{ptr @rt5663_set_dai_sysclk._entry_ptr, !452, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.204, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/rt5663.c", i32 2886, i32 2}
!458 = !{ptr @rt5663_set_dai_sysclk.__UNIQUE_ID_ddebug309, !457, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!459 = !{ptr @.str.205, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/rt5663.c", i32 2906, i32 3}
!461 = !{ptr @.str.206, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @rt5663_set_dai_pll.__UNIQUE_ID_ddebug310, !460, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!463 = !{ptr @rt5663_set_dai_pll._entry, !464, !"_entry", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/rt5663.c", i32 2925, i32 3}
!465 = !{ptr @rt5663_set_dai_pll._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.208, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/rt5663.c", i32 2937, i32 3}
!468 = !{ptr @rt5663_set_dai_pll._entry.207, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @rt5663_set_dai_pll._entry_ptr.209, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.211, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/rt5663.c", i32 2944, i32 3}
!472 = !{ptr @rt5663_set_dai_pll._entry.210, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @rt5663_set_dai_pll._entry_ptr.212, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.213, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/rt5663.c", i32 2948, i32 2}
!476 = !{ptr @rt5663_set_dai_pll.__UNIQUE_ID_ddebug311, !475, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!477 = !{ptr @.str.214, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/rt5663.c", i32 3038, i32 2}
!479 = !{ptr @.str.215, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @rt5663_set_bclk_ratio.__UNIQUE_ID_ddebug312, !478, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!481 = !{ptr @.str.216, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/rt5663.c", i32 3067, i32 3}
!483 = !{ptr @rt5663_set_bclk_ratio._entry, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @rt5663_set_bclk_ratio._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.217, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/rt5663.c", i32 3021, i32 3}
!487 = !{ptr @rt5663_set_tdm_slot._entry, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @rt5663_set_tdm_slot._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.218, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/rt5663.c", i32 2772, i32 2}
!491 = !{ptr @.str.219, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @rt5663_hw_params.__UNIQUE_ID_ddebug307, !490, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!493 = !{ptr @.str.220, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/rt5663.c", i32 2777, i32 3}
!495 = !{ptr @rt5663_hw_params._entry, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @rt5663_hw_params._entry_ptr, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.221, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/rt5663.c", i32 2782, i32 2}
!499 = !{ptr @rt5663_hw_params.__UNIQUE_ID_ddebug308, !498, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!500 = !{ptr @rt5663_of_match, !501, !"rt5663_of_match", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/rt5663.c", i32 3307, i32 34}
!502 = !{ptr @rt5663_i2c_id, !503, !"rt5663_i2c_id", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/rt5663.c", i32 3300, i32 35}
!504 = !{i32 1, !"wchar_size", i32 2}
!505 = !{i32 1, !"min_enum_size", i32 4}
!506 = !{i32 8, !"branch-target-enforcement", i32 0}
!507 = !{i32 8, !"sign-return-address", i32 0}
!508 = !{i32 8, !"sign-return-address-all", i32 0}
!509 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!510 = !{i32 7, !"uwtable", i32 1}
!511 = !{i32 7, !"frame-pointer", i32 2}
!512 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!513 = !{!"auto-init"}
!514 = !{i64 2149057882, i64 2149057887, i64 2149057900, i64 2149057944, i64 2149057978, i64 2149057999}
!515 = !{i8 0, i8 2}
!516 = !{i32 0, i32 33}
