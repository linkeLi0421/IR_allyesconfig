; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5645.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5645.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt5645_sel_asrc_clk_src\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5645_sel_asrc_clk_src\09\09\09\09"
module asm "\09.long\09__crc_rt5645_sel_asrc_clk_src\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5645_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5645_sel_asrc_clk_src\22\09\09\09\09\09"
module asm "__kstrtabns_rt5645_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5645_set_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5645_set_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_rt5645_set_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5645_set_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5645_set_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_rt5645_set_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rt5645_platform_data = type { i8, i32, i32, i32, i8, i8, i8, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rt5645_priv = type { ptr, %struct.rt5645_platform_data, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, [2 x %struct.regulator_bulk_data], ptr, %struct.timer_list, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i8, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.95 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.86, [64 x i8] }
%union.anon.86 = type { %struct.anon.89, [40 x i8] }
%struct.anon.89 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.rt5645_eq_param_s = type { i16, i16 }
%struct.rt5645_eq_param_s_be16 = type { i16, i16 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__param_str_quirk = internal constant [21 x i8] c"snd_soc_rt5645.quirk\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@quirk = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_quirk = internal constant %struct.kernel_param { ptr @__param_str_quirk, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @quirk } }, section "__param", align 4
@__UNIQUE_ID_quirktype296 = internal constant [35 x i8] c"snd_soc_rt5645.parmtype=quirk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk297 = internal constant [54 x i8] c"snd_soc_rt5645.parm=quirk:RT5645 pdata quirk override\00", section ".modinfo", align 1
@__kstrtab_rt5645_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5645_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5645_sel_asrc_clk_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5645_sel_asrc_clk_src to i32), ptr @__kstrtab_rt5645_sel_asrc_clk_src, ptr @__kstrtabns_rt5645_sel_asrc_clk_src }, section "___ksymtab_gpl+rt5645_sel_asrc_clk_src", align 4
@__kstrtab_rt5645_set_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5645_set_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5645_set_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5645_set_jack_detect to i32), ptr @__kstrtab_rt5645_set_jack_detect, ptr @__kstrtabns_rt5645_set_jack_detect }, section "___ksymtab_gpl+rt5645_set_jack_detect", align 4
@__initcall__kmod_snd_soc_rt5645__308_4191_rt5645_i2c_driver_init6 = internal global ptr @rt5645_i2c_driver_init, section ".initcall6.init", align 4
@rt5645_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5645_i2c_probe, ptr @rt5645_i2c_remove, ptr null, ptr @rt5645_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5645_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5645_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5645_i2c_driver_exit = internal global ptr @rt5645_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [46 x i8] c"snd_soc_rt5645.description=ASoC RT5645 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [55 x i8] c"snd_soc_rt5645.author=Bard Liao <bardliao@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [52 x i8] c"snd_soc_rt5645.file=sound/soc/codecs/snd-soc-rt5645\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [30 x i8] c"snd_soc_rt5645.license=GPL v2\00", section ".modinfo", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5645\00", [25 x i8] zeroinitializer }, align 32
@rt5645_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5645\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rt5645_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5645\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt5650\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3878, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Detected %s platform\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5645_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5645.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr = internal global ptr @rt5645_i2c_probe._entry, section ".printk_index", align 4
@jd_mode3_platform_data = internal constant { %struct.rt5645_platform_data, [36 x i8] } { %struct.rt5645_platform_data { i8 0, i32 0, i32 0, i32 3, i8 0, i8 0, i8 0, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5645\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hp-detect\00", [22 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 3914, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to initialize gpiod\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.12 = internal global ptr @rt5645_i2c_probe._entry.10, section ".printk_index", align 4
@rt5645_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 3931, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.16 = internal global ptr @rt5645_i2c_probe._entry.13, section ".printk_index", align 4
@rt5645_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 3938, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.19 = internal global ptr @rt5645_i2c_probe._entry.17, section ".printk_index", align 4
@rt5645_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@temp_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.78, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 256, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rt5645:3942:(&temp_regmap)->lock\00", [63 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 3946, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate temp register map: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.23 = internal global ptr @rt5645_i2c_probe._entry.21, section ".printk_index", align 4
@rt5645_i2c_probe._key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5645_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5645_readable_register, ptr @rt5645_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_reg, i32 153, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5645_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5645:3959:(&rt5645_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5650_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5645_readable_register, ptr @rt5645_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5650_reg, i32 154, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5645_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5645:3963:(&rt5650_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 3969, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Device with ID register %#x is not rt5645 or rt5650\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.30 = internal global ptr @rt5645_i2c_probe._entry.28, section ".printk_index", align 4
@rt5645_i2c_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 3977, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.33 = internal global ptr @rt5645_i2c_probe._entry.31, section ".printk_index", align 4
@init_list = internal constant { [6 x %struct.reg_sequence], [56 x i8] } { [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 317, i32 13824, i32 0 }, %struct.reg_sequence { i32 284, i32 64880, i32 0 }, %struct.reg_sequence { i32 288, i32 24863, i32 0 }, %struct.reg_sequence { i32 289, i32 16448, i32 0 }, %struct.reg_sequence { i32 291, i32 4, i32 0 }, %struct.reg_sequence { i32 138, i32 288, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 3991, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.37 = internal global ptr @rt5645_i2c_probe._entry.34, section ".printk_index", align 4
@rt5650_init_list = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 246, i32 256, i32 0 }], [20 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 3998, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Apply rt5650 patch failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.40 = internal global ptr @rt5645_i2c_probe._entry.38, section ".printk_index", align 4
@rt5645_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&rt5645->btn_check_timer)\00", [37 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&rt5645->jack_detect_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&rt5645->jack_detect_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&rt5645->rcclock_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&rt5645->rcclock_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 4130, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reguest IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rt5645_i2c_probe._entry_ptr.52 = internal global ptr @rt5645_i2c_probe._entry.50, section ".printk_index", align 4
@soc_component_dev_rt5645 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5645_snd_controls, i32 23, ptr @rt5645_dapm_widgets, i32 144, ptr @rt5645_dapm_routes, i32 227, ptr @rt5645_probe, ptr @rt5645_remove, ptr @rt5645_suspend, ptr @rt5645_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5645_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.495, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.222, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.220, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.496, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.226, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.224, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"realtek,in2-differential\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"realtek,dmic1-data-pin\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"realtek,dmic2-data-pin\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"realtek,jd-mode\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpvdd\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nocache\00", [24 x i8] zeroinitializer }, align 32
@rt5645_reg = internal constant { [153 x %struct.reg_default], [312 x i8] } { [153 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 51400 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 10, i32 2 }, %struct.reg_default { i32 11, i32 10279 }, %struct.reg_default { i32 12, i32 57344 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 20, i32 13107 }, %struct.reg_default { i32 22, i32 19200 }, %struct.reg_default { i32 24, i32 395 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 1 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 39, i32 28768 }, %struct.reg_default { i32 40, i32 28784 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 22102 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 44, i32 43680 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 47, i32 4098 }, %struct.reg_default { i32 49, i32 20480 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 31 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 31 }, %struct.reg_default { i32 69, i32 24576 }, %struct.reg_default { i32 70, i32 62 }, %struct.reg_default { i32 71, i32 62 }, %struct.reg_default { i32 72, i32 63495 }, %struct.reg_default { i32 74, i32 4 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 511 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 511 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 86, i32 273 }, %struct.reg_default { i32 87, i32 100 }, %struct.reg_default { i32 88, i32 61198 }, %struct.reg_default { i32 89, i32 61680 }, %struct.reg_default { i32 90, i32 61198 }, %struct.reg_default { i32 91, i32 61680 }, %struct.reg_default { i32 92, i32 61198 }, %struct.reg_default { i32 93, i32 61680 }, %struct.reg_default { i32 94, i32 61440 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 97, i32 768 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 194 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 108, i32 2730 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 30576 }, %struct.reg_default { i32 116, i32 15872 }, %struct.reg_default { i32 117, i32 9225 }, %struct.reg_default { i32 118, i32 10 }, %struct.reg_default { i32 119, i32 3072 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 291 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 138, i32 288 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3078 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 512 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 154, i32 8580 }, %struct.reg_default { i32 155, i32 266 }, %struct.reg_default { i32 156, i32 2794 }, %struct.reg_default { i32 157, i32 12 }, %struct.reg_default { i32 158, i32 1024 }, %struct.reg_default { i32 160, i32 41128 }, %struct.reg_default { i32 161, i32 89 }, %struct.reg_default { i32 162, i32 1 }, %struct.reg_default { i32 174, i32 24576 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 24576 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 31 }, %struct.reg_default { i32 180, i32 524 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 12544 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 8192 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 6163 }, %struct.reg_default { i32 208, i32 1680 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 45856 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 214, i32 1024 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 3 }, %struct.reg_default { i32 220, i32 73 }, %struct.reg_default { i32 221, i32 27 }, %struct.reg_default { i32 223, i32 8 }, %struct.reg_default { i32 224, i32 16384 }, %struct.reg_default { i32 230, i32 32768 }, %struct.reg_default { i32 231, i32 512 }, %struct.reg_default { i32 236, i32 45824 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 240, i32 31 }, %struct.reg_default { i32 241, i32 524 }, %struct.reg_default { i32 242, i32 7936 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 16384 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 249, i32 0 }, %struct.reg_default { i32 250, i32 8288 }, %struct.reg_default { i32 251, i32 16448 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 2 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25352 }], [312 x i8] zeroinitializer }, align 32
@rt5645_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.79, i32 256, i32 504, i32 106, i32 255, i32 0, i32 108, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@rt5650_reg = internal constant { [154 x %struct.reg_default], [304 x i8] } { [154 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 51400 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 10, i32 2 }, %struct.reg_default { i32 11, i32 10279 }, %struct.reg_default { i32 12, i32 57344 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 20, i32 13107 }, %struct.reg_default { i32 22, i32 19200 }, %struct.reg_default { i32 24, i32 395 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 1 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 39, i32 28768 }, %struct.reg_default { i32 40, i32 28784 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 22102 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 44, i32 43680 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 47, i32 20482 }, %struct.reg_default { i32 49, i32 20480 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 31 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 31 }, %struct.reg_default { i32 69, i32 24576 }, %struct.reg_default { i32 70, i32 62 }, %struct.reg_default { i32 71, i32 62 }, %struct.reg_default { i32 72, i32 63495 }, %struct.reg_default { i32 74, i32 4 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 511 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 511 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 86, i32 273 }, %struct.reg_default { i32 87, i32 100 }, %struct.reg_default { i32 88, i32 61198 }, %struct.reg_default { i32 89, i32 61680 }, %struct.reg_default { i32 90, i32 61198 }, %struct.reg_default { i32 91, i32 61680 }, %struct.reg_default { i32 92, i32 61198 }, %struct.reg_default { i32 93, i32 61680 }, %struct.reg_default { i32 94, i32 61440 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 97, i32 768 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 194 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 108, i32 2730 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 30576 }, %struct.reg_default { i32 116, i32 15872 }, %struct.reg_default { i32 117, i32 9225 }, %struct.reg_default { i32 118, i32 10 }, %struct.reg_default { i32 119, i32 3072 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 291 }, %struct.reg_default { i32 122, i32 291 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 138, i32 288 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3078 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 512 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 154, i32 8580 }, %struct.reg_default { i32 155, i32 266 }, %struct.reg_default { i32 156, i32 2794 }, %struct.reg_default { i32 157, i32 12 }, %struct.reg_default { i32 158, i32 1024 }, %struct.reg_default { i32 160, i32 41128 }, %struct.reg_default { i32 161, i32 89 }, %struct.reg_default { i32 162, i32 1 }, %struct.reg_default { i32 174, i32 24576 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 24576 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 31 }, %struct.reg_default { i32 180, i32 524 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 12544 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 8192 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 6163 }, %struct.reg_default { i32 208, i32 1680 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 45856 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 214, i32 1024 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 3 }, %struct.reg_default { i32 220, i32 73 }, %struct.reg_default { i32 221, i32 27 }, %struct.reg_default { i32 223, i32 8 }, %struct.reg_default { i32 224, i32 16384 }, %struct.reg_default { i32 230, i32 32768 }, %struct.reg_default { i32 231, i32 512 }, %struct.reg_default { i32 236, i32 45824 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 240, i32 31 }, %struct.reg_default { i32 241, i32 524 }, %struct.reg_default { i32 242, i32 7936 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 16384 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 249, i32 0 }, %struct.reg_default { i32 250, i32 8288 }, %struct.reg_default { i32 251, i32 16448 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 2 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25352 }], [304 x i8] zeroinitializer }, align 32
@rt5645_jack_detect_work.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 3, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5645_jack_detect_work\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio_state = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rt5645_jack_detect_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 3334, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected button code 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5645_jack_detect_work._entry_ptr = internal global ptr @rt5645_jack_detect_work._entry, section ".printk_index", align 4
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mic Det Power\00", [18 x i8] zeroinitializer }, align 32
@rt5645_jack_detect.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 3, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5645_jack_detect\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"val = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC L power\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC R power\00", [20 x i8] zeroinitializer }, align 32
@rt5645_enable_push_button_irq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.89, ptr @.str.3, ptr @.str.90, i8 3, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rt5645_enable_push_button_irq\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s read %x = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@rt5645_button_detect.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 3, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5645_button_detect\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"val=0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@rt5645_snd_controls = internal constant { [23 x %struct.snd_kcontrol_new], [272 x i8] } { [23 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @rt5645_spk_put_volsw, %union.anon.96 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @spk_clsd_tlv }, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @rt5645_hweq_info, ptr @rt5645_hweq_get, ptr @rt5645_hweq_put, %union.anon.96 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac1_vol_ctrl_mode to i32) }], [272 x i8] zeroinitializer }, align 32
@rt5645_dapm_routes = internal constant { [227 x %struct.snd_soc_dapm_route], [2948 x i8] } { [227 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.149, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.150, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.151, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.144, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.145, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.143, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.286, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.288, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.290, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.292, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.294, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.296, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.298, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.290, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.292, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.302, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.163, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.164, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.163, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.164, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.163, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.164, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.307, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.306, ptr @.str.242, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.309, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.306, ptr @.str.242, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.309, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.306, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.307, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.306, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.307, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.240, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.240, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.309, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.241, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.309, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.307, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.241, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.316, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.318, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.316, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.318, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.316, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.318, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr @.str.316, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr @.str.318, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.328, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.329, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.330, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.198, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.199, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.197, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr @.str.214, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr @.str.214, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.331, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.333, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.331, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.333, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.214, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.340, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.197, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.214, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.340, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.342, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.237, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.345, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.349, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.347, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.349, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.345, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.352, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.345, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.347, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.352, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.349, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.352, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.347, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr null, ptr @.str.237, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.361, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.347, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.352, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.365, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.352, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.347, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.139, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr @.str.292, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr @.str.288, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr @.str.345, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr @.str.347, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr @.str.290, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr @.str.298, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr @.str.349, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr @.str.352, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr @.str.292, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr @.str.288, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr @.str.347, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr @.str.345, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.290, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.298, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.352, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.349, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.333, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.389, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.288, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.292, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.333, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.389, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.298, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.290, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr null, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr null, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr @.str.385, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr @.str.385, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.333, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.408, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr @.str.385, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr @.str.385, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.345, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.403, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.349, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.401, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.345, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.349, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.412, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.414, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr @.str.418, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr @.str.417, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.270, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr @.str.418, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr @.str.417, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.270, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.275, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.276, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr @.str.385, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr @.str.385, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.279, ptr null, ptr @.str.273, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.280, ptr null, ptr @.str.274, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr null, ptr @.str.269, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.282, ptr null, ptr @.str.269, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2948 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Speaker Channel Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 14, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 1, i32 1, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Speaker ClassD Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@spk_clsd_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 4, i32 1, i32 8, i32 -600, i32 150, i32 5, i32 5, i32 1, i32 8, i32 82, i32 0, i32 6, i32 6, i32 1, i32 8, i32 158, i32 0, i32 7, i32 7, i32 1, i32 8, i32 228, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 74, i32 74, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headphone Channel Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OUT Channel Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 14, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 3, i32 3, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 13, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 25, i32 25, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mono DAC Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 26, i32 26, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN1 Boost\00", [22 x i8] zeroinitializer }, align 32
@bst_tlv = internal constant { [44 x i32], [48 x i8] } { [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 10, i32 10, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN2 Boost\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IN Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 28, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mono ADC Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mono ADC Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 29, i32 29, i32 9, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC Boost Capture Volume\00", [39 x i8] zeroinitializer }, align 32
@adc_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mono ADC Boost Capture Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 32, i32 32, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I2S2 Func Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 192, i32 192, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Speaker HWEQ\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DAC1 Digital Volume Control Func\00", [63 x i8] zeroinitializer }, align 32
@rt5645_dac1_vol_ctrl_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 256, i8 6, i8 6, i32 3, i32 3, ptr @rt5645_dac1_vol_ctrl_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_dac1_vol_ctrl_mode_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138], [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"immediately\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zero crossing\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soft ramp\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"JD Power\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S1 ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S2 ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC STO ASRC\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC MONO L ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC MONO R ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC STO1 ASRC\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMIC MONO L ASRC\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMIC MONO R ASRC\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC STO1 ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC MONO L ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC MONO R ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"micbias1\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"micbias2\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L1\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R1\00", [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L2\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R2\00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1N\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2P\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2N\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Haptic Generator\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC1 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC2 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST1\00", [27 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST2\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INL VOL\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INR VOL\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXL\00", [24 x i8] zeroinitializer }, align 32
@rt5645_rec_l_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXR\00", [24 x i8] zeroinitializer }, align 32
@rt5645_rec_r_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.302, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 DMIC Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5645_sto1_dmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.304, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_stereo1_dmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5645_sto_adc2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.305, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_stereo1_adc2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R2 Mux\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5645_sto_adc1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.308, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_stereo1_adc1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R1 Mux\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono DMIC L Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5645_mono_dmic_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.310, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_dmic_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono DMIC R Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5645_mono_dmic_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.311, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_dmic_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC L2 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.312, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_l2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC L1 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.313, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_l1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC R1 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.314, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_r1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC R2 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_r2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc stereo1 filter\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5645_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.316, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.319 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5645_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.316, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adc mono left filter\00", [43 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.316, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.323 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adc mono right filter\00", [42 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.316, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sto2 ADC LR MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VAD_ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF_ADC1\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF_ADC2\00", [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC1\00", [23 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC2\00", [23 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC3\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC4\00", [23 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IF2 ADC Mux\00", [20 x i8] zeroinitializer }, align 32
@rt5645_if2_adc_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.326, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_if2_adc_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 DAC0\00", [23 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 DAC1\00", [23 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 DAC2\00", [23 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 DAC3\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF1 ADC L\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF1 ADC R\00", [22 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF2 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 DAC L\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 DAC R\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF2 ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VAD ADC Mux\00", [20 x i8] zeroinitializer }, align 32
@rt5645_vad_adc_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.327, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_vad_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2RX\00", [25 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXL\00", [22 x i8] zeroinitializer }, align 32
@rt5645_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.331, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.332 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXR\00", [22 x i8] zeroinitializer }, align 32
@rt5645_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.331, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.335 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.336 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC L2 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5645_dac_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac2l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC R2 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5645_dac_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac2r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC1 L Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5645_dac1l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac1l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC1 R Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5645_dac1r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac1r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dac stereo1 filter\00", [45 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dac mono left filter\00", [43 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dac mono right filter\00", [42 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXL\00", [16 x i8] zeroinitializer }, align 32
@rt5645_sto_dac_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXR\00", [16 x i8] zeroinitializer }, align 32
@rt5645_sto_dac_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.353 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.354 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono DAC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5645_mono_dac_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.355 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.356 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.357 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono DAC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5645_mono_dac_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.358 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.359 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.360 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5645_dig_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.363 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5645_dig_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.365, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.367 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.368 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L2\00", [25 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R2\00", [25 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPK MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5645_spk_l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.369 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPK MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5645_spk_r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.373 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.374 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.376 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5645_out_l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.377 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.378 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.379 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.380 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5645_out_r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.381 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.382 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.383 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.384 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPKVOL L\00", [23 x i8] zeroinitializer }, align 32
@spk_l_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.385, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPKVOL R\00", [23 x i8] zeroinitializer }, align 32
@spk_r_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.385, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOVOL MIXL\00", [20 x i8] zeroinitializer }, align 32
@rt5645_hpvoll_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.389, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.391 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.392 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOVOL MIXR\00", [20 x i8] zeroinitializer }, align 32
@rt5645_hpvolr_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.393 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.389, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.394 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.395 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.396 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPOVOL MIXL Power\00", [46 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HPOVOL MIXR Power\00", [46 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 1\00", [26 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 2\00", [26 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOVOL\00", [25 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOVOL L\00", [23 x i8] zeroinitializer }, align 32
@hp_l_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.385, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.397 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPOVOL R\00", [23 x i8] zeroinitializer }, align 32
@hp_r_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.385, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.398 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPOL MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5645_spo_l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.399 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.400 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.401, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.402 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.403, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.404 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPOR MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5645_spo_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.405 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.401, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.406 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPO MIX\00", [24 x i8] zeroinitializer }, align 32
@rt5645_hpo_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.407 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.408, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.409 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5645_lout_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.410 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.411 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.412, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.413 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.414, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.415 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP amp\00", [25 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT amp\00", [23 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPK amp\00", [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM1 Power\00", [21 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM1 L Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5645_pdm1_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.416, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_pdm1_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM1 R Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5645_pdm1_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.419, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_pdm1_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDM1 L\00", [25 x i8] zeroinitializer }, align 32
@pdm1_l_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.385, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.420 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDM1 R\00", [25 x i8] zeroinitializer }, align 32
@pdm1_r_vol_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.385, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.421 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTR\00", [26 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDM1L\00", [26 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDM1R\00", [26 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPOR\00", [27 x i8] zeroinitializer }, align 32
@rt5645_dapm_widgets = internal constant { [144 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [6464 x i8] } { [144 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rt5645_set_micbias1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rt5645_set_micbias2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5645_bst2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5645_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5645_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto1_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_dmic_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_dmic_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_mono_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_mono_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if2_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_vad_adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.219, ptr @.str.220, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.221, ptr @.str.222, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.223, ptr @.str.224, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.225, ptr @.str.226, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac1l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac1r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.240, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_mono_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_mono_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.242, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_dig_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_dig_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.244, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.245, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.246, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.247, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_spk_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_spk_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_hpvoll_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_hpvolr_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.261, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.262, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.263, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_spo_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.264, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_spo_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.267, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5645_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.268, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5645_lout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.269, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 6, ptr @rt5645_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.270, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.271, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_pdm1_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.272, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_pdm1_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.273, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pdm1_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.274, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pdm1_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.275, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.276, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.277, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.278, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.279, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.280, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.281, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.282, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [6464 x i8] zeroinitializer }, align 32
@set_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.285, ptr @.str.3, i32 882, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set DMIC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_dmic_clk\00", [19 x i8] zeroinitializer }, align 32
@set_dmic_clk._entry_ptr = internal global ptr @set_dmic_clk._entry, section ".printk_index", align 4
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INL Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUT MIXL Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INR Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUT MIXR Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo1 DMIC source\00", [44 x i8] zeroinitializer }, align 32
@rt5645_stereo1_dmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 8, i8 8, i32 2, i32 1, ptr @rt5645_stereo_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_stereo_dmic_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.163, ptr @.str.164], [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC2 Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5645_stereo1_adc2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 11, i8 11, i32 2, i32 1, ptr @rt5645_stereo_adc2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_stereo_adc2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.306, ptr @.str.307], [24 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC MIX\00", [24 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC1 Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5645_stereo1_adc1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 12, i8 12, i32 2, i32 1, ptr @rt5645_stereo_adc1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_stereo_adc1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.306, ptr @.str.309], [24 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mono DMIC left source\00", [42 x i8] zeroinitializer }, align 32
@rt5645_mono_dmic_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 8, i8 8, i32 2, i32 1, ptr @rt5645_mono_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_mono_dmic_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.163, ptr @.str.164], [24 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono DMIC Right source\00", [41 x i8] zeroinitializer }, align 32
@rt5645_mono_dmic_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 0, i8 0, i32 2, i32 1, ptr @rt5645_mono_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mono ADC2 left source\00", [42 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 11, i8 11, i32 2, i32 1, ptr @rt5645_mono_adc_l2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.240, ptr @.str.307], [24 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mono ADC1 left source\00", [42 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 12, i8 12, i32 2, i32 1, ptr @rt5645_mono_adc_l1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_l1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.240, ptr @.str.309], [24 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono ADC1 right source\00", [41 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 4, i8 4, i32 2, i32 1, ptr @rt5645_mono_adc_r1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.241, ptr @.str.309], [24 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono ADC2 right source\00", [41 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 3, i8 3, i32 2, i32 1, ptr @rt5645_mono_adc_r2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_mono_adc_r2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.241, ptr @.str.307], [24 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.320 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IF2 ADC IN source\00", [46 x i8] zeroinitializer }, align 32
@rt5645_if2_adc_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 12, i8 12, i32 3, i32 3, ptr @rt5645_if2_adc_in_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_if2_adc_in_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.198, ptr @.str.199, ptr @.str.197], [20 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VAD ADC source\00", [17 x i8] zeroinitializer }, align 32
@rt5645_vad_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 157, i8 8, i8 8, i32 3, i32 3, ptr @rt5645_vad_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_vad_adc_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330], [20 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sto1 ADC L\00", [21 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono ADC L\00", [21 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono ADC R\00", [21 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo ADC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.332 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.334 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.335 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.336 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC2 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5645_dac2l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 27, i8 4, i8 4, i32 5, i32 7, ptr @rt5645_dac12_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_dac12_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.338, ptr @.str.214, ptr @.str.339, ptr @.str.340, ptr @.str.197], [44 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF3 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC2 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5645_dac2r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 27, i8 0, i8 0, i32 5, i32 7, ptr @rt5645_dacr2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_dacr2_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.338, ptr @.str.214, ptr @.str.339, ptr @.str.340, ptr @.str.342], [44 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Haptic\00", [25 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC1 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5645_dac1l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 8, i8 8, i32 3, i32 3, ptr @rt5645_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_dac1_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.338, ptr @.str.214, ptr @.str.339], [20 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC1 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5645_dac1r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 10, i8 10, i32 3, i32 3, ptr @rt5645_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.350 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.354 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.355 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.356 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.358 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.359 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sto DAC Mix L Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.362 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.364 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sto DAC Mix R Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.368 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.372 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.374 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.376 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.378 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.380 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.382 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 15, i32 15, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 7, i32 7, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.392 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.394 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.396 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.397 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 15, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.398 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 7, i32 7, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.399 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.400 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPKVOL R Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.402 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPKVOL L Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.404 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.405 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.406 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.407 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HPVOL Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.409 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.410 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.411 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTMIX L Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.413 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTMIX R Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.415 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@hp_amp_power.hp_amp_power_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.416 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDM1 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5645_pdm1_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 15, i8 15, i32 2, i32 1, ptr @rt5645_pdm_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_pdm_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.417, ptr @.str.418], [24 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Stereo DAC\00", [21 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDM1 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5645_pdm1_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 13, i8 13, i32 2, i32 1, ptr @rt5645_pdm_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.420 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 16384, i32 16384, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.421 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 4096, i32 4096, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@rt5645_specific_dapm_routes = internal constant { [44 x %struct.snd_soc_dapm_route], [560 x i8] } { [44 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.427, ptr @.str.445, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.427, ptr @.str.446, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.427, ptr @.str.447, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.427, ptr @.str.448, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.428, ptr @.str.445, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.428, ptr @.str.446, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.428, ptr @.str.447, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.428, ptr @.str.448, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.429, ptr @.str.445, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.429, ptr @.str.446, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.429, ptr @.str.447, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.429, ptr @.str.448, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.427, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.428, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.429, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.426, ptr @.str.440, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.426, ptr @.str.441, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.426, ptr @.str.442, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.426, ptr @.str.443, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.426, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.424, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.424, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.424, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.424, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.425, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.425, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.425, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.425, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr @.str.338, ptr @.str.422, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr @.str.338, ptr @.str.423, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.338, ptr @.str.424, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.338, ptr @.str.425, ptr null, %struct.snd_soc_dobj zeroinitializer }], [560 x i8] zeroinitializer }, align 32
@rt5645_old_dapm_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.349, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.401, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@rt5650_specific_dapm_routes = internal constant { [72 x %struct.snd_soc_dapm_route], [928 x i8] } { [72 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.451, ptr @.str.465, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.451, ptr @.str.466, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.452, ptr @.str.465, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.452, ptr @.str.466, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.453, ptr @.str.466, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.453, ptr @.str.469, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.454, ptr @.str.466, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.454, ptr @.str.469, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.451, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.452, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.453, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.454, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.445, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.446, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.447, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.455, ptr @.str.448, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.456, ptr @.str.445, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.456, ptr @.str.446, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.456, ptr @.str.447, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.456, ptr @.str.448, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.457, ptr @.str.445, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.457, ptr @.str.446, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.457, ptr @.str.447, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.457, ptr @.str.448, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.455, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.456, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.457, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.471, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.472, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.473, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.474, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.475, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.476, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.477, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.478, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.479, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.480, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.481, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.482, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.483, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.484, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.485, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.486, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.487, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.488, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.489, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.490, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.491, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.492, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.493, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.458, ptr @.str.494, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.458, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.459, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.459, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.459, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.459, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.460, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.460, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.460, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.460, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.461, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.461, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.461, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.461, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.462, ptr @.str.432, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.462, ptr @.str.433, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.462, ptr @.str.434, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.462, ptr @.str.435, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr @.str.338, ptr @.str.459, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr @.str.338, ptr @.str.460, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.338, ptr @.str.461, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.338, ptr @.str.462, ptr null, %struct.snd_soc_dobj zeroinitializer }], [928 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5645 IF1 DAC1 L Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5645_if1_dac0_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.431, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5645 IF1 DAC1 R Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5645_if1_dac1_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.436, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5645 IF1 DAC2 L Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5645_if1_dac2_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.437, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5645 IF1 DAC2 R Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5645_if1_dac3_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.438, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RT5645 IF1 ADC Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5645_if1_adc_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.439, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_if1_adc_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT5645 IF1 ADC1 Swap Mux\00", [39 x i8] zeroinitializer }, align 32
@rt5645_if1_adc1_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.444, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_adc_slot0_1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT5645 IF1 ADC2 Swap Mux\00", [39 x i8] zeroinitializer }, align 32
@rt5645_if1_adc2_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.449, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_adc_slot2_3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT5645 IF1 ADC3 Swap Mux\00", [39 x i8] zeroinitializer }, align 32
@rt5645_if1_adc3_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.450, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_adc_slot4_5_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@rt5645_specific_dapm_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.422, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac0_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.423, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac1_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.424, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac2_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.425, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac3_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.426, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.427, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc1_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.428, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc2_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.429, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc3_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF1 DAC0 source\00", [16 x i8] zeroinitializer }, align 32
@rt5645_tdm_dac0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 121, i8 12, i8 12, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_tdm_dac_swap_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435], [16 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot0\00", [26 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot1\00", [26 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot2\00", [26 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot3\00", [26 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF1 DAC1 source\00", [16 x i8] zeroinitializer }, align 32
@rt5645_tdm_dac1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 121, i8 8, i8 8, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF1 DAC2 source\00", [16 x i8] zeroinitializer }, align 32
@rt5645_tdm_dac2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 121, i8 4, i8 4, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF1 DAC3 source\00", [16 x i8] zeroinitializer }, align 32
@rt5645_tdm_dac3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 121, i8 0, i8 0, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IF1 ADC IN source\00", [46 x i8] zeroinitializer }, align 32
@rt5645_if1_adc_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 119, i8 8, i8 8, i32 4, i32 3, ptr @rt5645_if1_adc_in_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_if1_adc_in_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443], [16 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IF_ADC1/IF_ADC2/VAD_ADC\00", [40 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IF_ADC2/IF_ADC1/VAD_ADC\00", [40 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VAD_ADC/IF_ADC1/IF_ADC2\00", [40 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VAD_ADC/IF_ADC2/IF_ADC1\00", [40 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IF1 ADC1 IN source\00", [45 x i8] zeroinitializer }, align 32
@rt5645_tdm_adc_slot0_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 119, i8 6, i8 6, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5645_tdm_adc_swap_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448], [16 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/R\00", [28 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/L\00", [28 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/L\00", [28 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/R\00", [28 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IF1 ADC2 IN source\00", [45 x i8] zeroinitializer }, align 32
@rt5645_tdm_adc_slot2_3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 119, i8 4, i8 4, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IF1 ADC3 IN source\00", [45 x i8] zeroinitializer }, align 32
@rt5645_tdm_adc_slot4_5_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 119, i8 2, i8 2, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A DAC1 L Mux\00", [19 x i8] zeroinitializer }, align 32
@rt5650_a_dac1_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.464, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac1_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A DAC1 R Mux\00", [19 x i8] zeroinitializer }, align 32
@rt5650_a_dac1_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.467, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac1_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A DAC2 L Mux\00", [19 x i8] zeroinitializer }, align 32
@rt5650_a_dac2_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.468, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac2_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A DAC2 R Mux\00", [19 x i8] zeroinitializer }, align 32
@rt5650_a_dac2_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.470, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac2_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT5650 IF1 ADC1 Swap Mux\00", [39 x i8] zeroinitializer }, align 32
@rt5650_if1_adc1_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.444, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_adc_slot0_1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT5650 IF1 ADC2 Swap Mux\00", [39 x i8] zeroinitializer }, align 32
@rt5650_if1_adc2_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.449, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_adc_slot2_3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT5650 IF1 ADC3 Swap Mux\00", [39 x i8] zeroinitializer }, align 32
@rt5650_if1_adc3_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.450, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_adc_slot4_5_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RT5650 IF1 ADC Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5650_if1_adc_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.439, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_if1_adc_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.459 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5650 IF1 DAC1 L Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5650_if1_dac0_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.431, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5650 IF1 DAC1 R Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5650_if1_dac1_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.436, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5650 IF1 DAC2 L Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5650_if1_dac2_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.437, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RT5650 IF1 DAC2 R Mux\00", [42 x i8] zeroinitializer }, align 32
@rt5650_if1_dac3_tdm_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.438, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@rt5650_specific_dapm_widgets = internal constant { [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [528 x i8] } { [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.451, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac1_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.452, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac1_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.453, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac2_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.454, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac2_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.455, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc1_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.456, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc2_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.457, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc3_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.458, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.459, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac0_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.460, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac1_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.461, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac2_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.462, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac3_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [528 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A DAC1 L source\00", [16 x i8] zeroinitializer }, align 32
@rt5650_a_dac1_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 3, i8 3, i32 2, i32 1, ptr @rt5650_a_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_a_dac1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.465, ptr @.str.466], [24 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo DAC Mixer\00", [47 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A DAC1 R source\00", [16 x i8] zeroinitializer }, align 32
@rt5650_a_dac1_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 2, i8 2, i32 2, i32 1, ptr @rt5650_a_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A DAC2 L source\00", [16 x i8] zeroinitializer }, align 32
@rt5650_a_dac2_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 1, i8 1, i32 2, i32 1, ptr @rt5650_a_dac2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_a_dac2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.466, ptr @.str.469], [24 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mono DAC Mixer\00", [17 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A DAC2 R source\00", [16 x i8] zeroinitializer }, align 32
@rt5650_a_dac2_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 0, i8 0, i32 2, i32 1, ptr @rt5650_a_dac2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_tdm_adc_slot0_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 120, i8 14, i8 14, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_tdm_adc_slot2_3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 120, i8 12, i8 12, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_tdm_adc_slot4_5_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 120, i8 10, i8 10, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_if1_adc_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 120, i8 0, i8 0, i32 24, i32 31, ptr @rt5650_if1_adc_in_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_if1_adc_in_src = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494], [32 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC1/IF_ADC2/DAC_REF/Null\00", [35 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC1/IF_ADC2/Null/DAC_REF\00", [35 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC1/DAC_REF/IF_ADC2/Null\00", [35 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC1/DAC_REF/Null/IF_ADC2\00", [35 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC1/Null/DAC_REF/IF_ADC2\00", [35 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC1/Null/IF_ADC2/DAC_REF\00", [35 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC2/IF_ADC1/DAC_REF/Null\00", [35 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC2/IF_ADC1/Null/DAC_REF\00", [35 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC2/DAC_REF/IF_ADC1/Null\00", [35 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC2/DAC_REF/Null/IF_ADC1\00", [35 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC2/Null/DAC_REF/IF_ADC1\00", [35 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IF_ADC2/Null/IF_ADC1/DAC_REF\00", [35 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC_REF/IF_ADC1/IF_ADC2/Null\00", [35 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC_REF/IF_ADC1/Null/IF_ADC2\00", [35 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC_REF/IF_ADC2/IF_ADC1/Null\00", [35 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC_REF/IF_ADC2/Null/IF_ADC1\00", [35 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC_REF/Null/IF_ADC1/IF_ADC2\00", [35 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC_REF/Null/IF_ADC2/IF_ADC1\00", [35 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Null/IF_ADC1/IF_ADC2/DAC_REF\00", [35 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Null/IF_ADC1/DAC_REF/IF_ADC2\00", [35 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Null/IF_ADC2/IF_ADC1/DAC_REF\00", [35 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Null/IF_ADC2/DAC_REF/IF_ADC1\00", [35 x i8] zeroinitializer }, align 32
@.str.493 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Null/DAC_REF/IF_ADC1/IF_ADC2\00", [35 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Null/DAC_REF/IF_ADC2/IF_ADC1\00", [35 x i8] zeroinitializer }, align 32
@rt5650_tdm_dac0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 12, i8 12, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_tdm_dac1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 8, i8 8, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_tdm_dac2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 4, i8 4, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5650_tdm_dac3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 122, i8 0, i8 0, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5645-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5645_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rt5645_set_dai_sysclk, ptr @rt5645_set_dai_pll, ptr null, ptr null, ptr @rt5645_set_dai_fmt, ptr null, ptr @rt5645_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.496 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5645-aif2\00", [20 x i8] zeroinitializer }, align 32
@rt5645_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.497, ptr @.str.498, ptr @.str.3, i32 2909, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5645_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@rt5645_set_dai_sysclk._entry_ptr = internal global ptr @rt5645_set_dai_sysclk._entry, section ".printk_index", align 4
@rt5645_set_dai_sysclk.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.498, ptr @.str.3, ptr @.str.499, i8 2, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.499 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt5645_set_dai_pll.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.500, ptr @.str.3, ptr @.str.501, i8 2, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.500 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5645_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5645_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.502, ptr @.str.500, ptr @.str.3, i32 2961, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid dai->id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5645_set_dai_pll._entry_ptr = internal global ptr @rt5645_set_dai_pll._entry, section ".printk_index", align 4
@rt5645_set_dai_pll._entry.503 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.504, ptr @.str.500, ptr @.str.3, i32 2966, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5645_set_dai_pll._entry_ptr.505 = internal global ptr @rt5645_set_dai_pll._entry.503, section ".printk_index", align 4
@rt5645_set_dai_pll._entry.506 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.507, ptr @.str.500, ptr @.str.3, i32 2972, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5645_set_dai_pll._entry_ptr.508 = internal global ptr @rt5645_set_dai_pll._entry.506, section ".printk_index", align 4
@rt5645_set_dai_pll.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.500, ptr @.str.3, ptr @.str.509, i8 2, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.509 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5645_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.502, ptr @.str.510, ptr @.str.3, i32 2882, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5645_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@rt5645_set_dai_fmt._entry_ptr = internal global ptr @rt5645_set_dai_fmt._entry, section ".printk_index", align 4
@rt5645_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.511, ptr @.str.512, ptr @.str.3, i32 2752, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.511 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported clock setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5645_hw_params\00", [47 x i8] zeroinitializer }, align 32
@rt5645_hw_params._entry_ptr = internal global ptr @rt5645_hw_params._entry, section ".printk_index", align 4
@rt5645_hw_params._entry.513 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.514, ptr @.str.512, ptr @.str.3, i32 2757, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.514 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5645_hw_params._entry_ptr.515 = internal global ptr @rt5645_hw_params._entry.513, section ".printk_index", align 4
@rt5645_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.512, ptr @.str.3, ptr @.str.516, i8 2, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.516 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5645_hw_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.512, ptr @.str.3, ptr @.str.517, i8 2, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.517 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rt5645_hw_params._entry.518 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.502, ptr @.str.512, ptr @.str.3, i32 2811, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt5645_hw_params._entry_ptr.519 = internal global ptr @rt5645_hw_params._entry.518, section ".printk_index", align 4
@switch.table.rt5645_i2c_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.is_using_asrc = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 133, i32 133, i32 133, i32 132, i32 133, i32 133, i32 133, i32 133, i32 132, i32 132, i32 132], [52 x i8] zeroinitializer }, align 32
@switch.table.is_using_asrc.520 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 8, i32 12], [52 x i8] zeroinitializer }, align 32
@switch.table.rt5645_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 0, i32 0, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.521 = internal global [4 x i64] [i64 2, i64 32, i64 25352, i64 25625]
@__sancov_gen_cov_switch_values.522 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.523 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.524 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.525 = internal global [15 x i64] [i64 13, i64 16, i64 0, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.526 = internal global [139 x i64] [i64 137, i64 32, i64 0, i64 1, i64 2, i64 3, i64 10, i64 11, i64 12, i64 13, i64 15, i64 20, i64 22, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 47, i64 49, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 69, i64 70, i64 71, i64 72, i64 74, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 106, i64 108, i64 112, i64 113, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 138, i64 142, i64 143, i64 144, i64 145, i64 147, i64 148, i64 157, i64 160, i64 174, i64 175, i64 176, i64 177, i64 179, i64 180, i64 181, i64 182, i64 183, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 207, i64 208, i64 209, i64 211, i64 212, i64 214, i64 217, i64 218, i64 219, i64 220, i64 221, i64 223, i64 224, i64 231, i64 233, i64 236, i64 237, i64 240, i64 241, i64 242, i64 243, i64 244, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.527 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 10, i64 11, i64 12, i64 106, i64 108, i64 148, i64 174, i64 176, i64 179, i64 189, i64 190, i64 191, i64 219, i64 223, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.528 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.529 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.530 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 177]
@__sancov_gen_cov_switch_values.531 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.532 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.533 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.534 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.535 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.536 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.537 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.538 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.539 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.540 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.541 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.542 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.543 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.544 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.545 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.546 = private unnamed_addr constant [6 x i8] c"quirk\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 42, i32 21 }
@___asan_gen_.549 = private unnamed_addr constant [18 x i8] c"rt5645_i2c_driver\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 4180, i32 26 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 4182, i32 11 }
@___asan_gen_.555 = private unnamed_addr constant [16 x i8] c"rt5645_of_match\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3592, i32 34 }
@___asan_gen_.558 = private unnamed_addr constant [14 x i8] c"rt5645_i2c_id\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3584, i32 35 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3878, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant [23 x i8] c"jd_mode3_platform_data\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3651, i32 42 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3902, i32 5 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3910, i32 60 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3914, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3931, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3938, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant [12 x i8] c"temp_regmap\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3574, i32 35 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3942, i32 11 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3945, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant [14 x i8] c"rt5645_regmap\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3540, i32 35 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3959, i32 20 }
@___asan_gen_.633 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [14 x i8] c"rt5650_regmap\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3557, i32 35 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3963, i32 20 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3967, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3976, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant [10 x i8] c"init_list\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 73, i32 34 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3991, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant [17 x i8] c"rt5650_init_list\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 82, i32 34 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3997, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 4120, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 4122, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 4123, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 4130, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5645\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3523, i32 46 }
@___asan_gen_.714 = private unnamed_addr constant [11 x i8] c"rt5645_dai\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3482, i32 34 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3835, i32 35 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3836, i32 35 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3837, i32 35 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3838, i32 35 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 410, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 411, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3575, i32 8 }
@___asan_gen_.738 = private unnamed_addr constant [11 x i8] c"rt5645_reg\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 86, i32 33 }
@___asan_gen_.741 = private unnamed_addr constant [14 x i8] c"rt5645_ranges\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 60, i32 38 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 62, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant [11 x i8] c"rt5650_reg\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 242, i32 33 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3276, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3332, i32 5 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3157, i32 39 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3158, i32 39 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3184, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3125, i32 39 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3126, i32 39 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3135, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3230, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [20 x i8] c"rt5645_snd_controls\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 792, i32 38 }
@___asan_gen_.795 = private unnamed_addr constant [19 x i8] c"rt5645_dapm_routes\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2306, i32 40 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 794, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 796, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 664, i32 14 }
@___asan_gen_.808 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 801, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [13 x i8] c"spk_clsd_tlv\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 682, i32 14 }
@___asan_gen_.815 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 805, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 807, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 811, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 813, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 815, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 819, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 821, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 665, i32 14 }
@___asan_gen_.846 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 823, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 827, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [8 x i8] c"bst_tlv\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 671, i32 14 }
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 829, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 833, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 666, i32 14 }
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 837, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 839, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 667, i32 14 }
@___asan_gen_.879 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 841, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 843, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 847, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant [12 x i8] c"adc_bst_tlv\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 668, i32 14 }
@___asan_gen_.894 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 850, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 855, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 857, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 860, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant [26 x i8] c"rt5645_dac1_vol_ctrl_mode\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 788, i32 8 }
@___asan_gen_.912 = private unnamed_addr constant [31 x i8] c"rt5645_dac1_vol_ctrl_mode_text\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 784, i32 27 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 785, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 785, i32 17 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 785, i32 34 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1973, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1976, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1982, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1984, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1986, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1988, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1990, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1992, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1994, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1996, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1998, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2000, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2002, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2007, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2010, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2014, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2015, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2016, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2017, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2019, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2020, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2021, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2022, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2024, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2026, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2027, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2028, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2030, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2032, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2035, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2037, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2041, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2043, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2046, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant [17 x i8] c"rt5645_rec_l_mix\00", align 1
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1146, i32 38 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2048, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant [17 x i8] c"rt5645_rec_r_mix\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1159, i32 38 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2051, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2052, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2060, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant [21 x i8] c"rt5645_sto1_dmic_mux\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1350, i32 38 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2062, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant [20 x i8] c"rt5645_sto_adc2_mux\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1338, i32 38 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2064, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2066, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant [20 x i8] c"rt5645_sto_adc1_mux\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1326, i32 38 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2068, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2070, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant [23 x i8] c"rt5645_mono_dmic_l_mux\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1386, i32 38 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2072, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [23 x i8] c"rt5645_mono_dmic_r_mux\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1393, i32 38 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2074, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_l2_mux\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1374, i32 38 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2076, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_l1_mux\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1363, i32 38 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2078, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_r1_mux\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1404, i32 38 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2080, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_r2_mux\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1415, i32 38 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2084, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2086, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant [22 x i8] c"rt5645_sto1_adc_l_mix\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1049, i32 38 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2089, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant [22 x i8] c"rt5645_sto1_adc_r_mix\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1056, i32 38 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2092, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2094, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [22 x i8] c"rt5645_mono_adc_l_mix\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1063, i32 38 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2097, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2099, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant [22 x i8] c"rt5645_mono_adc_r_mix\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1070, i32 38 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2104, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2105, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2106, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2107, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2108, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2109, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2110, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2111, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2112, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2113, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2116, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant [22 x i8] c"rt5645_if2_adc_in_mux\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1612, i32 38 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2120, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2122, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2123, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2124, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2125, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2126, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2127, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2128, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2129, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2131, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2132, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2133, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2134, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2137, i32 2 }
@___asan_gen_.1212 = private unnamed_addr constant [19 x i8] c"rt5645_vad_adc_mux\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1643, i32 38 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2141, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2142, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2143, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2144, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2148, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant [17 x i8] c"rt5645_dac_l_mix\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1077, i32 38 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2150, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant [17 x i8] c"rt5645_dac_r_mix\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1084, i32 38 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2154, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant [18 x i8] c"rt5645_dac_l2_mux\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1302, i32 38 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2155, i32 2 }
@___asan_gen_.1260 = private unnamed_addr constant [18 x i8] c"rt5645_dac_r2_mux\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1313, i32 38 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2156, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2158, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2161, i32 2 }
@___asan_gen_.1272 = private unnamed_addr constant [17 x i8] c"rt5645_dac1l_mux\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1283, i32 38 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2162, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant [17 x i8] c"rt5645_dac1r_mux\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1290, i32 38 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2165, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2167, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2169, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2171, i32 2 }
@___asan_gen_.1293 = private unnamed_addr constant [21 x i8] c"rt5645_sto_dac_l_mix\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1091, i32 38 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2173, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant [21 x i8] c"rt5645_sto_dac_r_mix\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1100, i32 38 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2175, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant [22 x i8] c"rt5645_mono_dac_l_mix\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1109, i32 38 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2177, i32 2 }
@___asan_gen_.1311 = private unnamed_addr constant [22 x i8] c"rt5645_mono_dac_r_mix\00", align 1
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1118, i32 38 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2179, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant [17 x i8] c"rt5645_dig_l_mix\00", align 1
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1127, i32 38 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2181, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant [17 x i8] c"rt5645_dig_r_mix\00", align 1
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1136, i32 38 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2185, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2187, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2189, i32 2 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2191, i32 2 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2194, i32 2 }
@___asan_gen_.1341 = private unnamed_addr constant [17 x i8] c"rt5645_spk_l_mix\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1172, i32 38 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2196, i32 2 }
@___asan_gen_.1347 = private unnamed_addr constant [17 x i8] c"rt5645_spk_r_mix\00", align 1
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1183, i32 38 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2198, i32 2 }
@___asan_gen_.1353 = private unnamed_addr constant [17 x i8] c"rt5645_out_l_mix\00", align 1
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1194, i32 38 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2200, i32 2 }
@___asan_gen_.1359 = private unnamed_addr constant [17 x i8] c"rt5645_out_r_mix\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1205, i32 38 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2203, i32 2 }
@___asan_gen_.1365 = private unnamed_addr constant [18 x i8] c"spk_l_vol_control\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1646, i32 38 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2205, i32 2 }
@___asan_gen_.1371 = private unnamed_addr constant [18 x i8] c"spk_r_vol_control\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1650, i32 38 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2207, i32 2 }
@___asan_gen_.1377 = private unnamed_addr constant [18 x i8] c"rt5645_hpvoll_mix\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1241, i32 38 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2209, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant [18 x i8] c"rt5645_hpvolr_mix\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1252, i32 38 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2211, i32 2 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2213, i32 2 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2215, i32 2 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2216, i32 2 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2217, i32 2 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2218, i32 2 }
@___asan_gen_.1404 = private unnamed_addr constant [17 x i8] c"hp_l_vol_control\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1654, i32 38 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2219, i32 2 }
@___asan_gen_.1410 = private unnamed_addr constant [17 x i8] c"hp_r_vol_control\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1658, i32 38 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2222, i32 2 }
@___asan_gen_.1416 = private unnamed_addr constant [17 x i8] c"rt5645_spo_l_mix\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1216, i32 38 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2224, i32 2 }
@___asan_gen_.1422 = private unnamed_addr constant [17 x i8] c"rt5645_spo_r_mix\00", align 1
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1227, i32 38 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2226, i32 2 }
@___asan_gen_.1428 = private unnamed_addr constant [15 x i8] c"rt5645_hpo_mix\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1234, i32 38 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2228, i32 2 }
@___asan_gen_.1434 = private unnamed_addr constant [16 x i8] c"rt5645_lout_mix\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1263, i32 38 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2231, i32 2 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2233, i32 2 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2235, i32 2 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2239, i32 2 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2241, i32 2 }
@___asan_gen_.1452 = private unnamed_addr constant [18 x i8] c"rt5645_pdm1_l_mux\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1624, i32 38 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2242, i32 2 }
@___asan_gen_.1458 = private unnamed_addr constant [18 x i8] c"rt5645_pdm1_r_mux\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1631, i32 38 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2244, i32 2 }
@___asan_gen_.1464 = private unnamed_addr constant [19 x i8] c"pdm1_l_vol_control\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1662, i32 38 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2245, i32 2 }
@___asan_gen_.1470 = private unnamed_addr constant [19 x i8] c"pdm1_r_vol_control\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1666, i32 38 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2248, i32 2 }
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2249, i32 2 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2250, i32 2 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2251, i32 2 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2252, i32 2 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2253, i32 2 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2254, i32 2 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2255, i32 2 }
@___asan_gen_.1497 = private unnamed_addr constant [20 x i8] c"rt5645_dapm_widgets\00", align 1
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1970, i32 41 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 882, i32 3 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1147, i32 2 }
@___asan_gen_.1512 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1149, i32 2 }
@___asan_gen_.1516 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1151, i32 2 }
@___asan_gen_.1520 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1153, i32 2 }
@___asan_gen_.1524 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1155, i32 2 }
@___asan_gen_.1528 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1160, i32 2 }
@___asan_gen_.1532 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1162, i32 2 }
@___asan_gen_.1536 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1538 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1168, i32 2 }
@___asan_gen_.1542 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1351, i32 2 }
@___asan_gen_.1546 = private unnamed_addr constant [25 x i8] c"rt5645_stereo1_dmic_enum\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1346, i32 8 }
@___asan_gen_.1549 = private unnamed_addr constant [23 x i8] c"rt5645_stereo_dmic_src\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1342, i32 27 }
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1339, i32 2 }
@___asan_gen_.1555 = private unnamed_addr constant [25 x i8] c"rt5645_stereo1_adc2_enum\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1334, i32 8 }
@___asan_gen_.1558 = private unnamed_addr constant [23 x i8] c"rt5645_stereo_adc2_src\00", align 1
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1330, i32 27 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1331, i32 2 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1331, i32 13 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1327, i32 2 }
@___asan_gen_.1570 = private unnamed_addr constant [25 x i8] c"rt5645_stereo1_adc1_enum\00", align 1
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1322, i32 8 }
@___asan_gen_.1573 = private unnamed_addr constant [23 x i8] c"rt5645_stereo_adc1_src\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1318, i32 27 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1319, i32 13 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1387, i32 2 }
@___asan_gen_.1582 = private unnamed_addr constant [24 x i8] c"rt5645_mono_dmic_l_enum\00", align 1
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1382, i32 8 }
@___asan_gen_.1585 = private unnamed_addr constant [21 x i8] c"rt5645_mono_dmic_src\00", align 1
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1378, i32 27 }
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1394, i32 2 }
@___asan_gen_.1591 = private unnamed_addr constant [24 x i8] c"rt5645_mono_dmic_r_enum\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1389, i32 8 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1375, i32 2 }
@___asan_gen_.1597 = private unnamed_addr constant [24 x i8] c"rt5645_mono_adc_l2_enum\00", align 1
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1370, i32 8 }
@___asan_gen_.1600 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_l2_src\00", align 1
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1366, i32 27 }
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1364, i32 2 }
@___asan_gen_.1606 = private unnamed_addr constant [24 x i8] c"rt5645_mono_adc_l1_enum\00", align 1
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1359, i32 8 }
@___asan_gen_.1609 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_l1_src\00", align 1
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1355, i32 27 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1405, i32 2 }
@___asan_gen_.1615 = private unnamed_addr constant [24 x i8] c"rt5645_mono_adc_r1_enum\00", align 1
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1400, i32 8 }
@___asan_gen_.1618 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_r1_src\00", align 1
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1396, i32 27 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1416, i32 2 }
@___asan_gen_.1624 = private unnamed_addr constant [24 x i8] c"rt5645_mono_adc_r2_enum\00", align 1
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1411, i32 8 }
@___asan_gen_.1627 = private unnamed_addr constant [23 x i8] c"rt5645_mono_adc_r2_src\00", align 1
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1407, i32 27 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1050, i32 2 }
@___asan_gen_.1633 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1052, i32 2 }
@___asan_gen_.1637 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1638 = private unnamed_addr constant [21 x i8] c".compoundliteral.320\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1640 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1641 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1642 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1643 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1613, i32 2 }
@___asan_gen_.1647 = private unnamed_addr constant [23 x i8] c"rt5645_if2_adc_in_enum\00", align 1
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1608, i32 8 }
@___asan_gen_.1650 = private unnamed_addr constant [22 x i8] c"rt5645_if2_adc_in_src\00", align 1
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1604, i32 27 }
@___asan_gen_.1655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1644, i32 2 }
@___asan_gen_.1656 = private unnamed_addr constant [20 x i8] c"rt5645_vad_adc_enum\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1639, i32 8 }
@___asan_gen_.1659 = private unnamed_addr constant [19 x i8] c"rt5645_vad_adc_src\00", align 1
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1635, i32 27 }
@___asan_gen_.1664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1636, i32 2 }
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1636, i32 16 }
@___asan_gen_.1670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1636, i32 30 }
@___asan_gen_.1673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1078, i32 2 }
@___asan_gen_.1674 = private unnamed_addr constant [21 x i8] c".compoundliteral.332\00", align 1
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1080, i32 2 }
@___asan_gen_.1678 = private unnamed_addr constant [21 x i8] c".compoundliteral.334\00", align 1
@___asan_gen_.1679 = private unnamed_addr constant [21 x i8] c".compoundliteral.335\00", align 1
@___asan_gen_.1680 = private unnamed_addr constant [21 x i8] c".compoundliteral.336\00", align 1
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1303, i32 2 }
@___asan_gen_.1684 = private unnamed_addr constant [18 x i8] c"rt5645_dac2l_enum\00", align 1
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1298, i32 8 }
@___asan_gen_.1687 = private unnamed_addr constant [17 x i8] c"rt5645_dac12_src\00", align 1
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1294, i32 27 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1295, i32 2 }
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1295, i32 24 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1295, i32 35 }
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1314, i32 2 }
@___asan_gen_.1702 = private unnamed_addr constant [18 x i8] c"rt5645_dac2r_enum\00", align 1
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1309, i32 8 }
@___asan_gen_.1705 = private unnamed_addr constant [17 x i8] c"rt5645_dacr2_src\00", align 1
@___asan_gen_.1707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1305, i32 27 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1306, i32 47 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1284, i32 2 }
@___asan_gen_.1714 = private unnamed_addr constant [18 x i8] c"rt5645_dac1l_enum\00", align 1
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1279, i32 8 }
@___asan_gen_.1717 = private unnamed_addr constant [16 x i8] c"rt5645_dac1_src\00", align 1
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1275, i32 27 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1291, i32 2 }
@___asan_gen_.1723 = private unnamed_addr constant [18 x i8] c"rt5645_dac1r_enum\00", align 1
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1286, i32 8 }
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1092, i32 2 }
@___asan_gen_.1729 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1094, i32 2 }
@___asan_gen_.1733 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1096, i32 2 }
@___asan_gen_.1737 = private unnamed_addr constant [21 x i8] c".compoundliteral.350\00", align 1
@___asan_gen_.1738 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1103, i32 2 }
@___asan_gen_.1742 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1743 = private unnamed_addr constant [21 x i8] c".compoundliteral.354\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant [21 x i8] c".compoundliteral.355\00", align 1
@___asan_gen_.1745 = private unnamed_addr constant [21 x i8] c".compoundliteral.356\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1747 = private unnamed_addr constant [21 x i8] c".compoundliteral.358\00", align 1
@___asan_gen_.1748 = private unnamed_addr constant [21 x i8] c".compoundliteral.359\00", align 1
@___asan_gen_.1749 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1128, i32 2 }
@___asan_gen_.1753 = private unnamed_addr constant [21 x i8] c".compoundliteral.362\00", align 1
@___asan_gen_.1754 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1755 = private unnamed_addr constant [21 x i8] c".compoundliteral.364\00", align 1
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1137, i32 2 }
@___asan_gen_.1759 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1760 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1761 = private unnamed_addr constant [21 x i8] c".compoundliteral.368\00", align 1
@___asan_gen_.1762 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1763 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1764 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1765 = private unnamed_addr constant [21 x i8] c".compoundliteral.372\00", align 1
@___asan_gen_.1766 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1767 = private unnamed_addr constant [21 x i8] c".compoundliteral.374\00", align 1
@___asan_gen_.1768 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1769 = private unnamed_addr constant [21 x i8] c".compoundliteral.376\00", align 1
@___asan_gen_.1770 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant [21 x i8] c".compoundliteral.378\00", align 1
@___asan_gen_.1772 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1773 = private unnamed_addr constant [21 x i8] c".compoundliteral.380\00", align 1
@___asan_gen_.1774 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1775 = private unnamed_addr constant [21 x i8] c".compoundliteral.382\00", align 1
@___asan_gen_.1776 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1777 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1647, i32 2 }
@___asan_gen_.1781 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1782 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1783 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1244, i32 2 }
@___asan_gen_.1787 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1788 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1789 = private unnamed_addr constant [21 x i8] c".compoundliteral.392\00", align 1
@___asan_gen_.1790 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1791 = private unnamed_addr constant [21 x i8] c".compoundliteral.394\00", align 1
@___asan_gen_.1792 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1793 = private unnamed_addr constant [21 x i8] c".compoundliteral.396\00", align 1
@___asan_gen_.1794 = private unnamed_addr constant [21 x i8] c".compoundliteral.397\00", align 1
@___asan_gen_.1795 = private unnamed_addr constant [21 x i8] c".compoundliteral.398\00", align 1
@___asan_gen_.1796 = private unnamed_addr constant [21 x i8] c".compoundliteral.399\00", align 1
@___asan_gen_.1797 = private unnamed_addr constant [21 x i8] c".compoundliteral.400\00", align 1
@___asan_gen_.1800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1221, i32 2 }
@___asan_gen_.1801 = private unnamed_addr constant [21 x i8] c".compoundliteral.402\00", align 1
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1223, i32 2 }
@___asan_gen_.1805 = private unnamed_addr constant [21 x i8] c".compoundliteral.404\00", align 1
@___asan_gen_.1806 = private unnamed_addr constant [21 x i8] c".compoundliteral.405\00", align 1
@___asan_gen_.1807 = private unnamed_addr constant [21 x i8] c".compoundliteral.406\00", align 1
@___asan_gen_.1808 = private unnamed_addr constant [21 x i8] c".compoundliteral.407\00", align 1
@___asan_gen_.1811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1237, i32 2 }
@___asan_gen_.1812 = private unnamed_addr constant [21 x i8] c".compoundliteral.409\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant [21 x i8] c".compoundliteral.410\00", align 1
@___asan_gen_.1814 = private unnamed_addr constant [21 x i8] c".compoundliteral.411\00", align 1
@___asan_gen_.1817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1268, i32 2 }
@___asan_gen_.1818 = private unnamed_addr constant [21 x i8] c".compoundliteral.413\00", align 1
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1270, i32 2 }
@___asan_gen_.1822 = private unnamed_addr constant [21 x i8] c".compoundliteral.415\00", align 1
@___asan_gen_.1823 = private unnamed_addr constant [19 x i8] c"hp_amp_power_count\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1672, i32 13 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1625, i32 2 }
@___asan_gen_.1829 = private unnamed_addr constant [19 x i8] c"rt5645_pdm1_l_enum\00", align 1
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1620, i32 8 }
@___asan_gen_.1832 = private unnamed_addr constant [15 x i8] c"rt5645_pdm_src\00", align 1
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1616, i32 27 }
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1617, i32 2 }
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1617, i32 14 }
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1632, i32 2 }
@___asan_gen_.1844 = private unnamed_addr constant [19 x i8] c"rt5645_pdm1_r_enum\00", align 1
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1627, i32 8 }
@___asan_gen_.1847 = private unnamed_addr constant [21 x i8] c".compoundliteral.420\00", align 1
@___asan_gen_.1848 = private unnamed_addr constant [21 x i8] c".compoundliteral.421\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant [28 x i8] c"rt5645_specific_dapm_routes\00", align 1
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2678, i32 40 }
@___asan_gen_.1852 = private unnamed_addr constant [23 x i8] c"rt5645_old_dapm_routes\00", align 1
@___asan_gen_.1854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2736, i32 40 }
@___asan_gen_.1855 = private unnamed_addr constant [28 x i8] c"rt5650_specific_dapm_routes\00", align 1
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2587, i32 40 }
@___asan_gen_.1860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2259, i32 2 }
@___asan_gen_.1861 = private unnamed_addr constant [28 x i8] c"rt5645_if1_dac0_tdm_sel_mux\00", align 1
@___asan_gen_.1863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1519, i32 38 }
@___asan_gen_.1866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2261, i32 2 }
@___asan_gen_.1867 = private unnamed_addr constant [28 x i8] c"rt5645_if1_dac1_tdm_sel_mux\00", align 1
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1525, i32 38 }
@___asan_gen_.1872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2263, i32 2 }
@___asan_gen_.1873 = private unnamed_addr constant [28 x i8] c"rt5645_if1_dac2_tdm_sel_mux\00", align 1
@___asan_gen_.1875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1531, i32 38 }
@___asan_gen_.1878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2265, i32 2 }
@___asan_gen_.1879 = private unnamed_addr constant [28 x i8] c"rt5645_if1_dac3_tdm_sel_mux\00", align 1
@___asan_gen_.1881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1537, i32 38 }
@___asan_gen_.1884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2267, i32 2 }
@___asan_gen_.1885 = private unnamed_addr constant [22 x i8] c"rt5645_if1_adc_in_mux\00", align 1
@___asan_gen_.1887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1428, i32 38 }
@___asan_gen_.1890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2269, i32 2 }
@___asan_gen_.1891 = private unnamed_addr constant [23 x i8] c"rt5645_if1_adc1_in_mux\00", align 1
@___asan_gen_.1893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1496, i32 38 }
@___asan_gen_.1896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2271, i32 2 }
@___asan_gen_.1897 = private unnamed_addr constant [23 x i8] c"rt5645_if1_adc2_in_mux\00", align 1
@___asan_gen_.1899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1502, i32 38 }
@___asan_gen_.1902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2273, i32 2 }
@___asan_gen_.1903 = private unnamed_addr constant [23 x i8] c"rt5645_if1_adc3_in_mux\00", align 1
@___asan_gen_.1905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1508, i32 38 }
@___asan_gen_.1906 = private unnamed_addr constant [29 x i8] c"rt5645_specific_dapm_widgets\00", align 1
@___asan_gen_.1908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2258, i32 41 }
@___asan_gen_.1911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1520, i32 2 }
@___asan_gen_.1912 = private unnamed_addr constant [21 x i8] c"rt5645_tdm_dac0_enum\00", align 1
@___asan_gen_.1914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1516, i32 8 }
@___asan_gen_.1915 = private unnamed_addr constant [27 x i8] c"rt5645_tdm_dac_swap_select\00", align 1
@___asan_gen_.1917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1512, i32 27 }
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1513, i32 2 }
@___asan_gen_.1923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1513, i32 11 }
@___asan_gen_.1926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1513, i32 20 }
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1513, i32 29 }
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1526, i32 2 }
@___asan_gen_.1933 = private unnamed_addr constant [21 x i8] c"rt5645_tdm_dac1_enum\00", align 1
@___asan_gen_.1935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1522, i32 8 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1532, i32 2 }
@___asan_gen_.1939 = private unnamed_addr constant [21 x i8] c"rt5645_tdm_dac2_enum\00", align 1
@___asan_gen_.1941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1528, i32 8 }
@___asan_gen_.1944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1538, i32 2 }
@___asan_gen_.1945 = private unnamed_addr constant [21 x i8] c"rt5645_tdm_dac3_enum\00", align 1
@___asan_gen_.1947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1534, i32 8 }
@___asan_gen_.1950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1429, i32 2 }
@___asan_gen_.1951 = private unnamed_addr constant [23 x i8] c"rt5645_if1_adc_in_enum\00", align 1
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1424, i32 8 }
@___asan_gen_.1954 = private unnamed_addr constant [22 x i8] c"rt5645_if1_adc_in_src\00", align 1
@___asan_gen_.1956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1419, i32 27 }
@___asan_gen_.1959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1420, i32 2 }
@___asan_gen_.1962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1420, i32 29 }
@___asan_gen_.1965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1421, i32 2 }
@___asan_gen_.1968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1421, i32 29 }
@___asan_gen_.1971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1497, i32 2 }
@___asan_gen_.1972 = private unnamed_addr constant [28 x i8] c"rt5645_tdm_adc_slot0_1_enum\00", align 1
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1493, i32 8 }
@___asan_gen_.1975 = private unnamed_addr constant [27 x i8] c"rt5645_tdm_adc_swap_select\00", align 1
@___asan_gen_.1977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1470, i32 27 }
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1471, i32 2 }
@___asan_gen_.1983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1471, i32 9 }
@___asan_gen_.1986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1471, i32 16 }
@___asan_gen_.1989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1471, i32 23 }
@___asan_gen_.1992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1503, i32 2 }
@___asan_gen_.1993 = private unnamed_addr constant [28 x i8] c"rt5645_tdm_adc_slot2_3_enum\00", align 1
@___asan_gen_.1995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1499, i32 8 }
@___asan_gen_.1998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1509, i32 2 }
@___asan_gen_.1999 = private unnamed_addr constant [28 x i8] c"rt5645_tdm_adc_slot4_5_enum\00", align 1
@___asan_gen_.2001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1505, i32 8 }
@___asan_gen_.2004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2278, i32 2 }
@___asan_gen_.2005 = private unnamed_addr constant [20 x i8] c"rt5650_a_dac1_l_mux\00", align 1
@___asan_gen_.2007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1574, i32 38 }
@___asan_gen_.2010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2280, i32 2 }
@___asan_gen_.2011 = private unnamed_addr constant [20 x i8] c"rt5650_a_dac1_r_mux\00", align 1
@___asan_gen_.2013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1581, i32 38 }
@___asan_gen_.2016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2282, i32 2 }
@___asan_gen_.2017 = private unnamed_addr constant [20 x i8] c"rt5650_a_dac2_l_mux\00", align 1
@___asan_gen_.2019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1593, i32 38 }
@___asan_gen_.2022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2284, i32 2 }
@___asan_gen_.2023 = private unnamed_addr constant [20 x i8] c"rt5650_a_dac2_r_mux\00", align 1
@___asan_gen_.2025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1600, i32 38 }
@___asan_gen_.2028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2287, i32 2 }
@___asan_gen_.2029 = private unnamed_addr constant [23 x i8] c"rt5650_if1_adc1_in_mux\00", align 1
@___asan_gen_.2031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1477, i32 38 }
@___asan_gen_.2034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2289, i32 2 }
@___asan_gen_.2035 = private unnamed_addr constant [23 x i8] c"rt5650_if1_adc2_in_mux\00", align 1
@___asan_gen_.2037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1483, i32 38 }
@___asan_gen_.2040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2291, i32 2 }
@___asan_gen_.2041 = private unnamed_addr constant [23 x i8] c"rt5650_if1_adc3_in_mux\00", align 1
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1489, i32 38 }
@___asan_gen_.2046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2293, i32 2 }
@___asan_gen_.2047 = private unnamed_addr constant [22 x i8] c"rt5650_if1_adc_in_mux\00", align 1
@___asan_gen_.2049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1466, i32 38 }
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2296, i32 2 }
@___asan_gen_.2053 = private unnamed_addr constant [28 x i8] c"rt5650_if1_dac0_tdm_sel_mux\00", align 1
@___asan_gen_.2055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1544, i32 38 }
@___asan_gen_.2058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2298, i32 2 }
@___asan_gen_.2059 = private unnamed_addr constant [28 x i8] c"rt5650_if1_dac1_tdm_sel_mux\00", align 1
@___asan_gen_.2061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1550, i32 38 }
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2300, i32 2 }
@___asan_gen_.2065 = private unnamed_addr constant [28 x i8] c"rt5650_if1_dac2_tdm_sel_mux\00", align 1
@___asan_gen_.2067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1556, i32 38 }
@___asan_gen_.2070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2302, i32 2 }
@___asan_gen_.2071 = private unnamed_addr constant [28 x i8] c"rt5650_if1_dac3_tdm_sel_mux\00", align 1
@___asan_gen_.2073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1562, i32 38 }
@___asan_gen_.2074 = private unnamed_addr constant [29 x i8] c"rt5650_specific_dapm_widgets\00", align 1
@___asan_gen_.2076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2277, i32 41 }
@___asan_gen_.2079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1575, i32 2 }
@___asan_gen_.2080 = private unnamed_addr constant [21 x i8] c"rt5650_a_dac1_l_enum\00", align 1
@___asan_gen_.2082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1570, i32 8 }
@___asan_gen_.2083 = private unnamed_addr constant [18 x i8] c"rt5650_a_dac1_src\00", align 1
@___asan_gen_.2085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1566, i32 27 }
@___asan_gen_.2088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1567, i32 2 }
@___asan_gen_.2091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1567, i32 10 }
@___asan_gen_.2094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1582, i32 2 }
@___asan_gen_.2095 = private unnamed_addr constant [21 x i8] c"rt5650_a_dac1_r_enum\00", align 1
@___asan_gen_.2097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1577, i32 8 }
@___asan_gen_.2100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1594, i32 2 }
@___asan_gen_.2101 = private unnamed_addr constant [21 x i8] c"rt5650_a_dac2_l_enum\00", align 1
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1589, i32 8 }
@___asan_gen_.2104 = private unnamed_addr constant [18 x i8] c"rt5650_a_dac2_src\00", align 1
@___asan_gen_.2106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1585, i32 27 }
@___asan_gen_.2109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1586, i32 22 }
@___asan_gen_.2112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1601, i32 2 }
@___asan_gen_.2113 = private unnamed_addr constant [21 x i8] c"rt5650_a_dac2_r_enum\00", align 1
@___asan_gen_.2115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1596, i32 8 }
@___asan_gen_.2116 = private unnamed_addr constant [28 x i8] c"rt5650_tdm_adc_slot0_1_enum\00", align 1
@___asan_gen_.2118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1474, i32 8 }
@___asan_gen_.2119 = private unnamed_addr constant [28 x i8] c"rt5650_tdm_adc_slot2_3_enum\00", align 1
@___asan_gen_.2121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1480, i32 8 }
@___asan_gen_.2122 = private unnamed_addr constant [28 x i8] c"rt5650_tdm_adc_slot4_5_enum\00", align 1
@___asan_gen_.2124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1486, i32 8 }
@___asan_gen_.2125 = private unnamed_addr constant [23 x i8] c"rt5650_if1_adc_in_enum\00", align 1
@___asan_gen_.2127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1462, i32 8 }
@___asan_gen_.2128 = private unnamed_addr constant [22 x i8] c"rt5650_if1_adc_in_src\00", align 1
@___asan_gen_.2130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1432, i32 27 }
@___asan_gen_.2133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1433, i32 2 }
@___asan_gen_.2136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1434, i32 2 }
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1435, i32 2 }
@___asan_gen_.2142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1436, i32 2 }
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1437, i32 2 }
@___asan_gen_.2148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1438, i32 2 }
@___asan_gen_.2151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1440, i32 2 }
@___asan_gen_.2154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1441, i32 2 }
@___asan_gen_.2157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1442, i32 2 }
@___asan_gen_.2160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1443, i32 2 }
@___asan_gen_.2163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1444, i32 2 }
@___asan_gen_.2166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1445, i32 2 }
@___asan_gen_.2169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1447, i32 2 }
@___asan_gen_.2172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1448, i32 2 }
@___asan_gen_.2175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1449, i32 2 }
@___asan_gen_.2178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1450, i32 2 }
@___asan_gen_.2181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1451, i32 2 }
@___asan_gen_.2184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1452, i32 2 }
@___asan_gen_.2187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1454, i32 2 }
@___asan_gen_.2190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1455, i32 2 }
@___asan_gen_.2193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1456, i32 2 }
@___asan_gen_.2196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1457, i32 2 }
@___asan_gen_.2199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1458, i32 2 }
@___asan_gen_.2202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1459, i32 2 }
@___asan_gen_.2203 = private unnamed_addr constant [21 x i8] c"rt5650_tdm_dac0_enum\00", align 1
@___asan_gen_.2205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1541, i32 8 }
@___asan_gen_.2206 = private unnamed_addr constant [21 x i8] c"rt5650_tdm_dac1_enum\00", align 1
@___asan_gen_.2208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1547, i32 8 }
@___asan_gen_.2209 = private unnamed_addr constant [21 x i8] c"rt5650_tdm_dac2_enum\00", align 1
@___asan_gen_.2211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1553, i32 8 }
@___asan_gen_.2212 = private unnamed_addr constant [21 x i8] c"rt5650_tdm_dac3_enum\00", align 1
@___asan_gen_.2214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 1559, i32 8 }
@___asan_gen_.2217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3484, i32 11 }
@___asan_gen_.2218 = private unnamed_addr constant [19 x i8] c"rt5645_aif_dai_ops\00", align 1
@___asan_gen_.2220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3474, i32 37 }
@___asan_gen_.2223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 3503, i32 11 }
@___asan_gen_.2232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2909, i32 3 }
@___asan_gen_.2235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2917, i32 2 }
@___asan_gen_.2241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2935, i32 3 }
@___asan_gen_.2247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2961, i32 4 }
@___asan_gen_.2253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2966, i32 3 }
@___asan_gen_.2259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2972, i32 3 }
@___asan_gen_.2262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2976, i32 2 }
@___asan_gen_.2268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2882, i32 3 }
@___asan_gen_.2277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2752, i32 3 }
@___asan_gen_.2283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2757, i32 3 }
@___asan_gen_.2286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2773, i32 2 }
@___asan_gen_.2287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2775, i32 2 }
@___asan_gen_.2290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2291 = private constant [29 x i8] c"../sound/soc/codecs/rt5645.c\00", align 1
@___asan_gen_.2292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2291, i32 2811, i32 3 }
@___asan_gen_.2293 = private unnamed_addr constant [30 x i8] c"switch.table.rt5645_i2c_probe\00", align 1
@___asan_gen_.2294 = private unnamed_addr constant [27 x i8] c"switch.table.is_using_asrc\00", align 1
@___asan_gen_.2295 = private unnamed_addr constant [31 x i8] c"switch.table.is_using_asrc.520\00", align 1
@___asan_gen_.2296 = private unnamed_addr constant [30 x i8] c"switch.table.rt5645_hw_params\00", align 1
@llvm.compiler.used = appending global [687 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__UNIQUE_ID_quirk297, ptr @__UNIQUE_ID_quirktype296, ptr @__exitcall_rt5645_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5645__308_4191_rt5645_i2c_driver_init6, ptr @__ksymtab_rt5645_sel_asrc_clk_src, ptr @__ksymtab_rt5645_set_jack_detect, ptr @__param_quirk, ptr @rt5645_hw_params._entry, ptr @rt5645_hw_params._entry.513, ptr @rt5645_hw_params._entry.518, ptr @rt5645_hw_params._entry_ptr, ptr @rt5645_hw_params._entry_ptr.515, ptr @rt5645_hw_params._entry_ptr.519, ptr @rt5645_i2c_driver_exit, ptr @rt5645_i2c_probe._entry, ptr @rt5645_i2c_probe._entry.10, ptr @rt5645_i2c_probe._entry.13, ptr @rt5645_i2c_probe._entry.17, ptr @rt5645_i2c_probe._entry.21, ptr @rt5645_i2c_probe._entry.28, ptr @rt5645_i2c_probe._entry.31, ptr @rt5645_i2c_probe._entry.34, ptr @rt5645_i2c_probe._entry.38, ptr @rt5645_i2c_probe._entry.50, ptr @rt5645_i2c_probe._entry_ptr, ptr @rt5645_i2c_probe._entry_ptr.12, ptr @rt5645_i2c_probe._entry_ptr.16, ptr @rt5645_i2c_probe._entry_ptr.19, ptr @rt5645_i2c_probe._entry_ptr.23, ptr @rt5645_i2c_probe._entry_ptr.30, ptr @rt5645_i2c_probe._entry_ptr.33, ptr @rt5645_i2c_probe._entry_ptr.37, ptr @rt5645_i2c_probe._entry_ptr.40, ptr @rt5645_i2c_probe._entry_ptr.52, ptr @rt5645_jack_detect_work._entry, ptr @rt5645_jack_detect_work._entry_ptr, ptr @rt5645_set_dai_fmt._entry, ptr @rt5645_set_dai_fmt._entry_ptr, ptr @rt5645_set_dai_pll._entry, ptr @rt5645_set_dai_pll._entry.503, ptr @rt5645_set_dai_pll._entry.506, ptr @rt5645_set_dai_pll._entry_ptr, ptr @rt5645_set_dai_pll._entry_ptr.505, ptr @rt5645_set_dai_pll._entry_ptr.508, ptr @rt5645_set_dai_sysclk._entry, ptr @rt5645_set_dai_sysclk._entry_ptr, ptr @set_dmic_clk._entry, ptr @set_dmic_clk._entry_ptr, ptr @quirk, ptr @rt5645_i2c_driver, ptr @.str, ptr @rt5645_of_match, ptr @rt5645_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jd_mode3_platform_data, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @rt5645_i2c_probe._key, ptr @temp_regmap, ptr @.str.20, ptr @.str.22, ptr @rt5645_i2c_probe._key.24, ptr @rt5645_regmap, ptr @.str.25, ptr @rt5645_i2c_probe._key.26, ptr @rt5650_regmap, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @init_list, ptr @.str.35, ptr @.str.36, ptr @rt5650_init_list, ptr @.str.39, ptr @rt5645_i2c_probe.__key, ptr @.str.41, ptr @rt5645_i2c_probe.__key.42, ptr @.str.43, ptr @rt5645_i2c_probe.__key.44, ptr @.str.45, ptr @rt5645_i2c_probe.__key.46, ptr @.str.47, ptr @rt5645_i2c_probe.__key.48, ptr @.str.49, ptr @.str.51, ptr @soc_component_dev_rt5645, ptr @rt5645_dai, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @rt5645_reg, ptr @rt5645_ranges, ptr @.str.79, ptr @rt5650_reg, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @rt5645_snd_controls, ptr @rt5645_dapm_routes, ptr @.str.93, ptr @.compoundliteral, ptr @.str.94, ptr @out_vol_tlv, ptr @.compoundliteral.95, ptr @.str.96, ptr @spk_clsd_tlv, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @dac_vol_tlv, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @bst_tlv, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @in_vol_tlv, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @adc_vol_tlv, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @adc_bst_tlv, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.str.135, ptr @rt5645_dac1_vol_ctrl_mode, ptr @rt5645_dac1_vol_ctrl_mode_text, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @rt5645_rec_l_mix, ptr @.str.173, ptr @rt5645_rec_r_mix, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @rt5645_sto1_dmic_mux, ptr @.str.177, ptr @rt5645_sto_adc2_mux, ptr @.str.178, ptr @.str.179, ptr @rt5645_sto_adc1_mux, ptr @.str.180, ptr @.str.181, ptr @rt5645_mono_dmic_l_mux, ptr @.str.182, ptr @rt5645_mono_dmic_r_mux, ptr @.str.183, ptr @rt5645_mono_adc_l2_mux, ptr @.str.184, ptr @rt5645_mono_adc_l1_mux, ptr @.str.185, ptr @rt5645_mono_adc_r1_mux, ptr @.str.186, ptr @rt5645_mono_adc_r2_mux, ptr @.str.187, ptr @.str.188, ptr @rt5645_sto1_adc_l_mix, ptr @.str.189, ptr @rt5645_sto1_adc_r_mix, ptr @.str.190, ptr @.str.191, ptr @rt5645_mono_adc_l_mix, ptr @.str.192, ptr @.str.193, ptr @rt5645_mono_adc_r_mix, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @rt5645_if2_adc_in_mux, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @rt5645_vad_adc_mux, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @rt5645_dac_l_mix, ptr @.str.228, ptr @rt5645_dac_r_mix, ptr @.str.229, ptr @rt5645_dac_l2_mux, ptr @.str.230, ptr @rt5645_dac_r2_mux, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @rt5645_dac1l_mux, ptr @.str.234, ptr @rt5645_dac1r_mux, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @rt5645_sto_dac_l_mix, ptr @.str.239, ptr @rt5645_sto_dac_r_mix, ptr @.str.240, ptr @rt5645_mono_dac_l_mix, ptr @.str.241, ptr @rt5645_mono_dac_r_mix, ptr @.str.242, ptr @rt5645_dig_l_mix, ptr @.str.243, ptr @rt5645_dig_r_mix, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @rt5645_spk_l_mix, ptr @.str.249, ptr @rt5645_spk_r_mix, ptr @.str.250, ptr @rt5645_out_l_mix, ptr @.str.251, ptr @rt5645_out_r_mix, ptr @.str.252, ptr @spk_l_vol_control, ptr @.str.253, ptr @spk_r_vol_control, ptr @.str.254, ptr @rt5645_hpvoll_mix, ptr @.str.255, ptr @rt5645_hpvolr_mix, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @hp_l_vol_control, ptr @.str.262, ptr @hp_r_vol_control, ptr @.str.263, ptr @rt5645_spo_l_mix, ptr @.str.264, ptr @rt5645_spo_r_mix, ptr @.str.265, ptr @rt5645_hpo_mix, ptr @.str.266, ptr @rt5645_lout_mix, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @rt5645_pdm1_l_mux, ptr @.str.272, ptr @rt5645_pdm1_r_mux, ptr @.str.273, ptr @pdm1_l_vol_control, ptr @.str.274, ptr @pdm1_r_vol_control, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @rt5645_dapm_widgets, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.compoundliteral.287, ptr @.str.288, ptr @.compoundliteral.289, ptr @.str.290, ptr @.compoundliteral.291, ptr @.str.292, ptr @.compoundliteral.293, ptr @.str.294, ptr @.compoundliteral.295, ptr @.str.296, ptr @.compoundliteral.297, ptr @.str.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.str.302, ptr @.compoundliteral.303, ptr @.str.304, ptr @rt5645_stereo1_dmic_enum, ptr @rt5645_stereo_dmic_src, ptr @.str.305, ptr @rt5645_stereo1_adc2_enum, ptr @rt5645_stereo_adc2_src, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @rt5645_stereo1_adc1_enum, ptr @rt5645_stereo_adc1_src, ptr @.str.309, ptr @.str.310, ptr @rt5645_mono_dmic_l_enum, ptr @rt5645_mono_dmic_src, ptr @.str.311, ptr @rt5645_mono_dmic_r_enum, ptr @.str.312, ptr @rt5645_mono_adc_l2_enum, ptr @rt5645_mono_adc_l2_src, ptr @.str.313, ptr @rt5645_mono_adc_l1_enum, ptr @rt5645_mono_adc_l1_src, ptr @.str.314, ptr @rt5645_mono_adc_r1_enum, ptr @rt5645_mono_adc_r1_src, ptr @.str.315, ptr @rt5645_mono_adc_r2_enum, ptr @rt5645_mono_adc_r2_src, ptr @.str.316, ptr @.compoundliteral.317, ptr @.str.318, ptr @.compoundliteral.319, ptr @.compoundliteral.320, ptr @.compoundliteral.321, ptr @.compoundliteral.322, ptr @.compoundliteral.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.str.326, ptr @rt5645_if2_adc_in_enum, ptr @rt5645_if2_adc_in_src, ptr @.str.327, ptr @rt5645_vad_adc_enum, ptr @rt5645_vad_adc_src, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.compoundliteral.332, ptr @.str.333, ptr @.compoundliteral.334, ptr @.compoundliteral.335, ptr @.compoundliteral.336, ptr @.str.337, ptr @rt5645_dac2l_enum, ptr @rt5645_dac12_src, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @rt5645_dac2r_enum, ptr @rt5645_dacr2_src, ptr @.str.342, ptr @.str.343, ptr @rt5645_dac1l_enum, ptr @rt5645_dac1_src, ptr @.str.344, ptr @rt5645_dac1r_enum, ptr @.str.345, ptr @.compoundliteral.346, ptr @.str.347, ptr @.compoundliteral.348, ptr @.str.349, ptr @.compoundliteral.350, ptr @.compoundliteral.351, ptr @.str.352, ptr @.compoundliteral.353, ptr @.compoundliteral.354, ptr @.compoundliteral.355, ptr @.compoundliteral.356, ptr @.compoundliteral.357, ptr @.compoundliteral.358, ptr @.compoundliteral.359, ptr @.compoundliteral.360, ptr @.str.361, ptr @.compoundliteral.362, ptr @.compoundliteral.363, ptr @.compoundliteral.364, ptr @.str.365, ptr @.compoundliteral.366, ptr @.compoundliteral.367, ptr @.compoundliteral.368, ptr @.compoundliteral.369, ptr @.compoundliteral.370, ptr @.compoundliteral.371, ptr @.compoundliteral.372, ptr @.compoundliteral.373, ptr @.compoundliteral.374, ptr @.compoundliteral.375, ptr @.compoundliteral.376, ptr @.compoundliteral.377, ptr @.compoundliteral.378, ptr @.compoundliteral.379, ptr @.compoundliteral.380, ptr @.compoundliteral.381, ptr @.compoundliteral.382, ptr @.compoundliteral.383, ptr @.compoundliteral.384, ptr @.str.385, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.str.389, ptr @.compoundliteral.390, ptr @.compoundliteral.391, ptr @.compoundliteral.392, ptr @.compoundliteral.393, ptr @.compoundliteral.394, ptr @.compoundliteral.395, ptr @.compoundliteral.396, ptr @.compoundliteral.397, ptr @.compoundliteral.398, ptr @.compoundliteral.399, ptr @.compoundliteral.400, ptr @.str.401, ptr @.compoundliteral.402, ptr @.str.403, ptr @.compoundliteral.404, ptr @.compoundliteral.405, ptr @.compoundliteral.406, ptr @.compoundliteral.407, ptr @.str.408, ptr @.compoundliteral.409, ptr @.compoundliteral.410, ptr @.compoundliteral.411, ptr @.str.412, ptr @.compoundliteral.413, ptr @.str.414, ptr @.compoundliteral.415, ptr @hp_amp_power.hp_amp_power_count, ptr @.str.416, ptr @rt5645_pdm1_l_enum, ptr @rt5645_pdm_src, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @rt5645_pdm1_r_enum, ptr @.compoundliteral.420, ptr @.compoundliteral.421, ptr @rt5645_specific_dapm_routes, ptr @rt5645_old_dapm_routes, ptr @rt5650_specific_dapm_routes, ptr @.str.422, ptr @rt5645_if1_dac0_tdm_sel_mux, ptr @.str.423, ptr @rt5645_if1_dac1_tdm_sel_mux, ptr @.str.424, ptr @rt5645_if1_dac2_tdm_sel_mux, ptr @.str.425, ptr @rt5645_if1_dac3_tdm_sel_mux, ptr @.str.426, ptr @rt5645_if1_adc_in_mux, ptr @.str.427, ptr @rt5645_if1_adc1_in_mux, ptr @.str.428, ptr @rt5645_if1_adc2_in_mux, ptr @.str.429, ptr @rt5645_if1_adc3_in_mux, ptr @rt5645_specific_dapm_widgets, ptr @.str.431, ptr @rt5645_tdm_dac0_enum, ptr @rt5645_tdm_dac_swap_select, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @rt5645_tdm_dac1_enum, ptr @.str.437, ptr @rt5645_tdm_dac2_enum, ptr @.str.438, ptr @rt5645_tdm_dac3_enum, ptr @.str.439, ptr @rt5645_if1_adc_in_enum, ptr @rt5645_if1_adc_in_src, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @rt5645_tdm_adc_slot0_1_enum, ptr @rt5645_tdm_adc_swap_select, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @rt5645_tdm_adc_slot2_3_enum, ptr @.str.450, ptr @rt5645_tdm_adc_slot4_5_enum, ptr @.str.451, ptr @rt5650_a_dac1_l_mux, ptr @.str.452, ptr @rt5650_a_dac1_r_mux, ptr @.str.453, ptr @rt5650_a_dac2_l_mux, ptr @.str.454, ptr @rt5650_a_dac2_r_mux, ptr @.str.455, ptr @rt5650_if1_adc1_in_mux, ptr @.str.456, ptr @rt5650_if1_adc2_in_mux, ptr @.str.457, ptr @rt5650_if1_adc3_in_mux, ptr @.str.458, ptr @rt5650_if1_adc_in_mux, ptr @.str.459, ptr @rt5650_if1_dac0_tdm_sel_mux, ptr @.str.460, ptr @rt5650_if1_dac1_tdm_sel_mux, ptr @.str.461, ptr @rt5650_if1_dac2_tdm_sel_mux, ptr @.str.462, ptr @rt5650_if1_dac3_tdm_sel_mux, ptr @rt5650_specific_dapm_widgets, ptr @.str.464, ptr @rt5650_a_dac1_l_enum, ptr @rt5650_a_dac1_src, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @rt5650_a_dac1_r_enum, ptr @.str.468, ptr @rt5650_a_dac2_l_enum, ptr @rt5650_a_dac2_src, ptr @.str.469, ptr @.str.470, ptr @rt5650_a_dac2_r_enum, ptr @rt5650_tdm_adc_slot0_1_enum, ptr @rt5650_tdm_adc_slot2_3_enum, ptr @rt5650_tdm_adc_slot4_5_enum, ptr @rt5650_if1_adc_in_enum, ptr @rt5650_if1_adc_in_src, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @rt5650_tdm_dac0_enum, ptr @rt5650_tdm_dac1_enum, ptr @rt5650_tdm_dac2_enum, ptr @rt5650_tdm_dac3_enum, ptr @.str.495, ptr @rt5645_aif_dai_ops, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.504, ptr @.str.507, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.514, ptr @.str.516, ptr @.str.517, ptr @switch.table.rt5645_i2c_probe, ptr @switch.table.is_using_asrc, ptr @switch.table.is_using_asrc.520, ptr @switch.table.rt5645_hw_params], section "llvm.metadata"
@0 = internal global [655 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jd_mode3_platform_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_list to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_init_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_i2c_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5645 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_reg to i32), i32 1224, i32 1536, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_reg to i32), i32 1232, i32 1536, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_jack_detect_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_snd_controls to i32), i32 1104, i32 1376, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dapm_routes to i32), i32 11804, i32 14752, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_clsd_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bst_tlv to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1_vol_ctrl_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1_vol_ctrl_mode_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_rec_l_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_rec_r_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto1_dmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto_adc2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto_adc1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dmic_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dmic_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if2_adc_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_vad_adc_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto_dac_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_sto_dac_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dac_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dac_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dig_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dig_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_spk_l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_spk_r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_out_l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_out_r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_l_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_r_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_hpvoll_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_hpvolr_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_l_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_r_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_spo_l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_spo_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_hpo_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_lout_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_pdm1_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_pdm1_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdm1_l_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdm1_r_vol_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dapm_widgets to i32), i32 25920, i32 32384, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_stereo1_dmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_stereo_dmic_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_stereo1_adc2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_stereo_adc2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_stereo1_adc1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_stereo_adc1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dmic_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dmic_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_dmic_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_l1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_mono_adc_r2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.320 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if2_adc_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if2_adc_in_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_vad_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_vad_adc_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.332 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.334 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.335 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.336 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac2l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac12_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac2r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dacr2_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_dac1r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.350 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.354 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.355 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.356 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.358 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.359 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.362 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.364 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.368 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.372 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.374 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.376 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.378 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.380 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.382 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.392 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.394 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.396 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.397 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.398 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.399 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.400 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.402 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.404 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.405 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.406 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.407 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.409 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.410 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.411 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.413 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.415 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_amp_power.hp_amp_power_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_pdm1_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_pdm_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_pdm1_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.420 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.421 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_specific_dapm_routes to i32), i32 2288, i32 2848, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_old_dapm_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_specific_dapm_routes to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_dac0_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_dac1_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_dac2_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_dac3_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_adc_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_adc1_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_adc2_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_adc3_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_specific_dapm_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_dac0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_dac_swap_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1915 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_dac1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_dac2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_dac3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_adc_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_if1_adc_in_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1954 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_adc_slot0_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1972 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_adc_swap_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_adc_slot2_3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_tdm_adc_slot4_5_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1999 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac1_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac1_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac2_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2017 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac2_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2023 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_adc1_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_adc2_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2035 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_adc3_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_adc_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2047 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_dac0_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_dac1_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_dac2_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2065 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_dac3_tdm_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_specific_dapm_widgets to i32), i32 2160, i32 2688, i32 ptrtoint (ptr @___asan_gen_.2074 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac1_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2080 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac1_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac2_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_a_dac2_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2113 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_adc_slot0_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_adc_slot2_3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2119 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_adc_slot4_5_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2122 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_adc_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2125 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_if1_adc_in_src to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.2128 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_dac0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_dac1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2206 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_dac2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2209 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5650_tdm_dac3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2212 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.2218 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_set_dai_pll._entry.503 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_set_dai_pll._entry.506 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.511 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_hw_params._entry.513 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5645_hw_params._entry.518 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5645_i2c_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2293 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.is_using_asrc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2294 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.is_using_asrc.520 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2295 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5645_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2296 to i32), i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5645_sel_asrc_clk_src(ptr noundef %component, i32 noundef %filter_mask, i32 noundef %clk_src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clk_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_src, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge80
    i32 2, label %entry.sw.epilog_crit_edge81
    i32 5, label %entry.sw.epilog_crit_edge82
  ]

entry.sw.epilog_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge80, %entry.sw.epilog_crit_edge81, %entry.sw.epilog_crit_edge82
  %and = and i32 %filter_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 61440
  %and3 = and i32 %filter_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or6 = or i32 %spec.select, 3840
  %asrc2_mask.1 = select i1 %tobool4.not, i32 %spec.select, i32 %or6
  %and11 = and i32 %filter_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or14 = or i32 %asrc2_mask.1, 240
  %shl16 = shl nuw nsw i32 %clk_src, 4
  %asrc2_mask.2 = select i1 %tobool12.not, i32 %asrc2_mask.1, i32 %or14
  %and19 = and i32 %filter_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or22 = or i32 %asrc2_mask.2, 15
  %asrc2_mask.3 = select i1 %tobool20.not, i32 %asrc2_mask.2, i32 %or22
  %and27 = and i32 %filter_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %asrc3_mask.0 = select i1 %tobool28.not, i32 0, i32 240
  %asrc3_value.0 = select i1 %tobool28.not, i32 0, i32 %shl16
  %and35 = and i32 %filter_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %or38 = or i32 %asrc3_mask.0, 15
  %asrc3_mask.1 = select i1 %tobool36.not, i32 %asrc3_mask.0, i32 %or38
  %or41 = select i1 %tobool36.not, i32 0, i32 %clk_src
  %asrc3_value.1 = or i32 %asrc3_value.0, %or41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asrc2_mask.3)
  %tobool43.not = icmp eq i32 %asrc2_mask.3, 0
  br i1 %tobool43.not, label %sw.epilog.if.end45_crit_edge, label %if.then44

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %clk_src, 12
  %spec.select79 = select i1 %tobool.not, i32 0, i32 %shl
  %shl8 = shl nuw nsw i32 %clk_src, 8
  %or9 = select i1 %tobool4.not, i32 0, i32 %shl8
  %asrc2_value.1 = or i32 %spec.select79, %or9
  %or17 = select i1 %tobool12.not, i32 0, i32 %shl16
  %asrc2_value.2 = or i32 %asrc2_value.1, %or17
  %or25 = select i1 %tobool20.not, i32 0, i32 %clk_src
  %asrc2_value.3 = or i32 %asrc2_value.2, %or25
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 132, i32 noundef %asrc2_mask.3, i32 noundef %asrc2_value.3) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %sw.epilog.if.end45_crit_edge
  %1 = and i32 %filter_mask, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 133, i32 noundef %asrc3_mask.1, i32 noundef %asrc3_value.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5645_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %hp_jack, ptr noundef %mic_jack, ptr noundef %btn_jack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hp_jack1 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hp_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hp_jack, ptr %hp_jack1, align 4
  %mic_jack2 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %mic_jack2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mic_jack, ptr %mic_jack2, align 4
  %btn_jack3 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %btn_jack3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %btn_jack, ptr %btn_jack3, align 4
  %tobool.not = icmp eq ptr %btn_jack, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %en_button_func = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 23
  %9 = ptrtoint ptr %en_button_func to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %en_button_func, align 4
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %14 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work.i = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %jack_detect_work.i, i32 noundef 25) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5645_priv, ptr %data, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %jack_detect_work, i32 noundef 25) #9
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_i2c_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5645_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5645_i2c_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5645_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !1177
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 392, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c1 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %i2c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %i2c1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i506 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.72) #9
  br i1 %call.i506, label %if.end.if.then11_crit_edge, label %lor.lhs.false.i

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false.i:                                  ; preds = %if.end
  %call1.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.73) #9
  br i1 %call1.i, label %lor.lhs.false.i.if.then11_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then11_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %call3.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.74) #9
  br i1 %call3.i, label %lor.lhs.false2.i.if.then11_crit_edge, label %rt5645_check_dp.exit

lor.lhs.false2.i.if.then11_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

rt5645_check_dp.exit:                             ; preds = %lor.lhs.false2.i
  %call5.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.75) #9
  br i1 %call5.i, label %rt5645_check_dp.exit.if.then11_crit_edge, label %if.else14

rt5645_check_dp.exit.if.then11_crit_edge:         ; preds = %rt5645_check_dp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %rt5645_check_dp.exit.if.then11_crit_edge, %lor.lhs.false2.i.if.then11_crit_edge, %lor.lhs.false.i.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.72) #9
  %pdata.i = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1
  %frombool.i = zext i1 %call.i.i to i8
  %3 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %pdata.i, align 4
  %dmic1_data_pin.i = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 1
  %call.i1.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %dmic1_data_pin.i, i32 noundef 1) #9
  %dmic2_data_pin.i = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 2
  %call.i2.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef %dmic2_data_pin.i, i32 noundef 1) #9
  %jd_mode.i = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 3
  %call.i3.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef %jd_mode.i, i32 noundef 1) #9
  br label %if.end17

if.else14:                                        ; preds = %rt5645_check_dp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pdata15 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %pdata15, ptr @jd_mode3_platform_data, i32 28)
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11
  %5 = load i32, ptr @quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp18.not = icmp eq i32 %5, -1
  br i1 %cmp18.not, label %if.end17.if.end45_crit_edge, label %if.then19

if.end17.if.end45_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %pdata21 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %pdata21 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pdata21, align 4
  %level_trigger_irq = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 4
  %10 = lshr i8 %6, 1
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %level_trigger_irq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %level_trigger_irq, align 4
  %inv_jd1_1 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 5
  %13 = and i8 %6, 1
  %14 = ptrtoint ptr %inv_jd1_1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %inv_jd1_1, align 1
  %inv_hp_pol = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 6
  %15 = lshr i8 %6, 3
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %inv_hp_pol to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %inv_hp_pol, align 2
  %shr36 = lshr i32 %5, 4
  %and37 = and i32 %shr36, 7
  %jd_mode = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %jd_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and37, ptr %jd_mode, align 4
  %shr39 = lshr i32 %5, 8
  %and40 = and i32 %shr39, 3
  %dmic1_data_pin = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %dmic1_data_pin to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and40, ptr %dmic1_data_pin, align 4
  %shr42 = lshr i32 %5, 12
  %and43 = and i32 %shr42, 3
  %dmic2_data_pin = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %dmic2_data_pin to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and43, ptr %dmic2_data_pin, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %if.end17.if.end45_crit_edge
  %call74 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 1) #9
  %gpiod_hp_det = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call74, ptr %gpiod_hp_det, align 4
  %cmp.i = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end80, label %if.end45.if.end87_crit_edge

if.end45.if.end87_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.end80:                                         ; preds = %if.end45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %22 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpiod_hp_det, align 4
  %24 = ptrtoint ptr %23 to i32
  %cmp84.not = icmp eq ptr %23, inttoptr (i32 -2 to ptr)
  br i1 %cmp84.not, label %do.end80.if.end87_crit_edge, label %do.end80.cleanup_crit_edge

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end80.if.end87_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.end87:                                         ; preds = %do.end80.if.end87_crit_edge, %if.end45.if.end87_crit_edge
  %arrayidx89 = getelementptr %struct.rt5645_priv, ptr %call.i, i32 0, i32 10, i32 0
  %25 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.76, ptr %arrayidx89, align 4
  %arrayidx89.1 = getelementptr %struct.rt5645_priv, ptr %call.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.77, ptr %arrayidx89.1, align 4
  %call92 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call92) #12
  br label %cleanup

if.end99:                                         ; preds = %if.end87
  %call102 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end109, label %do.end107

do.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call102) #12
  br label %cleanup

if.end109:                                        ; preds = %if.end99
  %call111 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @temp_regmap, ptr noundef nonnull @rt5645_i2c_probe._key, ptr noundef nonnull @.str.20) #9
  %cmp.i507 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507, label %if.then113, label %if.end119

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call111 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %27) #12
  br label %cleanup

if.end119:                                        ; preds = %if.end109
  tail call void @msleep(i32 noundef 400) #9
  %call120 = call i32 @regmap_read(ptr noundef %call111, i32 noundef 255, ptr noundef nonnull %val) #9
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.521)
  switch i32 %29, label %do.end131 [
    i32 25352, label %sw.bb
    i32 25625, label %sw.bb124
  ]

sw.bb:                                            ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %call122 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5645_regmap, ptr noundef nonnull @rt5645_i2c_probe._key.24, ptr noundef nonnull @.str.25) #9
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %call126 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5650_regmap, ptr noundef nonnull @rt5645_i2c_probe._key.26, ptr noundef nonnull @.str.27) #9
  br label %sw.epilog

do.end131:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %29) #12
  br label %err_enable

sw.epilog:                                        ; preds = %sw.bb124, %sw.bb
  %call126.sink = phi ptr [ %call126, %sw.bb124 ], [ %call122, %sw.bb ]
  %.sink = phi i32 [ 1, %sw.bb124 ], [ 0, %sw.bb ]
  %regmap127 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %regmap127 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call126.sink, ptr %regmap127, align 4
  %codec_type128 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 13
  %32 = ptrtoint ptr %codec_type128 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %codec_type128, align 4
  %regmap133 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 2
  %cmp.i508 = icmp ugt ptr %call126.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i508, label %if.then135, label %if.end142

if.then135:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call126.sink to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %33) #12
  br label %cleanup

if.end142:                                        ; preds = %sw.epilog
  %call144 = call i32 @regmap_write(ptr noundef %call126.sink, i32 noundef 0, i32 noundef 0) #9
  %call145 = call i32 @regmap_read(ptr noundef %call111, i32 noundef 253, ptr noundef nonnull %val) #9
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %and146 = and i32 %35, 255
  %v_id = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 24
  %36 = ptrtoint ptr %v_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and146, ptr %v_id, align 4
  %37 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap133, align 4
  %call148 = call i32 @regmap_write(ptr noundef %38, i32 noundef 41, i32 noundef 32896) #9
  %39 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap133, align 4
  %call150 = call i32 @regmap_register_patch(ptr noundef %40, ptr noundef nonnull @init_list, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %if.end142.if.end157_crit_edge, label %do.end155

if.end142.if.end157_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

do.end155:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call150) #12
  br label %if.end157

if.end157:                                        ; preds = %do.end155, %if.end142.if.end157_crit_edge
  %codec_type158 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 13
  %41 = ptrtoint ptr %codec_type158 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %codec_type158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp159 = icmp eq i32 %42, 1
  br i1 %cmp159, label %if.then160, label %if.end157.if.end170_crit_edge

if.end157.if.end170_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then160:                                       ; preds = %if.end157
  %43 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap133, align 4
  %call162 = call i32 @regmap_register_patch(ptr noundef %44, ptr noundef nonnull @rt5650_init_list, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %cmp163.not = icmp eq i32 %call162, 0
  br i1 %cmp163.not, label %if.then160.if.end170_crit_edge, label %do.end167

if.then160.if.end170_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

do.end167:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call162) #12
  br label %if.end170

if.end170:                                        ; preds = %do.end167, %if.then160.if.end170_crit_edge, %if.end157.if.end170_crit_edge
  %45 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap133, align 4
  %call.i509 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 160, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %pdata173 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %pdata173 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pdata173, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool175.not = icmp eq i8 %48, 0
  br i1 %tobool175.not, label %if.end170.if.end179_crit_edge, label %if.then176

if.end170.if.end179_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then176:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap133, align 4
  %call.i510 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 13, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end179

if.end179:                                        ; preds = %if.then176, %if.end170.if.end179_crit_edge
  %dmic1_data_pin181 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %dmic1_data_pin181 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dmic1_data_pin181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool182.not = icmp eq i32 %52, 0
  br i1 %tobool182.not, label %lor.lhs.false, label %if.end179.if.then186_crit_edge

if.end179.if.then186_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then186

lor.lhs.false:                                    ; preds = %if.end179
  %dmic2_data_pin184 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %dmic2_data_pin184 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dmic2_data_pin184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool185.not = icmp eq i32 %54, 0
  br i1 %tobool185.not, label %lor.lhs.false.if.end189_crit_edge, label %lor.lhs.false.if.then186_crit_edge

lor.lhs.false.if.then186_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then186

lor.lhs.false.if.end189_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then186:                                       ; preds = %lor.lhs.false.if.then186_crit_edge, %if.end179.if.then186_crit_edge
  %55 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap133, align 4
  %call.i511 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 192, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %lor.lhs.false.if.end189_crit_edge
  %57 = ptrtoint ptr %dmic1_data_pin181 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dmic1_data_pin181, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.522)
  switch i32 %58, label %if.end189.sw.epilog208_crit_edge [
    i32 1, label %sw.bb192
    i32 2, label %sw.bb195
    i32 3, label %sw.bb202
  ]

if.end189.sw.epilog208_crit_edge:                 ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog208

sw.bb192:                                         ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap133, align 4
  %call.i512 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 117, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog208

sw.bb195:                                         ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap133, align 4
  %call.i513 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 192, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %64 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap133, align 4
  %call.i514 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 117, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %66 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap133, align 4
  %call.i515 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 192, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog208

sw.bb202:                                         ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap133, align 4
  %call.i516 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 117, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %70 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap133, align 4
  %call.i517 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 192, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog208

sw.epilog208:                                     ; preds = %sw.bb202, %sw.bb195, %sw.bb192, %if.end189.sw.epilog208_crit_edge
  %dmic2_data_pin210 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %dmic2_data_pin210 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dmic2_data_pin210, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.523)
  switch i32 %73, label %sw.epilog208.sw.epilog230_crit_edge [
    i32 1, label %sw.bb211
    i32 2, label %sw.bb214
    i32 3, label %sw.bb219
    i32 4, label %sw.bb224
  ]

sw.epilog208.sw.epilog230_crit_edge:              ; preds = %sw.epilog208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog230

sw.bb211:                                         ; preds = %sw.epilog208
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap133, align 4
  %call.i518 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 117, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.bb214:                                         ; preds = %sw.epilog208
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap133, align 4
  %call.i519 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 117, i32 noundef 3072, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %79 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap133, align 4
  %call.i520 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 192, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.bb219:                                         ; preds = %sw.epilog208
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap133, align 4
  %call.i521 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 117, i32 noundef 3072, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %83 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap133, align 4
  %call.i522 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 192, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.bb224:                                         ; preds = %sw.epilog208
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap133, align 4
  %call.i523 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 117, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %87 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap133, align 4
  %call.i524 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 192, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.epilog230:                                     ; preds = %sw.bb224, %sw.bb219, %sw.bb214, %sw.bb211, %sw.epilog208.sw.epilog230_crit_edge
  %jd_mode232 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 3
  %89 = ptrtoint ptr %jd_mode232 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %jd_mode232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool233.not = icmp eq i32 %90, 0
  br i1 %tobool233.not, label %sw.epilog230.if.end269_crit_edge, label %if.then234

sw.epilog230.if.end269_crit_edge:                 ; preds = %sw.epilog230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269

if.then234:                                       ; preds = %sw.epilog230
  %91 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap133, align 4
  %call.i525 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 252, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %93 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap133, align 4
  %call.i526 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 147, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %95 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap133, align 4
  %call.i527 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 189, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %97 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap133, align 4
  %call.i528 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 252, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %99 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap133, align 4
  %call.i529 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 69, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %101 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap133, align 4
  %call.i530 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 147, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %103 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap133, align 4
  %call.i531 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %105 = ptrtoint ptr %jd_mode232 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %jd_mode232, align 4
  %switch.tableidx = add i32 %106, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %107 = icmp ult i32 %switch.tableidx, 4
  br i1 %107, label %switch.lookup, label %if.then234.sw.epilog261_crit_edge

if.then234.sw.epilog261_crit_edge:                ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog261

switch.lookup:                                    ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rt5645_i2c_probe, i32 0, i32 %switch.tableidx
  %108 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load = load i32, ptr %switch.gep, align 4
  %109 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap133, align 4
  %call.i534 = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 148, i32 noundef 3, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog261

sw.epilog261:                                     ; preds = %switch.lookup, %if.then234.sw.epilog261_crit_edge
  %inv_jd1_1263 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 5
  %111 = ptrtoint ptr %inv_jd1_1263 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %inv_jd1_1263, align 1, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool264.not = icmp eq i8 %112, 0
  br i1 %tobool264.not, label %sw.epilog261.if.end269_crit_edge, label %if.then265

sw.epilog261.if.end269_crit_edge:                 ; preds = %sw.epilog261
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269

if.then265:                                       ; preds = %sw.epilog261
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap133, align 4
  %call.i535 = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 189, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end269

if.end269:                                        ; preds = %if.then265, %sw.epilog261.if.end269_crit_edge, %sw.epilog230.if.end269_crit_edge
  %115 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap133, align 4
  %call.i536 = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 115, i32 noundef 28672, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %level_trigger_irq273 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 1, i32 4
  %117 = ptrtoint ptr %level_trigger_irq273 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %level_trigger_irq273, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool274.not = icmp eq i8 %118, 0
  br i1 %tobool274.not, label %if.end269.do.body279_crit_edge, label %if.then275

if.end269.do.body279_crit_edge:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body279

if.then275:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %regmap133 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap133, align 4
  %call.i537 = call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 189, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %do.body279

do.body279:                                       ; preds = %if.then275, %if.end269.do.body279_crit_edge
  %btn_check_timer = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 12
  call void @init_timer_key(ptr noundef %btn_check_timer, ptr noundef nonnull @rt5645_btn_check_callback, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @rt5645_i2c_probe.__key) #9
  %jack_detect_work = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #9
  %121 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.43, ptr noundef nonnull @rt5645_i2c_probe.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry290 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %122 = ptrtoint ptr %entry290 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %entry290, ptr %entry290, align 4
  %prev.i = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %entry290, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %124 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @rt5645_jack_detect_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.45, ptr noundef nonnull @rt5645_i2c_probe.__key.44) #9
  %rcclock_work = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 9
  call void @__init_work(ptr noundef %rcclock_work, i32 noundef 0) #9
  %125 = ptrtoint ptr %rcclock_work to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -64, ptr %rcclock_work, align 4
  %lockdep_map311 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map311, ptr noundef nonnull @.str.47, ptr noundef nonnull @rt5645_i2c_probe.__key.46, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry314 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %126 = ptrtoint ptr %entry314 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %entry314, ptr %entry314, align 4
  %prev.i538 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %prev.i538 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %entry314, ptr %prev.i538, align 4
  %func317 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %128 = ptrtoint ptr %func317 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @rt5645_rcclock_work, ptr %func317, align 4
  %timer322 = getelementptr inbounds %struct.rt5645_priv, ptr %call.i, i32 0, i32 9, i32 1
  call void @init_timer_key(ptr noundef %timer322, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.49, ptr noundef nonnull @rt5645_i2c_probe.__key.48) #9
  %129 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i2c1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool328.not = icmp eq i32 %132, 0
  br i1 %tobool328.not, label %do.body279.if.end340_crit_edge, label %if.then329

do.body279.if.end340_crit_edge:                   ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end340

if.then329:                                       ; preds = %do.body279
  %call332 = call i32 @request_threaded_irq(i32 noundef %132, ptr noundef null, ptr noundef nonnull @rt5645_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %if.then329.if.end340_crit_edge, label %do.end337

if.then329.if.end340_crit_edge:                   ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end340

do.end337:                                        ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call332) #12
  br label %err_enable

if.end340:                                        ; preds = %if.then329.if.end340_crit_edge, %do.body279.if.end340_crit_edge
  %call342 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5645, ptr noundef nonnull @rt5645_dai, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end340.cleanup_crit_edge, label %err_irq

if.end340.cleanup_crit_edge:                      ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_irq:                                          ; preds = %if.end340
  %133 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c1, align 4
  %irq347 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 6
  %135 = ptrtoint ptr %irq347 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %irq347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool348.not = icmp eq i32 %136, 0
  br i1 %tobool348.not, label %err_irq.err_enable_crit_edge, label %if.then349

err_irq.err_enable_crit_edge:                     ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_enable

if.then349:                                       ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #11
  %call352 = call ptr @free_irq(i32 noundef %136, ptr noundef nonnull %call.i) #9
  br label %err_enable

err_enable:                                       ; preds = %if.then349, %err_irq.err_enable_crit_edge, %do.end337, %do.end131
  %ret.0 = phi i32 [ -19, %do.end131 ], [ %call332, %do.end337 ], [ %call342, %if.then349 ], [ %call342, %err_irq.err_enable_crit_edge ]
  %call356 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx89) #9
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end340.cleanup_crit_edge, %if.then135, %if.then113, %do.end107, %do.end97, %do.end80.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call92, %do.end97 ], [ %call102, %do.end107 ], [ %27, %if.then113 ], [ %ret.0, %err_enable ], [ %33, %if.then135 ], [ -12, %entry.cleanup_crit_edge ], [ %24, %do.end80.cleanup_crit_edge ], [ 0, %if.end340.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_i2c_remove(ptr nocapture noundef readonly %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %jack_detect_work = getelementptr inbounds %struct.rt5645_priv, ptr %1, i32 0, i32 8
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #9
  %rcclock_work = getelementptr inbounds %struct.rt5645_priv, ptr %1, i32 0, i32 9
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rcclock_work) #9
  %btn_check_timer = getelementptr inbounds %struct.rt5645_priv, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @del_timer_sync(ptr noundef %btn_check_timer) #9
  %supplies = getelementptr inbounds %struct.rt5645_priv, ptr %1, i32 0, i32 10
  %call6 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5645_i2c_shutdown(ptr nocapture noundef readonly %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 252, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 11, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 10, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @msleep(i32 noundef 20) #9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5645_btn_check_callback(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr i8, ptr %t, i32 -228
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %jack_detect_work, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5645_jack_detect_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %jd_mode = getelementptr i8, ptr %work, i32 -40
  %2 = ptrtoint ptr %jd_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jd_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.524)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %gpiod_hp_det = getelementptr i8, ptr %work, i32 -16
  %5 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpiod_hp_det, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %sw.bb.if.end18_crit_edge, label %if.then2

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then2:                                         ; preds = %sw.bb
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %6) #9
  %inv_hp_pol = getelementptr i8, ptr %work, i32 -34
  %7 = ptrtoint ptr %inv_hp_pol to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %inv_hp_pol, align 2, !range !1178
  %9 = zext i8 %8 to i32
  %spec.select = xor i32 %call, %9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_jack_detect_work.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_jack_detect_work, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !1179

if.then13:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_jack_detect_work.__UNIQUE_ID_ddebug306, ptr noundef %13, ptr noundef nonnull @.str.81, i32 noundef %spec.select) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.then2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call17 = tail call fastcc i32 @rt5645_jack_detect(ptr noundef %15, i32 noundef %spec.select)
  br label %if.end18

if.end18:                                         ; preds = %do.end, %sw.bb.if.end18_crit_edge
  %report.0 = phi i32 [ %call17, %do.end ], [ 0, %sw.bb.if.end18_crit_edge ]
  %hp_jack = getelementptr i8, ptr %work, i32 -12
  %16 = ptrtoint ptr %hp_jack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hp_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %17, i32 noundef %report.0, i32 noundef 1) #9
  %mic_jack = getelementptr i8, ptr %work, i32 -8
  %18 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mic_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %19, i32 noundef %report.0, i32 noundef 2) #9
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge
  %.sink123 = phi i32 [ 191, %sw.default ], [ 148, %if.end.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 4096, %sw.default ], [ 32, %if.end.sw.epilog_crit_edge ]
  %call23 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %1, i32 noundef %.sink123) #9
  %and24 = and i32 %call23, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %sw.epilog
  %jack_type = getelementptr i8, ptr %work, i32 324
  %20 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  br i1 %cmp, label %if.then26, label %if.then33

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call fastcc i32 @rt5645_jack_detect(ptr noundef %23, i32 noundef 1)
  br label %if.end69

if.then33:                                        ; preds = %land.lhs.true
  %call35 = tail call i32 @snd_soc_component_read(ptr noundef %23, i32 noundef 191) #9
  %and36 = and i32 %call35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then33.if.then57_crit_edge, label %if.then38

if.then33.if.then57_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.then38:                                        ; preds = %if.then33
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %25, i32 noundef 223) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_button_detect.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_jack_detect_work, %if.then.i)) #9
          to label %rt5645_button_detect.exit [label %if.then.i], !srcloc !1179

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt5645_button_detect.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.92, i32 noundef %call.i) #9
  br label %rt5645_button_detect.exit

rt5645_button_detect.exit:                        ; preds = %if.then.i, %if.then38
  %and.i = and i32 %call.i, 65520
  %call4.i = tail call i32 @snd_soc_component_write(ptr noundef %25, i32 noundef 223, i32 noundef %call.i) #9
  %trunc = trunc i32 %and.i to i16
  %26 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.525)
  switch i16 %trunc, label %do.end51 [
    i16 -32768, label %rt5645_button_detect.exit.if.else59_crit_edge
    i16 16384, label %rt5645_button_detect.exit.if.else59_crit_edge124
    i16 8192, label %rt5645_button_detect.exit.if.else59_crit_edge125
    i16 4096, label %rt5645_button_detect.exit.sw.bb42_crit_edge
    i16 2048, label %rt5645_button_detect.exit.sw.bb42_crit_edge126
    i16 1024, label %rt5645_button_detect.exit.sw.bb42_crit_edge127
    i16 512, label %rt5645_button_detect.exit.sw.bb44_crit_edge
    i16 256, label %rt5645_button_detect.exit.sw.bb44_crit_edge128
    i16 128, label %rt5645_button_detect.exit.sw.bb44_crit_edge129
    i16 64, label %rt5645_button_detect.exit.sw.bb46_crit_edge
    i16 32, label %rt5645_button_detect.exit.sw.bb46_crit_edge130
    i16 16, label %rt5645_button_detect.exit.sw.bb46_crit_edge131
    i16 0, label %rt5645_button_detect.exit.if.then57_crit_edge
  ]

rt5645_button_detect.exit.if.then57_crit_edge:    ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

rt5645_button_detect.exit.sw.bb46_crit_edge131:   ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb46

rt5645_button_detect.exit.sw.bb46_crit_edge130:   ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb46

rt5645_button_detect.exit.sw.bb46_crit_edge:      ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb46

rt5645_button_detect.exit.sw.bb44_crit_edge129:   ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

rt5645_button_detect.exit.sw.bb44_crit_edge128:   ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

rt5645_button_detect.exit.sw.bb44_crit_edge:      ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

rt5645_button_detect.exit.sw.bb42_crit_edge127:   ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

rt5645_button_detect.exit.sw.bb42_crit_edge126:   ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

rt5645_button_detect.exit.sw.bb42_crit_edge:      ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

rt5645_button_detect.exit.if.else59_crit_edge125: ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59

rt5645_button_detect.exit.if.else59_crit_edge124: ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59

rt5645_button_detect.exit.if.else59_crit_edge:    ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59

sw.bb42:                                          ; preds = %rt5645_button_detect.exit.sw.bb42_crit_edge, %rt5645_button_detect.exit.sw.bb42_crit_edge126, %rt5645_button_detect.exit.sw.bb42_crit_edge127
  br label %if.else59

sw.bb44:                                          ; preds = %rt5645_button_detect.exit.sw.bb44_crit_edge, %rt5645_button_detect.exit.sw.bb44_crit_edge128, %rt5645_button_detect.exit.sw.bb44_crit_edge129
  br label %if.else59

sw.bb46:                                          ; preds = %rt5645_button_detect.exit.sw.bb46_crit_edge, %rt5645_button_detect.exit.sw.bb46_crit_edge130, %rt5645_button_detect.exit.sw.bb46_crit_edge131
  br label %if.else59

do.end51:                                         ; preds = %rt5645_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %dev53 = getelementptr inbounds %struct.snd_soc_component, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.82, i32 noundef %and.i) #12
  br label %if.else59

if.then57:                                        ; preds = %rt5645_button_detect.exit.if.then57_crit_edge, %if.then33.if.then57_crit_edge
  %31 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jack_type, align 4
  br label %if.end69

if.else59:                                        ; preds = %do.end51, %sw.bb46, %sw.bb44, %sw.bb42, %rt5645_button_detect.exit.if.else59_crit_edge, %rt5645_button_detect.exit.if.else59_crit_edge124, %rt5645_button_detect.exit.if.else59_crit_edge125
  %report.1.ph = phi i32 [ 8195, %sw.bb42 ], [ 4099, %sw.bb44 ], [ 2051, %sw.bb46 ], [ 3, %do.end51 ], [ 16387, %rt5645_button_detect.exit.if.else59_crit_edge ], [ 16387, %rt5645_button_detect.exit.if.else59_crit_edge124 ], [ 16387, %rt5645_button_detect.exit.if.else59_crit_edge125 ]
  %btn_check_timer = getelementptr i8, ptr %work, i32 228
  %call61 = tail call i32 @mod_timer(ptr noundef %btn_check_timer, i32 noundef 10) #9
  br label %if.end69

if.else63:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %call65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %34, i32 noundef 191, i32 noundef 1, i32 noundef 0) #9
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %call67 = tail call fastcc i32 @rt5645_jack_detect(ptr noundef %36, i32 noundef 0)
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.else59, %if.then57, %if.then26
  %report.2 = phi i32 [ 0, %if.else63 ], [ %32, %if.then57 ], [ %report.1.ph, %if.else59 ], [ %call28, %if.then26 ]
  %hp_jack70 = getelementptr i8, ptr %work, i32 -12
  %37 = ptrtoint ptr %hp_jack70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hp_jack70, align 4
  tail call void @snd_soc_jack_report(ptr noundef %38, i32 noundef %report.2, i32 noundef 1) #9
  %mic_jack71 = getelementptr i8, ptr %work, i32 -8
  %39 = ptrtoint ptr %mic_jack71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mic_jack71, align 4
  tail call void @snd_soc_jack_report(ptr noundef %40, i32 noundef %report.2, i32 noundef 2) #9
  %en_button_func = getelementptr i8, ptr %work, i32 328
  %41 = ptrtoint ptr %en_button_func to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %en_button_func, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool72.not = icmp eq i8 %42, 0
  br i1 %tobool72.not, label %if.end69.cleanup_crit_edge, label %if.then73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %btn_jack = getelementptr i8, ptr %work, i32 -4
  %43 = ptrtoint ptr %btn_jack to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %btn_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %44, i32 noundef %report.2, i32 noundef 30720) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end69.cleanup_crit_edge, %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5645_rcclock_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %work, i32 -124
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 147, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5645_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %0)
  %1 = icmp ult i32 %0, 249
  br i1 %1, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.526)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 1, label %for.end.cleanup_crit_edge9
    i32 2, label %for.end.cleanup_crit_edge10
    i32 3, label %for.end.cleanup_crit_edge11
    i32 10, label %for.end.cleanup_crit_edge12
    i32 11, label %for.end.cleanup_crit_edge13
    i32 12, label %for.end.cleanup_crit_edge14
    i32 13, label %for.end.cleanup_crit_edge15
    i32 15, label %for.end.cleanup_crit_edge16
    i32 20, label %for.end.cleanup_crit_edge17
    i32 22, label %for.end.cleanup_crit_edge18
    i32 25, label %for.end.cleanup_crit_edge19
    i32 26, label %for.end.cleanup_crit_edge20
    i32 27, label %for.end.cleanup_crit_edge21
    i32 28, label %for.end.cleanup_crit_edge22
    i32 29, label %for.end.cleanup_crit_edge23
    i32 30, label %for.end.cleanup_crit_edge24
    i32 32, label %for.end.cleanup_crit_edge25
    i32 39, label %for.end.cleanup_crit_edge26
    i32 40, label %for.end.cleanup_crit_edge27
    i32 41, label %for.end.cleanup_crit_edge28
    i32 42, label %for.end.cleanup_crit_edge29
    i32 43, label %for.end.cleanup_crit_edge30
    i32 44, label %for.end.cleanup_crit_edge31
    i32 45, label %for.end.cleanup_crit_edge32
    i32 47, label %for.end.cleanup_crit_edge33
    i32 49, label %for.end.cleanup_crit_edge34
    i32 59, label %for.end.cleanup_crit_edge35
    i32 60, label %for.end.cleanup_crit_edge36
    i32 61, label %for.end.cleanup_crit_edge37
    i32 62, label %for.end.cleanup_crit_edge38
    i32 63, label %for.end.cleanup_crit_edge39
    i32 64, label %for.end.cleanup_crit_edge40
    i32 65, label %for.end.cleanup_crit_edge41
    i32 66, label %for.end.cleanup_crit_edge42
    i32 69, label %for.end.cleanup_crit_edge43
    i32 70, label %for.end.cleanup_crit_edge44
    i32 71, label %for.end.cleanup_crit_edge45
    i32 72, label %for.end.cleanup_crit_edge46
    i32 74, label %for.end.cleanup_crit_edge47
    i32 79, label %for.end.cleanup_crit_edge48
    i32 82, label %for.end.cleanup_crit_edge49
    i32 77, label %for.end.cleanup_crit_edge50
    i32 78, label %for.end.cleanup_crit_edge51
    i32 80, label %for.end.cleanup_crit_edge52
    i32 81, label %for.end.cleanup_crit_edge53
    i32 83, label %for.end.cleanup_crit_edge54
    i32 86, label %for.end.cleanup_crit_edge55
    i32 87, label %for.end.cleanup_crit_edge56
    i32 88, label %for.end.cleanup_crit_edge57
    i32 89, label %for.end.cleanup_crit_edge58
    i32 90, label %for.end.cleanup_crit_edge59
    i32 91, label %for.end.cleanup_crit_edge60
    i32 92, label %for.end.cleanup_crit_edge61
    i32 93, label %for.end.cleanup_crit_edge62
    i32 94, label %for.end.cleanup_crit_edge63
    i32 95, label %for.end.cleanup_crit_edge64
    i32 97, label %for.end.cleanup_crit_edge65
    i32 98, label %for.end.cleanup_crit_edge66
    i32 99, label %for.end.cleanup_crit_edge67
    i32 100, label %for.end.cleanup_crit_edge68
    i32 101, label %for.end.cleanup_crit_edge69
    i32 102, label %for.end.cleanup_crit_edge70
    i32 106, label %for.end.cleanup_crit_edge71
    i32 108, label %for.end.cleanup_crit_edge72
    i32 112, label %for.end.cleanup_crit_edge73
    i32 113, label %for.end.cleanup_crit_edge74
    i32 115, label %for.end.cleanup_crit_edge75
    i32 116, label %for.end.cleanup_crit_edge76
    i32 117, label %for.end.cleanup_crit_edge77
    i32 118, label %for.end.cleanup_crit_edge78
    i32 119, label %for.end.cleanup_crit_edge79
    i32 120, label %for.end.cleanup_crit_edge80
    i32 121, label %for.end.cleanup_crit_edge81
    i32 122, label %for.end.cleanup_crit_edge82
    i32 128, label %for.end.cleanup_crit_edge83
    i32 129, label %for.end.cleanup_crit_edge84
    i32 130, label %for.end.cleanup_crit_edge85
    i32 131, label %for.end.cleanup_crit_edge86
    i32 132, label %for.end.cleanup_crit_edge87
    i32 133, label %for.end.cleanup_crit_edge88
    i32 138, label %for.end.cleanup_crit_edge89
    i32 142, label %for.end.cleanup_crit_edge90
    i32 143, label %for.end.cleanup_crit_edge91
    i32 144, label %for.end.cleanup_crit_edge92
    i32 145, label %for.end.cleanup_crit_edge93
    i32 147, label %for.end.cleanup_crit_edge94
    i32 148, label %for.end.cleanup_crit_edge95
    i32 157, label %for.end.cleanup_crit_edge96
    i32 160, label %for.end.cleanup_crit_edge97
    i32 174, label %for.end.cleanup_crit_edge98
    i32 175, label %for.end.cleanup_crit_edge99
    i32 176, label %for.end.cleanup_crit_edge100
    i32 177, label %for.end.cleanup_crit_edge101
    i32 179, label %for.end.cleanup_crit_edge102
    i32 180, label %for.end.cleanup_crit_edge103
    i32 181, label %for.end.cleanup_crit_edge104
    i32 182, label %for.end.cleanup_crit_edge105
    i32 183, label %for.end.cleanup_crit_edge106
    i32 187, label %for.end.cleanup_crit_edge107
    i32 188, label %for.end.cleanup_crit_edge108
    i32 189, label %for.end.cleanup_crit_edge109
    i32 190, label %for.end.cleanup_crit_edge110
    i32 191, label %for.end.cleanup_crit_edge111
    i32 192, label %for.end.cleanup_crit_edge112
    i32 193, label %for.end.cleanup_crit_edge113
    i32 194, label %for.end.cleanup_crit_edge114
    i32 207, label %for.end.cleanup_crit_edge115
    i32 208, label %for.end.cleanup_crit_edge116
    i32 209, label %for.end.cleanup_crit_edge117
    i32 211, label %for.end.cleanup_crit_edge118
    i32 212, label %for.end.cleanup_crit_edge119
    i32 214, label %for.end.cleanup_crit_edge120
    i32 217, label %for.end.cleanup_crit_edge121
    i32 218, label %for.end.cleanup_crit_edge122
    i32 219, label %for.end.cleanup_crit_edge123
    i32 220, label %for.end.cleanup_crit_edge124
    i32 221, label %for.end.cleanup_crit_edge125
    i32 223, label %for.end.cleanup_crit_edge126
    i32 224, label %for.end.cleanup_crit_edge127
    i32 231, label %for.end.cleanup_crit_edge128
    i32 233, label %for.end.cleanup_crit_edge129
    i32 236, label %for.end.cleanup_crit_edge130
    i32 237, label %for.end.cleanup_crit_edge131
    i32 240, label %for.end.cleanup_crit_edge132
    i32 241, label %for.end.cleanup_crit_edge133
    i32 242, label %for.end.cleanup_crit_edge134
    i32 243, label %for.end.cleanup_crit_edge135
    i32 244, label %for.end.cleanup_crit_edge136
    i32 248, label %for.end.cleanup_crit_edge137
    i32 249, label %for.end.cleanup_crit_edge138
    i32 250, label %for.end.cleanup_crit_edge139
    i32 251, label %for.end.cleanup_crit_edge140
    i32 252, label %for.end.cleanup_crit_edge141
    i32 253, label %for.end.cleanup_crit_edge142
    i32 254, label %for.end.cleanup_crit_edge143
    i32 255, label %for.end.cleanup_crit_edge144
  ]

for.end.cleanup_crit_edge144:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge143:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge142:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge141:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge140:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge139:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge138:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge137:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge136:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge135:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge134:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge133:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge132:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge131:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge130:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge129:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge128:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge127:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge126:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge125:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge124:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge123:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge122:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge121:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge120:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge119:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge118:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge117:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge116:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge115:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge114:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge113:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge112:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge111:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge110:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge109:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge108:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge107:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge106:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge105:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge104:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge103:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge102:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge101:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge100:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge99:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge98:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge97:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge96:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge95:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge94:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge93:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge92:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge91:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge90:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge89:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge88:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge87:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge86:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge85:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge84:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge83:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge82:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge81:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge80:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge79:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge77:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge76:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge75:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge74:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge73:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge72:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge71:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge70:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge69:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge68:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge67:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge66:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge65:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge64:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge63:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge62:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge61:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge60:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge59:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge58:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge57:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge56:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge55:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge54:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge53:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge52:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge51:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge50:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge49:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge48:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge47:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge46:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge45:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge44:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge43:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge42:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge41:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge40:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge39:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge38:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge37:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge36:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge35:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge34:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge33:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge32:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge22:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge21:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge20:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge19:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge18:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge17:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge16:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge15:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge14:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge13:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge12:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge11:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge10:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge9:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge9, %for.end.cleanup_crit_edge10, %for.end.cleanup_crit_edge11, %for.end.cleanup_crit_edge12, %for.end.cleanup_crit_edge13, %for.end.cleanup_crit_edge14, %for.end.cleanup_crit_edge15, %for.end.cleanup_crit_edge16, %for.end.cleanup_crit_edge17, %for.end.cleanup_crit_edge18, %for.end.cleanup_crit_edge19, %for.end.cleanup_crit_edge20, %for.end.cleanup_crit_edge21, %for.end.cleanup_crit_edge22, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %for.end.cleanup_crit_edge48, %for.end.cleanup_crit_edge49, %for.end.cleanup_crit_edge50, %for.end.cleanup_crit_edge51, %for.end.cleanup_crit_edge52, %for.end.cleanup_crit_edge53, %for.end.cleanup_crit_edge54, %for.end.cleanup_crit_edge55, %for.end.cleanup_crit_edge56, %for.end.cleanup_crit_edge57, %for.end.cleanup_crit_edge58, %for.end.cleanup_crit_edge59, %for.end.cleanup_crit_edge60, %for.end.cleanup_crit_edge61, %for.end.cleanup_crit_edge62, %for.end.cleanup_crit_edge63, %for.end.cleanup_crit_edge64, %for.end.cleanup_crit_edge65, %for.end.cleanup_crit_edge66, %for.end.cleanup_crit_edge67, %for.end.cleanup_crit_edge68, %for.end.cleanup_crit_edge69, %for.end.cleanup_crit_edge70, %for.end.cleanup_crit_edge71, %for.end.cleanup_crit_edge72, %for.end.cleanup_crit_edge73, %for.end.cleanup_crit_edge74, %for.end.cleanup_crit_edge75, %for.end.cleanup_crit_edge76, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %for.end.cleanup_crit_edge84, %for.end.cleanup_crit_edge85, %for.end.cleanup_crit_edge86, %for.end.cleanup_crit_edge87, %for.end.cleanup_crit_edge88, %for.end.cleanup_crit_edge89, %for.end.cleanup_crit_edge90, %for.end.cleanup_crit_edge91, %for.end.cleanup_crit_edge92, %for.end.cleanup_crit_edge93, %for.end.cleanup_crit_edge94, %for.end.cleanup_crit_edge95, %for.end.cleanup_crit_edge96, %for.end.cleanup_crit_edge97, %for.end.cleanup_crit_edge98, %for.end.cleanup_crit_edge99, %for.end.cleanup_crit_edge100, %for.end.cleanup_crit_edge101, %for.end.cleanup_crit_edge102, %for.end.cleanup_crit_edge103, %for.end.cleanup_crit_edge104, %for.end.cleanup_crit_edge105, %for.end.cleanup_crit_edge106, %for.end.cleanup_crit_edge107, %for.end.cleanup_crit_edge108, %for.end.cleanup_crit_edge109, %for.end.cleanup_crit_edge110, %for.end.cleanup_crit_edge111, %for.end.cleanup_crit_edge112, %for.end.cleanup_crit_edge113, %for.end.cleanup_crit_edge114, %for.end.cleanup_crit_edge115, %for.end.cleanup_crit_edge116, %for.end.cleanup_crit_edge117, %for.end.cleanup_crit_edge118, %for.end.cleanup_crit_edge119, %for.end.cleanup_crit_edge120, %for.end.cleanup_crit_edge121, %for.end.cleanup_crit_edge122, %for.end.cleanup_crit_edge123, %for.end.cleanup_crit_edge124, %for.end.cleanup_crit_edge125, %for.end.cleanup_crit_edge126, %for.end.cleanup_crit_edge127, %for.end.cleanup_crit_edge128, %for.end.cleanup_crit_edge129, %for.end.cleanup_crit_edge130, %for.end.cleanup_crit_edge131, %for.end.cleanup_crit_edge132, %for.end.cleanup_crit_edge133, %for.end.cleanup_crit_edge134, %for.end.cleanup_crit_edge135, %for.end.cleanup_crit_edge136, %for.end.cleanup_crit_edge137, %for.end.cleanup_crit_edge138, %for.end.cleanup_crit_edge139, %for.end.cleanup_crit_edge140, %for.end.cleanup_crit_edge141, %for.end.cleanup_crit_edge142, %for.end.cleanup_crit_edge143, %for.end.cleanup_crit_edge144, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge9 ], [ true, %for.end.cleanup_crit_edge10 ], [ true, %for.end.cleanup_crit_edge11 ], [ true, %for.end.cleanup_crit_edge12 ], [ true, %for.end.cleanup_crit_edge13 ], [ true, %for.end.cleanup_crit_edge14 ], [ true, %for.end.cleanup_crit_edge15 ], [ true, %for.end.cleanup_crit_edge16 ], [ true, %for.end.cleanup_crit_edge17 ], [ true, %for.end.cleanup_crit_edge18 ], [ true, %for.end.cleanup_crit_edge19 ], [ true, %for.end.cleanup_crit_edge20 ], [ true, %for.end.cleanup_crit_edge21 ], [ true, %for.end.cleanup_crit_edge22 ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ], [ true, %for.end.cleanup_crit_edge48 ], [ true, %for.end.cleanup_crit_edge49 ], [ true, %for.end.cleanup_crit_edge50 ], [ true, %for.end.cleanup_crit_edge51 ], [ true, %for.end.cleanup_crit_edge52 ], [ true, %for.end.cleanup_crit_edge53 ], [ true, %for.end.cleanup_crit_edge54 ], [ true, %for.end.cleanup_crit_edge55 ], [ true, %for.end.cleanup_crit_edge56 ], [ true, %for.end.cleanup_crit_edge57 ], [ true, %for.end.cleanup_crit_edge58 ], [ true, %for.end.cleanup_crit_edge59 ], [ true, %for.end.cleanup_crit_edge60 ], [ true, %for.end.cleanup_crit_edge61 ], [ true, %for.end.cleanup_crit_edge62 ], [ true, %for.end.cleanup_crit_edge63 ], [ true, %for.end.cleanup_crit_edge64 ], [ true, %for.end.cleanup_crit_edge65 ], [ true, %for.end.cleanup_crit_edge66 ], [ true, %for.end.cleanup_crit_edge67 ], [ true, %for.end.cleanup_crit_edge68 ], [ true, %for.end.cleanup_crit_edge69 ], [ true, %for.end.cleanup_crit_edge70 ], [ true, %for.end.cleanup_crit_edge71 ], [ true, %for.end.cleanup_crit_edge72 ], [ true, %for.end.cleanup_crit_edge73 ], [ true, %for.end.cleanup_crit_edge74 ], [ true, %for.end.cleanup_crit_edge75 ], [ true, %for.end.cleanup_crit_edge76 ], [ true, %for.end.cleanup_crit_edge77 ], [ true, %for.end.cleanup_crit_edge78 ], [ true, %for.end.cleanup_crit_edge79 ], [ true, %for.end.cleanup_crit_edge80 ], [ true, %for.end.cleanup_crit_edge81 ], [ true, %for.end.cleanup_crit_edge82 ], [ true, %for.end.cleanup_crit_edge83 ], [ true, %for.end.cleanup_crit_edge84 ], [ true, %for.end.cleanup_crit_edge85 ], [ true, %for.end.cleanup_crit_edge86 ], [ true, %for.end.cleanup_crit_edge87 ], [ true, %for.end.cleanup_crit_edge88 ], [ true, %for.end.cleanup_crit_edge89 ], [ true, %for.end.cleanup_crit_edge90 ], [ true, %for.end.cleanup_crit_edge91 ], [ true, %for.end.cleanup_crit_edge92 ], [ true, %for.end.cleanup_crit_edge93 ], [ true, %for.end.cleanup_crit_edge94 ], [ true, %for.end.cleanup_crit_edge95 ], [ true, %for.end.cleanup_crit_edge96 ], [ true, %for.end.cleanup_crit_edge97 ], [ true, %for.end.cleanup_crit_edge98 ], [ true, %for.end.cleanup_crit_edge99 ], [ true, %for.end.cleanup_crit_edge100 ], [ true, %for.end.cleanup_crit_edge101 ], [ true, %for.end.cleanup_crit_edge102 ], [ true, %for.end.cleanup_crit_edge103 ], [ true, %for.end.cleanup_crit_edge104 ], [ true, %for.end.cleanup_crit_edge105 ], [ true, %for.end.cleanup_crit_edge106 ], [ true, %for.end.cleanup_crit_edge107 ], [ true, %for.end.cleanup_crit_edge108 ], [ true, %for.end.cleanup_crit_edge109 ], [ true, %for.end.cleanup_crit_edge110 ], [ true, %for.end.cleanup_crit_edge111 ], [ true, %for.end.cleanup_crit_edge112 ], [ true, %for.end.cleanup_crit_edge113 ], [ true, %for.end.cleanup_crit_edge114 ], [ true, %for.end.cleanup_crit_edge115 ], [ true, %for.end.cleanup_crit_edge116 ], [ true, %for.end.cleanup_crit_edge117 ], [ true, %for.end.cleanup_crit_edge118 ], [ true, %for.end.cleanup_crit_edge119 ], [ true, %for.end.cleanup_crit_edge120 ], [ true, %for.end.cleanup_crit_edge121 ], [ true, %for.end.cleanup_crit_edge122 ], [ true, %for.end.cleanup_crit_edge123 ], [ true, %for.end.cleanup_crit_edge124 ], [ true, %for.end.cleanup_crit_edge125 ], [ true, %for.end.cleanup_crit_edge126 ], [ true, %for.end.cleanup_crit_edge127 ], [ true, %for.end.cleanup_crit_edge128 ], [ true, %for.end.cleanup_crit_edge129 ], [ true, %for.end.cleanup_crit_edge130 ], [ true, %for.end.cleanup_crit_edge131 ], [ true, %for.end.cleanup_crit_edge132 ], [ true, %for.end.cleanup_crit_edge133 ], [ true, %for.end.cleanup_crit_edge134 ], [ true, %for.end.cleanup_crit_edge135 ], [ true, %for.end.cleanup_crit_edge136 ], [ true, %for.end.cleanup_crit_edge137 ], [ true, %for.end.cleanup_crit_edge138 ], [ true, %for.end.cleanup_crit_edge139 ], [ true, %for.end.cleanup_crit_edge140 ], [ true, %for.end.cleanup_crit_edge141 ], [ true, %for.end.cleanup_crit_edge142 ], [ true, %for.end.cleanup_crit_edge143 ], [ true, %for.end.cleanup_crit_edge144 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5645_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %0)
  %1 = icmp ult i32 %0, 249
  br i1 %1, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.527)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 106, label %for.end.cleanup_crit_edge9
    i32 108, label %for.end.cleanup_crit_edge10
    i32 10, label %for.end.cleanup_crit_edge11
    i32 11, label %for.end.cleanup_crit_edge12
    i32 12, label %for.end.cleanup_crit_edge13
    i32 148, label %for.end.cleanup_crit_edge14
    i32 174, label %for.end.cleanup_crit_edge15
    i32 176, label %for.end.cleanup_crit_edge16
    i32 179, label %for.end.cleanup_crit_edge17
    i32 189, label %for.end.cleanup_crit_edge18
    i32 190, label %for.end.cleanup_crit_edge19
    i32 191, label %for.end.cleanup_crit_edge20
    i32 219, label %for.end.cleanup_crit_edge21
    i32 223, label %for.end.cleanup_crit_edge22
    i32 253, label %for.end.cleanup_crit_edge23
    i32 254, label %for.end.cleanup_crit_edge24
    i32 255, label %for.end.cleanup_crit_edge25
  ]

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge22:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge21:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge20:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge19:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge18:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge17:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge16:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge15:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge14:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge13:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge12:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge11:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge10:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge9:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge9, %for.end.cleanup_crit_edge10, %for.end.cleanup_crit_edge11, %for.end.cleanup_crit_edge12, %for.end.cleanup_crit_edge13, %for.end.cleanup_crit_edge14, %for.end.cleanup_crit_edge15, %for.end.cleanup_crit_edge16, %for.end.cleanup_crit_edge17, %for.end.cleanup_crit_edge18, %for.end.cleanup_crit_edge19, %for.end.cleanup_crit_edge20, %for.end.cleanup_crit_edge21, %for.end.cleanup_crit_edge22, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge9 ], [ true, %for.end.cleanup_crit_edge10 ], [ true, %for.end.cleanup_crit_edge11 ], [ true, %for.end.cleanup_crit_edge12 ], [ true, %for.end.cleanup_crit_edge13 ], [ true, %for.end.cleanup_crit_edge14 ], [ true, %for.end.cleanup_crit_edge15 ], [ true, %for.end.cleanup_crit_edge16 ], [ true, %for.end.cleanup_crit_edge17 ], [ true, %for.end.cleanup_crit_edge18 ], [ true, %for.end.cleanup_crit_edge19 ], [ true, %for.end.cleanup_crit_edge20 ], [ true, %for.end.cleanup_crit_edge21 ], [ true, %for.end.cleanup_crit_edge22 ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5645_jack_detect(ptr noundef %component, i32 noundef %jack_insert) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !1177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jack_insert)
  %tobool.not = icmp eq i32 %jack_insert, 0
  br i1 %tobool.not, label %if.else46, label %if.then

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 145, i32 noundef 3590) #9
  %call3 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.83) #9
  %call4 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.84) #9
  %call5 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %instantiated = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 56
  %9 = ptrtoint ptr %instantiated to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %instantiated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 99, i32 noundef 8208, i32 noundef 8208, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 101, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 102, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 248, i32 noundef 240) #9
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 11, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 10, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @msleep(i32 noundef 100) #9
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 11, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @msleep(i32 noundef 600) #9
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_read(ptr noundef %25, i32 noundef 12, ptr noundef nonnull %val) #9
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and = and i32 %27, 7
  store i32 %and, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_jack_detect.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_jack_detect, %if.then28)) #9
          to label %do.end [label %if.then28], !srcloc !1179

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_jack_detect.__UNIQUE_ID_ddebug304, ptr noundef %29, ptr noundef nonnull @.str.86, i32 noundef %31) #9
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.end
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %.off = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %no_headset_mic = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %no_headset_mic to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %no_headset_mic, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool31.not = icmp eq i8 %35, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true
  %jack_type = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 22
  %36 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %jack_type, align 4
  %en_button_func = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 23
  %37 = ptrtoint ptr %en_button_func to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %en_button_func, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool33.not = icmp eq i8 %38, 0
  br i1 %tobool33.not, label %if.then32.if.end39_crit_edge, label %if.then34

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rt5645_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext true)
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %call36 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.84) #9
  %call37 = call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  %jack_type38 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 22
  %39 = ptrtoint ptr %jack_type38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %jack_type38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then34, %if.then32.if.end39_crit_edge
  %level_trigger_irq = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %level_trigger_irq to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %level_trigger_irq, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool41.not = icmp eq i8 %41, 0
  br i1 %tobool41.not, label %if.end39.if.end72_crit_edge, label %if.then42

if.end39.if.end72_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call.i114 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 189, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end72

if.else46:                                        ; preds = %entry
  %jack_type47 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 22
  %44 = ptrtoint ptr %jack_type47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %jack_type47, align 4
  %regmap48 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap48, align 4
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 2, i32 noundef 32896, i32 noundef 32896, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %47 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap48, align 4
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 11, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %49 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap48, align 4
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 10, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %en_button_func54 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 23
  %51 = ptrtoint ptr %en_button_func54 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %en_button_func54, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool55.not = icmp eq i8 %52, 0
  br i1 %tobool55.not, label %if.else46.if.end57_crit_edge, label %if.then56

if.else46.if.end57_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then56:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 32768, i32 noundef 0) #9
  %call16.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 191, i32 noundef 8, i32 noundef 0) #9
  %call17.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.87) #9
  %call18.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.88) #9
  %call19.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.else46.if.end57_crit_edge
  %jd_mode = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %jd_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %jd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp59 = icmp eq i32 %54, 0
  br i1 %cmp59, label %if.then60, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.83) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %call63 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.84) #9
  %call64 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  %level_trigger_irq66 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %level_trigger_irq66 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %level_trigger_irq66, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool67.not = icmp eq i8 %56, 0
  br i1 %tobool67.not, label %if.end62.if.end72_crit_edge, label %if.then68

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %regmap48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap48, align 4
  %call.i118 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 189, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end62.if.end72_crit_edge, %if.then42, %if.end39.if.end72_crit_edge
  %jack_type73 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 22
  %59 = ptrtoint ptr %jack_type73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %jack_type73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt5645_enable_push_button_irq(ptr noundef %component, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.87) #9
  %call2 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.88) #9
  %call3 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 223, i32 noundef 3, i32 noundef 3) #9
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 191, i32 noundef 8, i32 noundef 8) #9
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 32768, i32 noundef 32768) #9
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 223) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_enable_push_button_irq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_enable_push_button_irq, %if.then13)) #9
          to label %if.end20 [label %if.then13], !srcloc !1179

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 223) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt5645_enable_push_button_irq.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef 223, i32 noundef %call14) #9
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 224, i32 noundef 32768, i32 noundef 0) #9
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 191, i32 noundef 8, i32 noundef 0) #9
  %call17 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.87) #9
  %call18 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.88) #9
  %call19 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %codec_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.528)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call3 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @rt5645_specific_dapm_widgets, i32 noundef 8) #9
  %call4 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5645_specific_dapm_routes, i32 noundef 44) #9
  %v_id = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %v_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp slt i32 %9, 3
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5645_old_dapm_routes, i32 noundef 2) #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @rt5650_specific_dapm_widgets, i32 noundef 12) #9
  %call8 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5650_specific_dapm_routes, i32 noundef 72) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i, i32 noundef 0) #9
  %jd_mode = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %jd_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %sw.epilog.if.end14_crit_edge, label %if.then10

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.140) #9
  %call12 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.83) #9
  %call13 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %sw.epilog.if.end14_crit_edge
  %long_name = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %long_name, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %long_name20 = getelementptr inbounds %struct.snd_soc_card, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %long_name20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %long_name20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 228, i32 noundef 3520) #9
  %eq_param = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %eq_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %eq_param, align 4
  %tobool24.not = icmp eq ptr %call5.i.i, null
  %. = select i1 %tobool24.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5645_remove(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_suspend(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_resume(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.529)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb5
    i32 0, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #9
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #9
  %dapm.i.i45 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %27 = ptrtoint ptr %dapm.i.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dapm.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then16, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb5
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 4416) #9
  tail call void @msleep(i32 noundef 40) #9
  %en_button_func = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 23
  %29 = ptrtoint ptr %en_button_func to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %en_button_func, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  br i1 %tobool18.not, label %if.then16.sw.epilog_crit_edge, label %if.then19

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %31 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %jack_detect_work, i32 noundef 0) #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 4352) #9
  %en_button_func26 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 23
  %32 = ptrtoint ptr %en_button_func26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %en_button_func26, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not = icmp eq i8 %33, 0
  br i1 %tobool27.not, label %if.then28, label %sw.bb24.if.end30_crit_edge

sw.bb24.if.end30_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 0) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %sw.bb24.if.end30_crit_edge
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 59416, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end30, %if.then19, %if.then16.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_spk_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 147, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %8 = load ptr, ptr @system_power_efficient_wq, align 4
  %rcclock_work = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 9
  %call.i7 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %rcclock_work, i32 noundef 20) #9
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rt5645_hweq_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 228, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_hweq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eq_param1 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %eq_param1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eq_param1, align 4
  %arrayidx = getelementptr %struct.rt5645_eq_param_s, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.rt5645_eq_param_s_be16, ptr %value, i32 %i.015
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx2, align 2
  %11 = load ptr, ptr %eq_param1, align 4
  %val = getelementptr %struct.rt5645_eq_param_s, ptr %11, i32 %i.015, i32 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %val7 = getelementptr %struct.rt5645_eq_param_s_be16, ptr %value, i32 %i.015, i32 1
  %14 = ptrtoint ptr %val7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %val7, align 2
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 57
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_hweq_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eq_param1 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 11
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %eq_param1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eq_param1, align 4
  br label %for.body10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.080 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rt5645_eq_param_s_be16, ptr %value, i32 %i.080
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = ptrtoint ptr %eq_param1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eq_param1, align 4
  %arrayidx2 = getelementptr %struct.rt5645_eq_param_s, ptr %11, i32 %i.080
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %9, ptr %arrayidx2, align 2
  %val = getelementptr %struct.rt5645_eq_param_s_be16, ptr %value, i32 %i.080, i32 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %val, align 2
  %15 = load ptr, ptr %eq_param1, align 4
  %val7 = getelementptr %struct.rt5645_eq_param_s, ptr %15, i32 %i.080, i32 1
  %16 = ptrtoint ptr %val7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %val7, align 2
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 57
  br i1 %exitcond.not, label %for.cond8.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body10:                                       ; preds = %for.inc24.for.body10_crit_edge, %for.cond8.preheader
  %i.181 = phi i32 [ 56, %for.cond8.preheader ], [ %dec, %for.inc24.for.body10_crit_edge ]
  %arrayidx12 = getelementptr %struct.rt5645_eq_param_s, ptr %7, i32 %i.181
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx12, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.530)
  switch i16 %18, label %for.body10.cleanup_crit_edge [
    i16 0, label %for.inc24
    i16 177, label %for.body10.for.end25_crit_edge
  ]

for.body10.for.end25_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc24:                                        ; preds = %for.body10
  %dec = add nsw i32 %i.181, -1
  %cmp9.not = icmp eq i32 %i.181, 0
  br i1 %cmp9.not, label %for.inc24.for.end25_crit_edge, label %for.inc24.for.body10_crit_edge

for.inc24.for.body10_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.inc24.for.end25_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.end25:                                        ; preds = %for.inc24.for.end25_crit_edge, %for.body10.for.end25_crit_edge
  %20 = ptrtoint ptr %eq_param1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eq_param1, align 4
  br label %for.body29

for.body29:                                       ; preds = %for.body29.backedge, %for.end25
  %i.282 = phi i32 [ 0, %for.end25 ], [ %i.282.be, %for.body29.backedge ]
  %arrayidx31 = getelementptr %struct.rt5645_eq_param_s, ptr %21, i32 %i.282
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx31, align 2
  %24 = add i16 %23, -420
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %24)
  %25 = icmp ult i16 %24, 42
  br i1 %25, label %for.inc50, label %rt5645_validate_hweq.exit

rt5645_validate_hweq.exit:                        ; preds = %for.body29
  %26 = add i16 %23, -485
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %26)
  %27 = icmp ult i16 %26, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 177, i16 %23)
  %cmp14.i = icmp eq i16 %23, 177
  %or.cond21.i = or i1 %cmp14.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %i.282)
  %cmp27 = icmp ult i32 %i.282, 56
  %or.cond = select i1 %or.cond21.i, i1 %cmp27, i1 false
  br i1 %or.cond, label %rt5645_validate_hweq.exit.for.body29.backedge_crit_edge, label %rt5645_validate_hweq.exit.cleanup_crit_edge

rt5645_validate_hweq.exit.cleanup_crit_edge:      ; preds = %rt5645_validate_hweq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rt5645_validate_hweq.exit.for.body29.backedge_crit_edge: ; preds = %rt5645_validate_hweq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.backedge

for.inc50:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %i.282)
  %cmp27.old = icmp ult i32 %i.282, 56
  br i1 %cmp27.old, label %for.inc50.for.body29.backedge_crit_edge, label %for.inc50.cleanup_crit_edge

for.inc50.cleanup_crit_edge:                      ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc50.for.body29.backedge_crit_edge:          ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.backedge

for.body29.backedge:                              ; preds = %for.inc50.for.body29.backedge_crit_edge, %rt5645_validate_hweq.exit.for.body29.backedge_crit_edge
  %i.282.be = add nuw nsw i32 %i.282, 1
  br label %for.body29

cleanup:                                          ; preds = %for.inc50.cleanup_crit_edge, %rt5645_validate_hweq.exit.cleanup_crit_edge, %for.body10.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_micbias1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.531)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 32, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 251, i32 noundef 32, i32 noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_micbias2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.532)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 16, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 251, i32 noundef 16, i32 noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dmic_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %sysclk = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @rl6231_get_pre_div(ptr noundef %9, i32 noundef 115, i32 noundef 12) #9
  %div = sdiv i32 %7, %call2
  %call3 = tail call i32 @rl6231_calc_dmic_clk(i32 noundef %div) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.284) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shl = shl i32 %call3, 5
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 117, i32 noundef 224, i32 noundef %shl) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_bst2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.533)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 32, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 32, i32 noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.534)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call fastcc void @hp_amp_power(ptr noundef %add.ptr.i, i32 noundef 1)
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 1911, i32 noundef 1847) #9
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 311, i32 noundef 64512) #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 32768, i32 noundef 32768) #9
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 64, i32 noundef 64) #9
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 832, i32 noundef 768) #9
  tail call void @msleep(i32 noundef 40) #9
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 772, i32 noundef 0) #9
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %codec_type9 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %codec_type9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %codec_type9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then11, label %sw.bb8.if.end18_crit_edge

sw.bb8.if.end18_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 144, i32 noundef 1911, i32 noundef 1590) #9
  %regmap13 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap13, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 311, i32 noundef 64512) #9
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 4, i32 noundef 4) #9
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 32, i32 noundef 32) #9
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 142, i32 noundef 800, i32 noundef 768) #9
  tail call void @msleep(i32 noundef 30) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %sw.bb8.if.end18_crit_edge
  tail call fastcc void @hp_amp_power(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_lout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.535)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hp_amp_power(ptr noundef %add.ptr.i, i32 noundef 1)
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 4096, i32 noundef 4096) #9
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 32896, i32 noundef 0) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 32896, i32 noundef 32896) #9
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 99, i32 noundef 4096, i32 noundef 0) #9
  tail call fastcc void @hp_amp_power(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_spk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.536)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %eq_param.i = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 11
  %regmap.i = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %sw.bb
  %i.02.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %eq_param.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eq_param.i, align 4
  %arrayidx.i = getelementptr %struct.rt5645_eq_param_s, ptr %8, i32 %i.02.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %11 = add i16 %10, -420
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %11)
  %12 = icmp ult i16 %11, 42
  br i1 %12, label %for.body.i.if.then.i_crit_edge, label %rt5645_validate_hweq.exit.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

rt5645_validate_hweq.exit.i:                      ; preds = %for.body.i
  %13 = add i16 %10, -485
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %13)
  %14 = icmp ult i16 %13, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 177, i16 %10)
  %cmp14.i.i = icmp eq i16 %10, 177
  %or.cond21.i.i = or i1 %cmp14.i.i, %14
  br i1 %or.cond21.i.i, label %rt5645_validate_hweq.exit.i.if.then.i_crit_edge, label %rt5645_validate_hweq.exit.i.rt5645_enable_hweq.exit_crit_edge

rt5645_validate_hweq.exit.i.rt5645_enable_hweq.exit_crit_edge: ; preds = %rt5645_validate_hweq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt5645_enable_hweq.exit

rt5645_validate_hweq.exit.i.if.then.i_crit_edge:  ; preds = %rt5645_validate_hweq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %rt5645_validate_hweq.exit.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i16 %10 to i32
  %val.i = getelementptr %struct.rt5645_eq_param_s, ptr %8, i32 %i.02.i, i32 1
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val.i, align 2
  %conv7.i = zext i16 %18 to i32
  %call8.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %conv.i, i32 noundef %conv7.i) #9
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 57
  br i1 %exitcond.not.i, label %if.then.i.rt5645_enable_hweq.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then.i.rt5645_enable_hweq.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt5645_enable_hweq.exit

rt5645_enable_hweq.exit:                          ; preds = %if.then.i.rt5645_enable_hweq.exit_crit_edge, %rt5645_validate_hweq.exit.i.rt5645_enable_hweq.exit_crit_edge
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 97, i32 noundef 769, i32 noundef 769) #9
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 252, i32 noundef 1536, i32 noundef 512) #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 252, i32 noundef 1536, i32 noundef 0) #9
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 177, i32 noundef 0) #9
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 97, i32 noundef 769, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %rt5645_enable_hweq.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_pre_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_calc_dmic_clk(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hp_amp_power(ptr noundef %component, i32 noundef %on) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !1177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %5 = load i32, ptr @hp_amp_power.hp_amp_power_count, align 4
  br i1 %tobool.not, label %if.else43, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then1:                                         ; preds = %if.then
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 12544) #9
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 145, i32 noundef 3590) #9
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 142, i32 noundef 13) #9
  %regmap = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 375, i32 noundef 40705) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3
  %i.098 = phi i32 [ 0, %if.then3 ], [ %inc, %for.body.for.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %11, i32 noundef 375, ptr noundef nonnull %val) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %inc = add nuw nsw i32 %i.098, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 20
  %or.cond = select i1 %tobool11.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 142, i32 noundef 16, i32 noundef 16) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_write(ptr noundef %15, i32 noundef 318, i32 noundef 29696) #9
  %call16 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 144, i32 noundef 1847) #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_write(ptr noundef %17, i32 noundef 311, i32 noundef 64512) #9
  %call19 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 4416) #9
  call void @msleep(i32 noundef 90) #9
  br label %if.end41

if.else:                                          ; preds = %if.then1
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 143, i32 noundef 8192, i32 noundef 8192) #9
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 142, i32 noundef 13) #9
  %regmap22 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap22, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 375, i32 noundef 40705) #9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else
  %__ms.096 = phi i32 [ 150, %if.else ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.096, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  %tobool24.not = icmp eq i32 %dec, 0
  br i1 %tobool24.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 0) #9
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 102, i32 noundef 3072, i32 noundef 3072) #9
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 224, i32 noundef 224) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #9
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #9
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 142, i32 noundef 20, i32 noundef 20) #9
  %26 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap22, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 276, i32 noundef 6826) #9
  %28 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap22, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 292, i32 noundef 1072) #9
  br label %if.end41

if.end41:                                         ; preds = %while.end, %for.end, %if.then.if.end41_crit_edge
  %30 = load i32, ptr @hp_amp_power.hp_amp_power_count, align 4
  %inc42 = add i32 %30, 1
  store i32 %inc42, ptr @hp_amp_power.hp_amp_power_count, align 4
  br label %if.end64

if.else43:                                        ; preds = %entry
  %dec44 = add i32 %5, -1
  store i32 %dec44, ptr @hp_amp_power.hp_amp_power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec44)
  %cmp45 = icmp slt i32 %dec44, 1
  br i1 %cmp45, label %if.then46, label %if.else43.if.end64_crit_edge

if.else43.if.end64_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then46:                                        ; preds = %if.else43
  %codec_type47 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 13
  %31 = ptrtoint ptr %codec_type47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %codec_type47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp48 = icmp eq i32 %32, 1
  br i1 %cmp48, label %if.then49, label %if.else57

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %regmap50 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap50, align 4
  %call51 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 318, i32 noundef 29696) #9
  %call52 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 144, i32 noundef 1847) #9
  %35 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap50, align 4
  %call54 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 311, i32 noundef 64512) #9
  %call55 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 4416) #9
  tail call void @msleep(i32 noundef 100) #9
  %call56 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 142, i32 noundef 1) #9
  br label %if.end64

if.else57:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 142, i32 noundef 772, i32 noundef 0) #9
  %call59 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 142, i32 noundef 0) #9
  %call60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 224, i32 noundef 0) #9
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 143, i32 noundef 8192, i32 noundef 0) #9
  br label %if.end64

if.end64:                                         ; preds = %if.else57, %if.then49, %if.else43.if.end64_crit_edge, %if.end41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is_using_asrc(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift1 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 9
  %2 = ptrtoint ptr %shift1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %3)
  %4 = icmp ult i8 %3, 11
  br i1 %4, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %3 to i16
  %switch.shifted = lshr i16 1803, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %6 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.is_using_asrc, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %8 = sext i8 %3 to i32
  %switch.gep14 = getelementptr inbounds [11 x i32], ptr @switch.table.is_using_asrc.520, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load15 = load i32, ptr %switch.gep14, align 4
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %switch.load) #9
  %shr = lshr i32 %call7, %switch.load15
  %and = and i32 %shr, 15
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.off)
  %switch = icmp ult i32 %and.off, 4
  %. = zext i1 %switch to i32
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %switch.lookup ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 128) #9
  %and = and i32 %call1, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp = icmp eq i32 %and, 16384
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %sysclk = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clk_id)
  %cmp2 = icmp eq i32 %9, %clk_id
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %10 = icmp ult i32 %clk_id, 3
  br i1 %10, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.497, i32 noundef %clk_id) #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.idx.mult = shl i32 %clk_id, 14
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef %switch.idx.mult) #9
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src9 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 15
  %12 = ptrtoint ptr %sysclk_src9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %sysclk_src9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_set_dai_sysclk.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_set_dai_sysclk, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !1179

if.then14:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_set_dai_sysclk.__UNIQUE_ID_ddebug300, ptr noundef %14, ptr noundef nonnull @.str.499, i32 noundef %freq, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %switch.lookup, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #9
  %6 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  %pll_src = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %source)
  %cmp = icmp eq i32 %8, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_in = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq_in)
  %cmp2 = icmp eq i32 %10, %freq_in
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %pll_out = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 21
  %11 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %freq_out)
  %cmp4 = icmp eq i32 %12, %freq_out
  br i1 %cmp4, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool5.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_set_dai_pll.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_set_dai_pll, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !1179

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_set_dai_pll.__UNIQUE_ID_ddebug301, ptr noundef %14, ptr noundef nonnull @.str.501) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pll_in13 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 20
  %15 = ptrtoint ptr %pll_in13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pll_in13, align 4
  %pll_out14 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 21
  %16 = ptrtoint ptr %pll_out14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pll_out14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %17 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.537)
  switch i32 %source, label %do.end31 [
    i32 0, label %if.end16.sw.epilog33_crit_edge
    i32 1, label %if.end16.sw.bb18_crit_edge
    i32 2, label %if.end16.sw.bb18_crit_edge123
  ]

if.end16.sw.bb18_crit_edge123:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end16.sw.bb18_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end16.sw.epilog33_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog33

sw.bb18:                                          ; preds = %if.end16.sw.bb18_crit_edge, %if.end16.sw.bb18_crit_edge123
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.538)
  switch i32 %19, label %do.end25 [
    i32 0, label %sw.bb18.sw.epilog33_crit_edge
    i32 1, label %sw.bb21
  ]

sw.bb18.sw.epilog33_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog33

sw.bb21:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog33

do.end25:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.502, i32 noundef %19) #12
  br label %cleanup

do.end31:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.504, i32 noundef %source) #12
  br label %cleanup

sw.epilog33:                                      ; preds = %sw.bb21, %sw.bb18.sw.epilog33_crit_edge, %if.end16.sw.epilog33_crit_edge
  %.sink = phi i32 [ 4096, %sw.bb21 ], [ %source, %if.end16.sw.epilog33_crit_edge ], [ 2048, %sw.bb18.sw.epilog33_crit_edge ]
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 14336, i32 noundef %.sink) #9
  %call34 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %do.body42

do.end39:                                         ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.507, i32 noundef %freq_in) #12
  br label %cleanup

do.body42:                                        ; preds = %sw.epilog33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_set_dai_pll.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_set_dai_pll, %if.then54)) #9
          to label %do.end62 [label %if.then54], !srcloc !1179

if.then54:                                        ; preds = %do.body42
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pll_code, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool56.not = icmp eq i8 %30, 0
  %31 = zext i8 %30 to i32
  br i1 %tobool56.not, label %cond.false, label %if.then54.cond.end_crit_edge

if.then54.cond.end_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %32 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then54.cond.end_crit_edge
  %cond = phi i32 [ %33, %cond.false ], [ 0, %if.then54.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %34 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %36 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_set_dai_pll.__UNIQUE_ID_ddebug302, ptr noundef %28, ptr noundef nonnull @.str.509, i32 noundef %31, i32 noundef %cond, i32 noundef %35, i32 noundef %37) #9
  br label %do.end62

do.end62:                                         ; preds = %cond.end, %do.body42
  %n_code63 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %38 = ptrtoint ptr %n_code63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_code63, align 4
  %shl = shl i32 %39, 7
  %k_code64 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %40 = ptrtoint ptr %k_code64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %k_code64, align 4
  %or = or i32 %shl, %41
  %call65 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 129, i32 noundef %or) #9
  %42 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pll_code, align 4, !range !1178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool67.not = icmp eq i8 %43, 0
  br i1 %tobool67.not, label %cond.false70, label %do.end62.cond.end72_crit_edge

do.end62.cond.end72_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end72

cond.false70:                                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  %m_code71 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %44 = ptrtoint ptr %m_code71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_code71, align 4
  %phi.bo = shl i32 %45, 12
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false70, %do.end62.cond.end72_crit_edge
  %cond73 = phi i32 [ %phi.bo, %cond.false70 ], [ 0, %do.end62.cond.end72_crit_edge ]
  %46 = zext i8 %43 to i32
  %shl78 = shl nuw nsw i32 %46, 11
  %or79 = or i32 %cond73, %shl78
  %call80 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 130, i32 noundef %or79) #9
  %pll_in81 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 20
  %47 = ptrtoint ptr %pll_in81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %freq_in, ptr %pll_in81, align 4
  %pll_out82 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 21
  %48 = ptrtoint ptr %pll_out82 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %freq_out, ptr %pll_out82, align 4
  %49 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end72, %do.end39, %do.end31, %do.end25, %do.end, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -22, %do.end25 ], [ %call34, %do.end39 ], [ 0, %cond.end72 ], [ 0, %do.end ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  %. = select i1 %cond, i32 8, i32 7
  %8 = trunc i32 %fmt to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.539)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog8_crit_edge
    i16 16384, label %sw.bb3
  ]

entry.sw.epilog8_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog8

sw.epilog8:                                       ; preds = %sw.bb3, %entry.sw.epilog8_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ 1, %entry.sw.epilog8_crit_edge ]
  %reg_val.0 = phi i32 [ 32768, %sw.bb3 ], [ 0, %entry.sw.epilog8_crit_edge ]
  %id5 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %10 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id5, align 4
  %arrayidx6 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 18, i32 %11
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %arrayidx6, align 4
  %and9 = and i32 %fmt, 3840
  %13 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.540)
  switch i32 %and9, label %sw.epilog8.cleanup_crit_edge [
    i32 0, label %sw.epilog8.sw.epilog13_crit_edge
    i32 768, label %sw.bb10
  ]

sw.epilog8.sw.epilog13_crit_edge:                 ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog13

sw.epilog8.cleanup_crit_edge:                     ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 1, %.
  %or11 = or i32 %reg_val.0, %shl
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.bb10, %sw.epilog8.sw.epilog13_crit_edge
  %reg_val.1 = phi i32 [ %or11, %sw.bb10 ], [ %reg_val.0, %sw.epilog8.sw.epilog13_crit_edge ]
  %and14 = and i32 %fmt, 15
  %14 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.541)
  switch i32 %and14, label %sw.epilog13.cleanup_crit_edge [
    i32 1, label %sw.epilog13.sw.epilog22_crit_edge
    i32 3, label %sw.bb15
    i32 4, label %sw.bb17
    i32 5, label %sw.bb19
  ]

sw.epilog13.sw.epilog22_crit_edge:                ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog22

sw.epilog13.cleanup_crit_edge:                    ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  %or16 = or i32 %reg_val.1, 1
  br label %sw.epilog22

sw.bb17:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  %or18 = or i32 %reg_val.1, 2
  br label %sw.epilog22

sw.bb19:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  %or20 = or i32 %reg_val.1, 3
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.epilog13.sw.epilog22_crit_edge
  %reg_val.2 = phi i32 [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %reg_val.1, %sw.epilog13.sw.epilog22_crit_edge ]
  %id23 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %15 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id23, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.542)
  switch i32 %16, label %do.end [
    i32 0, label %sw.bb24
    i32 1, label %sw.bb29
  ]

sw.bb24:                                          ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #11
  %shl25 = shl nuw nsw i32 1, %.
  %or27 = or i32 %shl25, 32771
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef %or27, i32 noundef %reg_val.2) #9
  br label %cleanup

sw.bb29:                                          ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #11
  %shl30 = shl nuw nsw i32 1, %.
  %or32 = or i32 %shl30, 32771
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef %or32, i32 noundef %reg_val.2) #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.502, i32 noundef %16) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb29, %sw.bb24, %sw.epilog13.cleanup_crit_edge, %sw.epilog8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog8.cleanup_crit_edge ], [ -22, %sw.epilog13.cleanup_crit_edge ], [ 0, %sw.bb29 ], [ 0, %sw.bb24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  %. = select i1 %cond, i32 10, i32 12
  %.62 = select i1 %cond, i32 8, i32 12
  %.63 = select i1 %cond, i32 6, i32 10
  %.64 = select i1 %cond, i32 4, i32 10
  %8 = or i32 %rx_mask, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %shl = select i1 %cond, i32 32768, i32 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 207, i32 noundef 63, i32 noundef 20) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %val.0 = phi i32 [ %shl, %if.then4 ], [ %shl, %if.then.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  %10 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.543)
  switch i32 %slots, label %if.end6.sw.epilog24_crit_edge [
    i32 4, label %sw.bb7
    i32 6, label %sw.bb12
    i32 8, label %sw.bb17
  ]

if.end6.sw.epilog24_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog24

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %shl8 = shl nuw nsw i32 1, %.
  %shl9 = shl nuw nsw i32 1, %.62
  %or10 = or i32 %shl8, %shl9
  %or11 = or i32 %or10, %val.0
  br label %sw.epilog24

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %shl13 = shl nuw nsw i32 2, %.
  %shl14 = shl nuw nsw i32 2, %.62
  %or15 = or i32 %shl13, %shl14
  %or16 = or i32 %or15, %val.0
  br label %sw.epilog24

sw.bb17:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %shl18 = shl nuw nsw i32 3, %.
  %shl19 = shl nuw nsw i32 3, %.62
  %or20 = or i32 %shl18, %shl19
  %or21 = or i32 %or20, %val.0
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb17, %sw.bb12, %sw.bb7, %if.end6.sw.epilog24_crit_edge
  %val.1 = phi i32 [ %val.0, %if.end6.sw.epilog24_crit_edge ], [ %or21, %sw.bb17 ], [ %or16, %sw.bb12 ], [ %or11, %sw.bb7 ]
  %11 = add i32 %slot_width, -16
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.544)
  switch i32 %12, label %sw.epilog24.sw.epilog42_crit_edge [
    i32 1, label %sw.bb25
    i32 2, label %sw.bb30
    i32 4, label %sw.bb35
  ]

sw.epilog24.sw.epilog42_crit_edge:                ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog42

sw.bb25:                                          ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #11
  %shl26 = shl nuw nsw i32 1, %.63
  %shl27 = shl nuw nsw i32 1, %.64
  %or28 = or i32 %shl26, %shl27
  %or29 = or i32 %or28, %val.1
  br label %sw.epilog42

sw.bb30:                                          ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #11
  %shl31 = shl nuw nsw i32 2, %.63
  %shl32 = shl nuw nsw i32 2, %.64
  %or33 = or i32 %shl31, %shl32
  %or34 = or i32 %or33, %val.1
  br label %sw.epilog42

sw.bb35:                                          ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #11
  %shl36 = shl nuw nsw i32 3, %.63
  %shl37 = shl nuw nsw i32 3, %.64
  %or38 = or i32 %shl36, %shl37
  %or39 = or i32 %or38, %val.1
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.bb35, %sw.bb30, %sw.bb25, %sw.epilog24.sw.epilog42_crit_edge
  %val.2 = phi i32 [ %val.1, %sw.epilog24.sw.epilog42_crit_edge ], [ %or39, %sw.bb35 ], [ %or34, %sw.bb30 ], [ %or29, %sw.bb25 ]
  %.66 = select i1 %cond, i32 36848, i32 31744
  %call43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 119, i32 noundef %.66, i32 noundef %val.2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5645_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %sysclk = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  %13 = load i32, ptr %id, align 4
  %arrayidx5 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 16, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @rl6231_get_clk_info(i32 noundef %12, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.511) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.514, i32 noundef %call7) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %codec_type = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  %20 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %codec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond = icmp eq i32 %21, 1
  %. = select i1 %cond, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call7)
  %cmp15 = icmp ugt i32 %call7, 32
  %conv = zext i1 %cmp15 to i32
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %arrayidx18 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 16, i32 %23
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %shl = shl nuw nsw i32 32, %conv
  %mul = mul i32 %25, %shl
  %arrayidx20 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 17, i32 %23
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %arrayidx20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_hw_params, %if.then25)) #9
          to label %do.body36 [label %if.then25], !srcloc !1179

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %27 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev26, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %arrayidx29 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 17, i32 %30
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 16, i32 %30
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %28, ptr noundef nonnull @.str.516, i32 noundef %32, i32 noundef %34) #9
  br label %do.body36

do.body36:                                        ; preds = %if.then25, %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5645_hw_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5645_hw_params, %if.then48)) #9
          to label %do.end53 [label %if.then48], !srcloc !1179

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %dev49 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %35 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev49, align 4
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5645_hw_params.__UNIQUE_ID_ddebug299, ptr noundef %36, ptr noundef nonnull @.str.517, i32 noundef %conv, i32 noundef %call6, i32 noundef %38) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end53.if.then.i.i.i_crit_edge

do.end53.if.then.i.i.i_crit_edge:                 ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end53.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end53.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %40, %do.end53.if.then.i.i.i_crit_edge ], [ %43, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %41 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !1180
  %add.i.i.i = or i32 %41, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end53
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.1.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %44 = add i32 %call1.i, -8
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %46 = icmp ult i32 %45, 5
  br i1 %46, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %45 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %47 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %switch.lobit.not = icmp eq i8 %47, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt5645_hw_params, i32 0, i32 %45
  %48 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load = load i32, ptr %switch.gep, align 4
  %49 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.545)
  switch i32 %50, label %do.end77 [
    i32 0, label %sw.bb61
    i32 1, label %sw.bb67
  ]

sw.bb61:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %shl62 = shl i32 %call6, 12
  %shl63 = shl nuw nsw i32 3, %.
  %shl64 = shl nuw nsw i32 %switch.load, %.
  %call65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef %shl63, i32 noundef %shl64) #9
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 28672, i32 noundef %shl62) #9
  br label %cleanup

sw.bb67:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %shl68 = select i1 %cmp15, i32 2048, i32 0
  %shl69 = shl i32 %call6, 8
  %or = or i32 %shl68, %shl69
  %shl70 = shl nuw nsw i32 3, %.
  %shl71 = shl nuw nsw i32 %switch.load, %.
  %call72 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef %shl70, i32 noundef %shl71) #9
  %call73 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 3840, i32 noundef %or) #9
  br label %cleanup

do.end77:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.502, i32 noundef %50) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %sw.bb67, %sw.bb61, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end77 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %sw.bb67 ], [ 0, %sw.bb61 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 655)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 655)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206, !208, !209, !210, !212, !214, !216, !217, !218, !220, !222, !224, !225, !226, !228, !229, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !467, !469, !470, !472, !473, !475, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !593, !594, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1095, !1097, !1099, !1101, !1103, !1105, !1107, !1109, !1111, !1113, !1115, !1117, !1118, !1119, !1120, !1122, !1123, !1125, !1126, !1127, !1129, !1130, !1131, !1133, !1134, !1135, !1137, !1138, !1139, !1141, !1142, !1144, !1145, !1146, !1148, !1149, !1150, !1151, !1153, !1154, !1155, !1157, !1158, !1160, !1161, !1163, !1164, !1166}
!llvm.module.flags = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!llvm.ident = !{!1176}

!0 = !{ptr @__param_quirk, !1, !"__param_quirk", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5645.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_quirktype296, !1, !"__UNIQUE_ID_quirktype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_quirk297, !4, !"__UNIQUE_ID_quirk297", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5645.c", i32 44, i32 1}
!5 = !{ptr @__ksymtab_rt5645_sel_asrc_clk_src, !6, !"__ksymtab_rt5645_sel_asrc_clk_src", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5645.c", i32 1046, i32 1}
!7 = !{ptr @__ksymtab_rt5645_set_jack_detect, !8, !"__ksymtab_rt5645_set_jack_detect", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5645.c", i32 3259, i32 1}
!9 = !{ptr @__initcall__kmod_snd_soc_rt5645__308_4191_rt5645_i2c_driver_init6, !10, !"__initcall__kmod_snd_soc_rt5645__308_4191_rt5645_i2c_driver_init6", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt5645.c", i32 4191, i32 1}
!11 = !{ptr @__exitcall_rt5645_i2c_driver_exit, !10, !"__exitcall_rt5645_i2c_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description309, !13, !"__UNIQUE_ID_description309", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt5645.c", i32 4193, i32 1}
!14 = !{ptr @__UNIQUE_ID_author310, !15, !"__UNIQUE_ID_author310", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt5645.c", i32 4194, i32 1}
!16 = !{ptr @__UNIQUE_ID_file311, !17, !"__UNIQUE_ID_file311", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rt5645.c", i32 4195, i32 1}
!18 = !{ptr @__UNIQUE_ID_license312, !17, !"__UNIQUE_ID_license312", i1 false, i1 false}
!19 = !{ptr @__param_str_quirk, !1, !"__param_str_quirk", i1 false, i1 false}
!20 = !{ptr @quirk, !21, !"quirk", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/rt5645.c", i32 42, i32 21}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/rt5645.c", i32 4182, i32 11}
!24 = !{ptr @rt5645_i2c_driver, !25, !"rt5645_i2c_driver", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rt5645.c", i32 4180, i32 26}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/rt5645.c", i32 3878, i32 3}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rt5645_i2c_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt5645_i2c_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt5645.c", i32 3902, i32 5}
!36 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !35, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt5645.c", i32 3906, i32 57}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5645.c", i32 3910, i32 60}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt5645.c", i32 3914, i32 3}
!44 = !{ptr @rt5645_i2c_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rt5645_i2c_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt5645.c", i32 3931, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rt5645_i2c_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rt5645_i2c_probe._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt5645.c", i32 3938, i32 3}
!53 = !{ptr @rt5645_i2c_probe._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rt5645_i2c_probe._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @rt5645_i2c_probe._key, !56, !"_key", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/rt5645.c", i32 3942, i32 11}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt5645.c", i32 3945, i32 3}
!60 = !{ptr @rt5645_i2c_probe._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rt5645_i2c_probe._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @rt5645_i2c_probe._key.24, !63, !"_key", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt5645.c", i32 3959, i32 20}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rt5645_i2c_probe._key.26, !66, !"_key", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt5645.c", i32 3963, i32 20}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt5645.c", i32 3967, i32 3}
!70 = !{ptr @rt5645_i2c_probe._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rt5645_i2c_probe._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt5645.c", i32 3976, i32 3}
!74 = !{ptr @rt5645_i2c_probe._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rt5645_i2c_probe._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt5645.c", i32 3991, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rt5645_i2c_probe._entry.34, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rt5645_i2c_probe._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt5645.c", i32 3997, i32 4}
!83 = !{ptr @rt5645_i2c_probe._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rt5645_i2c_probe._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @rt5645_i2c_probe.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt5645.c", i32 4120, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rt5645_i2c_probe.__key.42, !89, !"__key", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/rt5645.c", i32 4122, i32 2}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rt5645_i2c_probe.__key.44, !89, !"__key", i1 false, i1 false}
!92 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rt5645_i2c_probe.__key.46, !94, !"__key", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt5645.c", i32 4123, i32 2}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rt5645_i2c_probe.__key.48, !94, !"__key", i1 false, i1 false}
!97 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt5645.c", i32 4130, i32 4}
!100 = !{ptr @rt5645_i2c_probe._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rt5645_i2c_probe._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt5645.c", i32 3687, i32 12}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt5645.c", i32 3694, i32 12}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt5645.c", i32 3701, i32 12}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt5645.c", i32 3708, i32 12}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt5645.c", i32 3715, i32 12}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt5645.c", i32 3731, i32 12}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt5645.c", i32 3741, i32 12}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt5645.c", i32 3749, i32 12}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt5645.c", i32 3757, i32 12}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt5645.c", i32 3765, i32 12}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt5645.c", i32 3773, i32 12}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt5645.c", i32 3782, i32 12}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt5645.c", i32 3791, i32 12}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt5645.c", i32 3800, i32 12}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt5645.c", i32 3807, i32 12}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt5645.c", i32 3815, i32 12}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt5645.c", i32 3823, i32 12}
!136 = distinct !{null, !137, !"dmi_platform_data", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt5645.c", i32 3685, i32 35}
!138 = distinct !{null, !139, !"buddy_platform_data", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5645.c", i32 3618, i32 42}
!140 = distinct !{null, !141, !"intel_braswell_platform_data", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/rt5645.c", i32 3612, i32 42}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt5645.c", i32 3628, i32 15}
!144 = distinct !{null, !145, !"gpd_win_platform_data", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt5645.c", i32 3625, i32 42}
!146 = distinct !{null, !147, !"asus_t100ha_platform_data", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt5645.c", i32 3633, i32 42}
!148 = distinct !{null, !149, !"asus_t101ha_platform_data", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt5645.c", i32 3640, i32 42}
!150 = distinct !{null, !151, !"lenovo_ideapad_miix_310_pdata", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt5645.c", i32 3646, i32 42}
!152 = distinct !{null, !153, !"lattepanda_board_platform_data", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt5645.c", i32 3655, i32 42}
!154 = distinct !{null, !155, !"kahlee_platform_data", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt5645.c", i32 3660, i32 42}
!156 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt5645.c", i32 3675, i32 4}
!158 = distinct !{null, !159, !"cht_rt5645_ef20_gpios", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt5645.c", i32 3674, i32 39}
!160 = distinct !{null, !161, !"ef20_hp_detect", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt5645.c", i32 3672, i32 38}
!162 = distinct !{null, !163, !"ecs_ef20_platform_data", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt5645.c", i32 3666, i32 42}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/rt5645.c", i32 3835, i32 35}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt5645.c", i32 3836, i32 35}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt5645.c", i32 3837, i32 35}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt5645.c", i32 3838, i32 35}
!172 = !{ptr @jd_mode3_platform_data, !173, !"jd_mode3_platform_data", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt5645.c", i32 3651, i32 42}
!174 = distinct !{null, !175, !"cht_rt5645_gpios", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt5645.c", i32 46, i32 40}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt5645.c", i32 410, i32 2}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt5645.c", i32 411, i32 2}
!180 = distinct !{null, !181, !"rt5645_supply_names", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt5645.c", i32 409, i32 26}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt5645.c", i32 3575, i32 8}
!184 = !{ptr @temp_regmap, !185, !"temp_regmap", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt5645.c", i32 3574, i32 35}
!186 = !{ptr @rt5645_regmap, !187, !"rt5645_regmap", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt5645.c", i32 3540, i32 35}
!188 = !{ptr @rt5645_reg, !189, !"rt5645_reg", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/rt5645.c", i32 86, i32 33}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt5645.c", i32 62, i32 11}
!192 = !{ptr @rt5645_ranges, !193, !"rt5645_ranges", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/rt5645.c", i32 60, i32 38}
!194 = !{ptr @rt5650_regmap, !195, !"rt5650_regmap", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt5645.c", i32 3557, i32 35}
!196 = !{ptr @rt5650_reg, !197, !"rt5650_reg", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt5645.c", i32 242, i32 33}
!198 = !{ptr @init_list, !199, !"init_list", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt5645.c", i32 73, i32 34}
!200 = !{ptr @rt5650_init_list, !201, !"rt5650_init_list", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt5645.c", i32 82, i32 34}
!202 = !{ptr @.str.80, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt5645.c", i32 3276, i32 4}
!204 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @rt5645_jack_detect_work.__UNIQUE_ID_ddebug306, !203, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!206 = !{ptr @.str.82, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt5645.c", i32 3332, i32 5}
!208 = !{ptr @rt5645_jack_detect_work._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @rt5645_jack_detect_work._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt5645.c", i32 3157, i32 39}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/rt5645.c", i32 3158, i32 39}
!214 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt5645.c", i32 3184, i32 3}
!216 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @rt5645_jack_detect.__UNIQUE_ID_ddebug304, !215, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!218 = !{ptr @.str.87, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/rt5645.c", i32 3125, i32 39}
!220 = !{ptr @.str.88, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/rt5645.c", i32 3126, i32 39}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt5645.c", i32 3135, i32 3}
!224 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @rt5645_enable_push_button_irq.__UNIQUE_ID_ddebug303, !223, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt5645.c", i32 3230, i32 2}
!228 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @rt5645_button_detect.__UNIQUE_ID_ddebug305, !227, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!230 = !{ptr @soc_component_dev_rt5645, !231, !"soc_component_dev_rt5645", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/rt5645.c", i32 3523, i32 46}
!232 = !{ptr @.str.93, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt5645.c", i32 794, i32 2}
!234 = !{ptr @.str.94, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/rt5645.c", i32 796, i32 2}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/rt5645.c", i32 801, i32 2}
!238 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/rt5645.c", i32 805, i32 2}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/rt5645.c", i32 807, i32 2}
!242 = !{ptr @.str.102, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/rt5645.c", i32 811, i32 2}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/rt5645.c", i32 813, i32 2}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/rt5645.c", i32 815, i32 2}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/rt5645.c", i32 819, i32 2}
!250 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/rt5645.c", i32 821, i32 2}
!252 = !{ptr @.str.112, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/rt5645.c", i32 823, i32 2}
!254 = !{ptr @.str.114, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/rt5645.c", i32 827, i32 2}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/rt5645.c", i32 829, i32 2}
!258 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/rt5645.c", i32 833, i32 2}
!260 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/rt5645.c", i32 837, i32 2}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/rt5645.c", i32 839, i32 2}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/rt5645.c", i32 841, i32 2}
!266 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/rt5645.c", i32 843, i32 2}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/rt5645.c", i32 847, i32 2}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/rt5645.c", i32 850, i32 2}
!272 = !{ptr @.str.132, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/rt5645.c", i32 855, i32 2}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/rt5645.c", i32 857, i32 2}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/rt5645.c", i32 860, i32 2}
!278 = !{ptr @rt5645_snd_controls, !279, !"rt5645_snd_controls", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/rt5645.c", i32 792, i32 38}
!280 = !{ptr @out_vol_tlv, !281, !"out_vol_tlv", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/rt5645.c", i32 664, i32 14}
!282 = !{ptr @spk_clsd_tlv, !283, !"spk_clsd_tlv", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/rt5645.c", i32 682, i32 14}
!284 = !{ptr @dac_vol_tlv, !285, !"dac_vol_tlv", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/rt5645.c", i32 665, i32 14}
!286 = !{ptr @bst_tlv, !287, !"bst_tlv", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/rt5645.c", i32 671, i32 14}
!288 = !{ptr @in_vol_tlv, !289, !"in_vol_tlv", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/rt5645.c", i32 666, i32 14}
!290 = !{ptr @adc_vol_tlv, !291, !"adc_vol_tlv", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/rt5645.c", i32 667, i32 14}
!292 = !{ptr @adc_bst_tlv, !293, !"adc_bst_tlv", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/rt5645.c", i32 668, i32 14}
!294 = !{ptr @rt5645_dac1_vol_ctrl_mode, !295, !"rt5645_dac1_vol_ctrl_mode", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/rt5645.c", i32 788, i32 8}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/rt5645.c", i32 785, i32 2}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/rt5645.c", i32 785, i32 17}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/rt5645.c", i32 785, i32 34}
!302 = !{ptr @rt5645_dac1_vol_ctrl_mode_text, !303, !"rt5645_dac1_vol_ctrl_mode_text", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/rt5645.c", i32 784, i32 27}
!304 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/rt5645.c", i32 1973, i32 2}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/rt5645.c", i32 1976, i32 2}
!308 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/rt5645.c", i32 1982, i32 2}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/rt5645.c", i32 1984, i32 2}
!312 = !{ptr @.str.143, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/rt5645.c", i32 1986, i32 2}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/rt5645.c", i32 1988, i32 2}
!316 = !{ptr @.str.145, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/rt5645.c", i32 1990, i32 2}
!318 = !{ptr @.str.146, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/rt5645.c", i32 1992, i32 2}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/rt5645.c", i32 1994, i32 2}
!322 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/rt5645.c", i32 1996, i32 2}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/rt5645.c", i32 1998, i32 2}
!326 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/rt5645.c", i32 2000, i32 2}
!328 = !{ptr @.str.151, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/rt5645.c", i32 2002, i32 2}
!330 = !{ptr @.str.152, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/rt5645.c", i32 2007, i32 2}
!332 = !{ptr @.str.153, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/rt5645.c", i32 2010, i32 2}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/rt5645.c", i32 2014, i32 2}
!336 = !{ptr @.str.155, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/rt5645.c", i32 2015, i32 2}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/rt5645.c", i32 2016, i32 2}
!340 = !{ptr @.str.157, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/rt5645.c", i32 2017, i32 2}
!342 = !{ptr @.str.158, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/rt5645.c", i32 2019, i32 2}
!344 = !{ptr @.str.159, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/rt5645.c", i32 2020, i32 2}
!346 = !{ptr @.str.160, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/rt5645.c", i32 2021, i32 2}
!348 = !{ptr @.str.161, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/rt5645.c", i32 2022, i32 2}
!350 = !{ptr @.str.162, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/rt5645.c", i32 2024, i32 2}
!352 = !{ptr @.str.163, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/rt5645.c", i32 2026, i32 2}
!354 = !{ptr @.str.164, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/rt5645.c", i32 2027, i32 2}
!356 = !{ptr @.str.165, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/rt5645.c", i32 2028, i32 2}
!358 = !{ptr @.str.166, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/rt5645.c", i32 2030, i32 2}
!360 = !{ptr @.str.167, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/rt5645.c", i32 2032, i32 2}
!362 = !{ptr @.str.168, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/rt5645.c", i32 2035, i32 2}
!364 = !{ptr @.str.169, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/rt5645.c", i32 2037, i32 2}
!366 = !{ptr @.str.170, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/rt5645.c", i32 2041, i32 2}
!368 = !{ptr @.str.171, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/rt5645.c", i32 2043, i32 2}
!370 = !{ptr @.str.172, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/rt5645.c", i32 2046, i32 2}
!372 = !{ptr @.str.173, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/rt5645.c", i32 2048, i32 2}
!374 = !{ptr @.str.174, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/rt5645.c", i32 2051, i32 2}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/rt5645.c", i32 2052, i32 2}
!378 = !{ptr @.str.176, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/rt5645.c", i32 2060, i32 2}
!380 = !{ptr @.str.177, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/rt5645.c", i32 2062, i32 2}
!382 = !{ptr @.str.178, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/rt5645.c", i32 2064, i32 2}
!384 = !{ptr @.str.179, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/rt5645.c", i32 2066, i32 2}
!386 = !{ptr @.str.180, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/rt5645.c", i32 2068, i32 2}
!388 = !{ptr @.str.181, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/rt5645.c", i32 2070, i32 2}
!390 = !{ptr @.str.182, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/rt5645.c", i32 2072, i32 2}
!392 = !{ptr @.str.183, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/rt5645.c", i32 2074, i32 2}
!394 = !{ptr @.str.184, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/rt5645.c", i32 2076, i32 2}
!396 = !{ptr @.str.185, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/rt5645.c", i32 2078, i32 2}
!398 = !{ptr @.str.186, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/rt5645.c", i32 2080, i32 2}
!400 = !{ptr @.str.187, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/rt5645.c", i32 2084, i32 2}
!402 = !{ptr @.str.188, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/rt5645.c", i32 2086, i32 2}
!404 = !{ptr @.str.189, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/rt5645.c", i32 2089, i32 2}
!406 = !{ptr @.str.190, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/rt5645.c", i32 2092, i32 2}
!408 = !{ptr @.str.191, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/rt5645.c", i32 2094, i32 2}
!410 = !{ptr @.str.192, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/rt5645.c", i32 2097, i32 2}
!412 = !{ptr @.str.193, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/rt5645.c", i32 2099, i32 2}
!414 = !{ptr @.str.194, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/rt5645.c", i32 2104, i32 2}
!416 = !{ptr @.str.195, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/rt5645.c", i32 2105, i32 2}
!418 = !{ptr @.str.196, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/rt5645.c", i32 2106, i32 2}
!420 = !{ptr @.str.197, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/rt5645.c", i32 2107, i32 2}
!422 = !{ptr @.str.198, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/rt5645.c", i32 2108, i32 2}
!424 = !{ptr @.str.199, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/rt5645.c", i32 2109, i32 2}
!426 = !{ptr @.str.200, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/rt5645.c", i32 2110, i32 2}
!428 = !{ptr @.str.201, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/rt5645.c", i32 2111, i32 2}
!430 = !{ptr @.str.202, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/rt5645.c", i32 2112, i32 2}
!432 = !{ptr @.str.203, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/rt5645.c", i32 2113, i32 2}
!434 = !{ptr @.str.204, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/rt5645.c", i32 2116, i32 2}
!436 = !{ptr @.str.205, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/rt5645.c", i32 2120, i32 2}
!438 = !{ptr @.str.206, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/rt5645.c", i32 2122, i32 2}
!440 = !{ptr @.str.207, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/rt5645.c", i32 2123, i32 2}
!442 = !{ptr @.str.208, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/rt5645.c", i32 2124, i32 2}
!444 = !{ptr @.str.209, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/rt5645.c", i32 2125, i32 2}
!446 = !{ptr @.str.210, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/rt5645.c", i32 2126, i32 2}
!448 = !{ptr @.str.211, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/rt5645.c", i32 2127, i32 2}
!450 = !{ptr @.str.212, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/rt5645.c", i32 2128, i32 2}
!452 = !{ptr @.str.213, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/rt5645.c", i32 2129, i32 2}
!454 = !{ptr @.str.214, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/rt5645.c", i32 2131, i32 2}
!456 = !{ptr @.str.215, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/rt5645.c", i32 2132, i32 2}
!458 = !{ptr @.str.216, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/rt5645.c", i32 2133, i32 2}
!460 = !{ptr @.str.217, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/rt5645.c", i32 2134, i32 2}
!462 = !{ptr @.str.218, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/rt5645.c", i32 2137, i32 2}
!464 = !{ptr @.str.219, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/rt5645.c", i32 2141, i32 2}
!466 = !{ptr @.str.220, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.221, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/rt5645.c", i32 2142, i32 2}
!469 = !{ptr @.str.222, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @.str.223, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/rt5645.c", i32 2143, i32 2}
!472 = !{ptr @.str.224, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.225, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/rt5645.c", i32 2144, i32 2}
!475 = !{ptr @.str.226, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.227, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/rt5645.c", i32 2148, i32 2}
!478 = !{ptr @.str.228, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/rt5645.c", i32 2150, i32 2}
!480 = !{ptr @.str.229, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/rt5645.c", i32 2154, i32 2}
!482 = !{ptr @.str.230, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/rt5645.c", i32 2155, i32 2}
!484 = !{ptr @.str.231, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/rt5645.c", i32 2156, i32 2}
!486 = !{ptr @.str.232, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/rt5645.c", i32 2158, i32 2}
!488 = !{ptr @.str.233, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/rt5645.c", i32 2161, i32 2}
!490 = !{ptr @.str.234, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/rt5645.c", i32 2162, i32 2}
!492 = !{ptr @.str.235, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/rt5645.c", i32 2165, i32 2}
!494 = !{ptr @.str.236, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/rt5645.c", i32 2167, i32 2}
!496 = !{ptr @.str.237, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/rt5645.c", i32 2169, i32 2}
!498 = !{ptr @.str.238, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/rt5645.c", i32 2171, i32 2}
!500 = !{ptr @.str.239, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/rt5645.c", i32 2173, i32 2}
!502 = !{ptr @.str.240, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/rt5645.c", i32 2175, i32 2}
!504 = !{ptr @.str.241, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/rt5645.c", i32 2177, i32 2}
!506 = !{ptr @.str.242, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/rt5645.c", i32 2179, i32 2}
!508 = !{ptr @.str.243, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/rt5645.c", i32 2181, i32 2}
!510 = !{ptr @.str.244, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/rt5645.c", i32 2185, i32 2}
!512 = !{ptr @.str.245, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/rt5645.c", i32 2187, i32 2}
!514 = !{ptr @.str.246, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/rt5645.c", i32 2189, i32 2}
!516 = !{ptr @.str.247, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/rt5645.c", i32 2191, i32 2}
!518 = !{ptr @.str.248, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/rt5645.c", i32 2194, i32 2}
!520 = !{ptr @.str.249, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/rt5645.c", i32 2196, i32 2}
!522 = !{ptr @.str.250, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/rt5645.c", i32 2198, i32 2}
!524 = !{ptr @.str.251, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/rt5645.c", i32 2200, i32 2}
!526 = !{ptr @.str.252, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/rt5645.c", i32 2203, i32 2}
!528 = !{ptr @.str.253, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/rt5645.c", i32 2205, i32 2}
!530 = !{ptr @.str.254, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/rt5645.c", i32 2207, i32 2}
!532 = !{ptr @.str.255, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/rt5645.c", i32 2209, i32 2}
!534 = !{ptr @.str.256, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/rt5645.c", i32 2211, i32 2}
!536 = !{ptr @.str.257, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/rt5645.c", i32 2213, i32 2}
!538 = !{ptr @.str.258, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/rt5645.c", i32 2215, i32 2}
!540 = !{ptr @.str.259, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/rt5645.c", i32 2216, i32 2}
!542 = !{ptr @.str.260, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/rt5645.c", i32 2217, i32 2}
!544 = !{ptr @.str.261, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/rt5645.c", i32 2218, i32 2}
!546 = !{ptr @.str.262, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/rt5645.c", i32 2219, i32 2}
!548 = !{ptr @.str.263, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/rt5645.c", i32 2222, i32 2}
!550 = !{ptr @.str.264, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/rt5645.c", i32 2224, i32 2}
!552 = !{ptr @.str.265, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/rt5645.c", i32 2226, i32 2}
!554 = !{ptr @.str.266, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/rt5645.c", i32 2228, i32 2}
!556 = !{ptr @.str.267, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/rt5645.c", i32 2231, i32 2}
!558 = !{ptr @.str.268, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/rt5645.c", i32 2233, i32 2}
!560 = !{ptr @.str.269, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/rt5645.c", i32 2235, i32 2}
!562 = !{ptr @.str.270, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/rt5645.c", i32 2239, i32 2}
!564 = !{ptr @.str.271, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/rt5645.c", i32 2241, i32 2}
!566 = !{ptr @.str.272, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/rt5645.c", i32 2242, i32 2}
!568 = !{ptr @.str.273, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/rt5645.c", i32 2244, i32 2}
!570 = !{ptr @.str.274, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/rt5645.c", i32 2245, i32 2}
!572 = !{ptr @.str.275, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/rt5645.c", i32 2248, i32 2}
!574 = !{ptr @.str.276, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/rt5645.c", i32 2249, i32 2}
!576 = !{ptr @.str.277, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/rt5645.c", i32 2250, i32 2}
!578 = !{ptr @.str.278, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/rt5645.c", i32 2251, i32 2}
!580 = !{ptr @.str.279, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/rt5645.c", i32 2252, i32 2}
!582 = !{ptr @.str.280, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/rt5645.c", i32 2253, i32 2}
!584 = !{ptr @.str.281, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/rt5645.c", i32 2254, i32 2}
!586 = !{ptr @.str.282, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/rt5645.c", i32 2255, i32 2}
!588 = !{ptr @rt5645_dapm_widgets, !589, !"rt5645_dapm_widgets", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/rt5645.c", i32 1970, i32 41}
!590 = !{ptr @.str.284, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/rt5645.c", i32 882, i32 3}
!592 = !{ptr @.str.285, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @set_dmic_clk._entry, !591, !"_entry", i1 false, i1 false}
!594 = !{ptr @set_dmic_clk._entry_ptr, !591, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.286, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/rt5645.c", i32 1147, i32 2}
!597 = !{ptr @.str.288, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/rt5645.c", i32 1149, i32 2}
!599 = !{ptr @.str.290, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/rt5645.c", i32 1151, i32 2}
!601 = !{ptr @.str.292, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/rt5645.c", i32 1153, i32 2}
!603 = !{ptr @.str.294, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/rt5645.c", i32 1155, i32 2}
!605 = !{ptr @rt5645_rec_l_mix, !606, !"rt5645_rec_l_mix", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/rt5645.c", i32 1146, i32 38}
!607 = !{ptr @.str.296, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/soc/codecs/rt5645.c", i32 1160, i32 2}
!609 = !{ptr @.str.298, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/rt5645.c", i32 1162, i32 2}
!611 = !{ptr @.str.302, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/rt5645.c", i32 1168, i32 2}
!613 = !{ptr @rt5645_rec_r_mix, !614, !"rt5645_rec_r_mix", i1 false, i1 false}
!614 = !{!"../sound/soc/codecs/rt5645.c", i32 1159, i32 38}
!615 = !{ptr @.str.304, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../sound/soc/codecs/rt5645.c", i32 1351, i32 2}
!617 = !{ptr @rt5645_sto1_dmic_mux, !618, !"rt5645_sto1_dmic_mux", i1 false, i1 false}
!618 = !{!"../sound/soc/codecs/rt5645.c", i32 1350, i32 38}
!619 = !{ptr @rt5645_stereo1_dmic_enum, !620, !"rt5645_stereo1_dmic_enum", i1 false, i1 false}
!620 = !{!"../sound/soc/codecs/rt5645.c", i32 1346, i32 8}
!621 = !{ptr @rt5645_stereo_dmic_src, !622, !"rt5645_stereo_dmic_src", i1 false, i1 false}
!622 = !{!"../sound/soc/codecs/rt5645.c", i32 1342, i32 27}
!623 = !{ptr @.str.305, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../sound/soc/codecs/rt5645.c", i32 1339, i32 2}
!625 = !{ptr @rt5645_sto_adc2_mux, !626, !"rt5645_sto_adc2_mux", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/rt5645.c", i32 1338, i32 38}
!627 = !{ptr @rt5645_stereo1_adc2_enum, !628, !"rt5645_stereo1_adc2_enum", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/rt5645.c", i32 1334, i32 8}
!629 = !{ptr @.str.306, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../sound/soc/codecs/rt5645.c", i32 1331, i32 2}
!631 = !{ptr @.str.307, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../sound/soc/codecs/rt5645.c", i32 1331, i32 13}
!633 = !{ptr @rt5645_stereo_adc2_src, !634, !"rt5645_stereo_adc2_src", i1 false, i1 false}
!634 = !{!"../sound/soc/codecs/rt5645.c", i32 1330, i32 27}
!635 = !{ptr @.str.308, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../sound/soc/codecs/rt5645.c", i32 1327, i32 2}
!637 = !{ptr @rt5645_sto_adc1_mux, !638, !"rt5645_sto_adc1_mux", i1 false, i1 false}
!638 = !{!"../sound/soc/codecs/rt5645.c", i32 1326, i32 38}
!639 = !{ptr @rt5645_stereo1_adc1_enum, !640, !"rt5645_stereo1_adc1_enum", i1 false, i1 false}
!640 = !{!"../sound/soc/codecs/rt5645.c", i32 1322, i32 8}
!641 = !{ptr @.str.309, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/soc/codecs/rt5645.c", i32 1319, i32 13}
!643 = !{ptr @rt5645_stereo_adc1_src, !644, !"rt5645_stereo_adc1_src", i1 false, i1 false}
!644 = !{!"../sound/soc/codecs/rt5645.c", i32 1318, i32 27}
!645 = !{ptr @.str.310, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/rt5645.c", i32 1387, i32 2}
!647 = !{ptr @rt5645_mono_dmic_l_mux, !648, !"rt5645_mono_dmic_l_mux", i1 false, i1 false}
!648 = !{!"../sound/soc/codecs/rt5645.c", i32 1386, i32 38}
!649 = !{ptr @rt5645_mono_dmic_l_enum, !650, !"rt5645_mono_dmic_l_enum", i1 false, i1 false}
!650 = !{!"../sound/soc/codecs/rt5645.c", i32 1382, i32 8}
!651 = !{ptr @rt5645_mono_dmic_src, !652, !"rt5645_mono_dmic_src", i1 false, i1 false}
!652 = !{!"../sound/soc/codecs/rt5645.c", i32 1378, i32 27}
!653 = !{ptr @.str.311, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../sound/soc/codecs/rt5645.c", i32 1394, i32 2}
!655 = !{ptr @rt5645_mono_dmic_r_mux, !656, !"rt5645_mono_dmic_r_mux", i1 false, i1 false}
!656 = !{!"../sound/soc/codecs/rt5645.c", i32 1393, i32 38}
!657 = !{ptr @rt5645_mono_dmic_r_enum, !658, !"rt5645_mono_dmic_r_enum", i1 false, i1 false}
!658 = !{!"../sound/soc/codecs/rt5645.c", i32 1389, i32 8}
!659 = !{ptr @.str.312, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../sound/soc/codecs/rt5645.c", i32 1375, i32 2}
!661 = !{ptr @rt5645_mono_adc_l2_mux, !662, !"rt5645_mono_adc_l2_mux", i1 false, i1 false}
!662 = !{!"../sound/soc/codecs/rt5645.c", i32 1374, i32 38}
!663 = !{ptr @rt5645_mono_adc_l2_enum, !664, !"rt5645_mono_adc_l2_enum", i1 false, i1 false}
!664 = !{!"../sound/soc/codecs/rt5645.c", i32 1370, i32 8}
!665 = !{ptr @rt5645_mono_adc_l2_src, !666, !"rt5645_mono_adc_l2_src", i1 false, i1 false}
!666 = !{!"../sound/soc/codecs/rt5645.c", i32 1366, i32 27}
!667 = !{ptr @.str.313, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../sound/soc/codecs/rt5645.c", i32 1364, i32 2}
!669 = !{ptr @rt5645_mono_adc_l1_mux, !670, !"rt5645_mono_adc_l1_mux", i1 false, i1 false}
!670 = !{!"../sound/soc/codecs/rt5645.c", i32 1363, i32 38}
!671 = !{ptr @rt5645_mono_adc_l1_enum, !672, !"rt5645_mono_adc_l1_enum", i1 false, i1 false}
!672 = !{!"../sound/soc/codecs/rt5645.c", i32 1359, i32 8}
!673 = !{ptr @rt5645_mono_adc_l1_src, !674, !"rt5645_mono_adc_l1_src", i1 false, i1 false}
!674 = !{!"../sound/soc/codecs/rt5645.c", i32 1355, i32 27}
!675 = !{ptr @.str.314, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../sound/soc/codecs/rt5645.c", i32 1405, i32 2}
!677 = !{ptr @rt5645_mono_adc_r1_mux, !678, !"rt5645_mono_adc_r1_mux", i1 false, i1 false}
!678 = !{!"../sound/soc/codecs/rt5645.c", i32 1404, i32 38}
!679 = !{ptr @rt5645_mono_adc_r1_enum, !680, !"rt5645_mono_adc_r1_enum", i1 false, i1 false}
!680 = !{!"../sound/soc/codecs/rt5645.c", i32 1400, i32 8}
!681 = !{ptr @rt5645_mono_adc_r1_src, !682, !"rt5645_mono_adc_r1_src", i1 false, i1 false}
!682 = !{!"../sound/soc/codecs/rt5645.c", i32 1396, i32 27}
!683 = !{ptr @.str.315, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../sound/soc/codecs/rt5645.c", i32 1416, i32 2}
!685 = !{ptr @rt5645_mono_adc_r2_mux, !686, !"rt5645_mono_adc_r2_mux", i1 false, i1 false}
!686 = !{!"../sound/soc/codecs/rt5645.c", i32 1415, i32 38}
!687 = !{ptr @rt5645_mono_adc_r2_enum, !688, !"rt5645_mono_adc_r2_enum", i1 false, i1 false}
!688 = !{!"../sound/soc/codecs/rt5645.c", i32 1411, i32 8}
!689 = !{ptr @rt5645_mono_adc_r2_src, !690, !"rt5645_mono_adc_r2_src", i1 false, i1 false}
!690 = !{!"../sound/soc/codecs/rt5645.c", i32 1407, i32 27}
!691 = !{ptr @.str.316, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../sound/soc/codecs/rt5645.c", i32 1050, i32 2}
!693 = !{ptr @.str.318, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../sound/soc/codecs/rt5645.c", i32 1052, i32 2}
!695 = !{ptr @rt5645_sto1_adc_l_mix, !696, !"rt5645_sto1_adc_l_mix", i1 false, i1 false}
!696 = !{!"../sound/soc/codecs/rt5645.c", i32 1049, i32 38}
!697 = !{ptr @rt5645_sto1_adc_r_mix, !698, !"rt5645_sto1_adc_r_mix", i1 false, i1 false}
!698 = !{!"../sound/soc/codecs/rt5645.c", i32 1056, i32 38}
!699 = !{ptr @rt5645_mono_adc_l_mix, !700, !"rt5645_mono_adc_l_mix", i1 false, i1 false}
!700 = !{!"../sound/soc/codecs/rt5645.c", i32 1063, i32 38}
!701 = !{ptr @rt5645_mono_adc_r_mix, !702, !"rt5645_mono_adc_r_mix", i1 false, i1 false}
!702 = !{!"../sound/soc/codecs/rt5645.c", i32 1070, i32 38}
!703 = !{ptr @.str.326, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../sound/soc/codecs/rt5645.c", i32 1613, i32 2}
!705 = !{ptr @rt5645_if2_adc_in_mux, !706, !"rt5645_if2_adc_in_mux", i1 false, i1 false}
!706 = !{!"../sound/soc/codecs/rt5645.c", i32 1612, i32 38}
!707 = !{ptr @rt5645_if2_adc_in_enum, !708, !"rt5645_if2_adc_in_enum", i1 false, i1 false}
!708 = !{!"../sound/soc/codecs/rt5645.c", i32 1608, i32 8}
!709 = !{ptr @rt5645_if2_adc_in_src, !710, !"rt5645_if2_adc_in_src", i1 false, i1 false}
!710 = !{!"../sound/soc/codecs/rt5645.c", i32 1604, i32 27}
!711 = !{ptr @.str.327, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../sound/soc/codecs/rt5645.c", i32 1644, i32 2}
!713 = !{ptr @rt5645_vad_adc_mux, !714, !"rt5645_vad_adc_mux", i1 false, i1 false}
!714 = !{!"../sound/soc/codecs/rt5645.c", i32 1643, i32 38}
!715 = !{ptr @rt5645_vad_adc_enum, !716, !"rt5645_vad_adc_enum", i1 false, i1 false}
!716 = !{!"../sound/soc/codecs/rt5645.c", i32 1639, i32 8}
!717 = !{ptr @.str.328, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../sound/soc/codecs/rt5645.c", i32 1636, i32 2}
!719 = !{ptr @.str.329, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../sound/soc/codecs/rt5645.c", i32 1636, i32 16}
!721 = !{ptr @.str.330, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../sound/soc/codecs/rt5645.c", i32 1636, i32 30}
!723 = !{ptr @rt5645_vad_adc_src, !724, !"rt5645_vad_adc_src", i1 false, i1 false}
!724 = !{!"../sound/soc/codecs/rt5645.c", i32 1635, i32 27}
!725 = !{ptr @.str.331, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../sound/soc/codecs/rt5645.c", i32 1078, i32 2}
!727 = !{ptr @.str.333, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../sound/soc/codecs/rt5645.c", i32 1080, i32 2}
!729 = !{ptr @rt5645_dac_l_mix, !730, !"rt5645_dac_l_mix", i1 false, i1 false}
!730 = !{!"../sound/soc/codecs/rt5645.c", i32 1077, i32 38}
!731 = !{ptr @rt5645_dac_r_mix, !732, !"rt5645_dac_r_mix", i1 false, i1 false}
!732 = !{!"../sound/soc/codecs/rt5645.c", i32 1084, i32 38}
!733 = !{ptr @.str.337, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../sound/soc/codecs/rt5645.c", i32 1303, i32 2}
!735 = !{ptr @rt5645_dac_l2_mux, !736, !"rt5645_dac_l2_mux", i1 false, i1 false}
!736 = !{!"../sound/soc/codecs/rt5645.c", i32 1302, i32 38}
!737 = !{ptr @rt5645_dac2l_enum, !738, !"rt5645_dac2l_enum", i1 false, i1 false}
!738 = !{!"../sound/soc/codecs/rt5645.c", i32 1298, i32 8}
!739 = !{ptr @.str.338, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../sound/soc/codecs/rt5645.c", i32 1295, i32 2}
!741 = !{ptr @.str.339, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../sound/soc/codecs/rt5645.c", i32 1295, i32 24}
!743 = !{ptr @.str.340, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../sound/soc/codecs/rt5645.c", i32 1295, i32 35}
!745 = !{ptr @rt5645_dac12_src, !746, !"rt5645_dac12_src", i1 false, i1 false}
!746 = !{!"../sound/soc/codecs/rt5645.c", i32 1294, i32 27}
!747 = !{ptr @.str.341, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../sound/soc/codecs/rt5645.c", i32 1314, i32 2}
!749 = !{ptr @rt5645_dac_r2_mux, !750, !"rt5645_dac_r2_mux", i1 false, i1 false}
!750 = !{!"../sound/soc/codecs/rt5645.c", i32 1313, i32 38}
!751 = !{ptr @rt5645_dac2r_enum, !752, !"rt5645_dac2r_enum", i1 false, i1 false}
!752 = !{!"../sound/soc/codecs/rt5645.c", i32 1309, i32 8}
!753 = !{ptr @.str.342, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../sound/soc/codecs/rt5645.c", i32 1306, i32 47}
!755 = !{ptr @rt5645_dacr2_src, !756, !"rt5645_dacr2_src", i1 false, i1 false}
!756 = !{!"../sound/soc/codecs/rt5645.c", i32 1305, i32 27}
!757 = !{ptr @.str.343, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../sound/soc/codecs/rt5645.c", i32 1284, i32 2}
!759 = !{ptr @rt5645_dac1l_mux, !760, !"rt5645_dac1l_mux", i1 false, i1 false}
!760 = !{!"../sound/soc/codecs/rt5645.c", i32 1283, i32 38}
!761 = !{ptr @rt5645_dac1l_enum, !762, !"rt5645_dac1l_enum", i1 false, i1 false}
!762 = !{!"../sound/soc/codecs/rt5645.c", i32 1279, i32 8}
!763 = !{ptr @rt5645_dac1_src, !764, !"rt5645_dac1_src", i1 false, i1 false}
!764 = !{!"../sound/soc/codecs/rt5645.c", i32 1275, i32 27}
!765 = !{ptr @.str.344, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../sound/soc/codecs/rt5645.c", i32 1291, i32 2}
!767 = !{ptr @rt5645_dac1r_mux, !768, !"rt5645_dac1r_mux", i1 false, i1 false}
!768 = !{!"../sound/soc/codecs/rt5645.c", i32 1290, i32 38}
!769 = !{ptr @rt5645_dac1r_enum, !770, !"rt5645_dac1r_enum", i1 false, i1 false}
!770 = !{!"../sound/soc/codecs/rt5645.c", i32 1286, i32 8}
!771 = !{ptr @.str.345, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../sound/soc/codecs/rt5645.c", i32 1092, i32 2}
!773 = !{ptr @.str.347, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../sound/soc/codecs/rt5645.c", i32 1094, i32 2}
!775 = !{ptr @.str.349, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../sound/soc/codecs/rt5645.c", i32 1096, i32 2}
!777 = !{ptr @rt5645_sto_dac_l_mix, !778, !"rt5645_sto_dac_l_mix", i1 false, i1 false}
!778 = !{!"../sound/soc/codecs/rt5645.c", i32 1091, i32 38}
!779 = !{ptr @.str.352, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../sound/soc/codecs/rt5645.c", i32 1103, i32 2}
!781 = !{ptr @rt5645_sto_dac_r_mix, !782, !"rt5645_sto_dac_r_mix", i1 false, i1 false}
!782 = !{!"../sound/soc/codecs/rt5645.c", i32 1100, i32 38}
!783 = !{ptr @rt5645_mono_dac_l_mix, !784, !"rt5645_mono_dac_l_mix", i1 false, i1 false}
!784 = !{!"../sound/soc/codecs/rt5645.c", i32 1109, i32 38}
!785 = !{ptr @rt5645_mono_dac_r_mix, !786, !"rt5645_mono_dac_r_mix", i1 false, i1 false}
!786 = !{!"../sound/soc/codecs/rt5645.c", i32 1118, i32 38}
!787 = !{ptr @.str.361, !788, !"<string literal>", i1 false, i1 false}
!788 = !{!"../sound/soc/codecs/rt5645.c", i32 1128, i32 2}
!789 = !{ptr @rt5645_dig_l_mix, !790, !"rt5645_dig_l_mix", i1 false, i1 false}
!790 = !{!"../sound/soc/codecs/rt5645.c", i32 1127, i32 38}
!791 = !{ptr @.str.365, !792, !"<string literal>", i1 false, i1 false}
!792 = !{!"../sound/soc/codecs/rt5645.c", i32 1137, i32 2}
!793 = !{ptr @rt5645_dig_r_mix, !794, !"rt5645_dig_r_mix", i1 false, i1 false}
!794 = !{!"../sound/soc/codecs/rt5645.c", i32 1136, i32 38}
!795 = !{ptr @rt5645_spk_l_mix, !796, !"rt5645_spk_l_mix", i1 false, i1 false}
!796 = !{!"../sound/soc/codecs/rt5645.c", i32 1172, i32 38}
!797 = !{ptr @rt5645_spk_r_mix, !798, !"rt5645_spk_r_mix", i1 false, i1 false}
!798 = !{!"../sound/soc/codecs/rt5645.c", i32 1183, i32 38}
!799 = !{ptr @rt5645_out_l_mix, !800, !"rt5645_out_l_mix", i1 false, i1 false}
!800 = !{!"../sound/soc/codecs/rt5645.c", i32 1194, i32 38}
!801 = !{ptr @rt5645_out_r_mix, !802, !"rt5645_out_r_mix", i1 false, i1 false}
!802 = !{!"../sound/soc/codecs/rt5645.c", i32 1205, i32 38}
!803 = !{ptr @.str.385, !804, !"<string literal>", i1 false, i1 false}
!804 = !{!"../sound/soc/codecs/rt5645.c", i32 1647, i32 2}
!805 = !{ptr @spk_l_vol_control, !806, !"spk_l_vol_control", i1 false, i1 false}
!806 = !{!"../sound/soc/codecs/rt5645.c", i32 1646, i32 38}
!807 = !{ptr @spk_r_vol_control, !808, !"spk_r_vol_control", i1 false, i1 false}
!808 = !{!"../sound/soc/codecs/rt5645.c", i32 1650, i32 38}
!809 = !{ptr @.str.389, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../sound/soc/codecs/rt5645.c", i32 1244, i32 2}
!811 = !{ptr @rt5645_hpvoll_mix, !812, !"rt5645_hpvoll_mix", i1 false, i1 false}
!812 = !{!"../sound/soc/codecs/rt5645.c", i32 1241, i32 38}
!813 = !{ptr @rt5645_hpvolr_mix, !814, !"rt5645_hpvolr_mix", i1 false, i1 false}
!814 = !{!"../sound/soc/codecs/rt5645.c", i32 1252, i32 38}
!815 = !{ptr @hp_l_vol_control, !816, !"hp_l_vol_control", i1 false, i1 false}
!816 = !{!"../sound/soc/codecs/rt5645.c", i32 1654, i32 38}
!817 = !{ptr @hp_r_vol_control, !818, !"hp_r_vol_control", i1 false, i1 false}
!818 = !{!"../sound/soc/codecs/rt5645.c", i32 1658, i32 38}
!819 = !{ptr @.str.401, !820, !"<string literal>", i1 false, i1 false}
!820 = !{!"../sound/soc/codecs/rt5645.c", i32 1221, i32 2}
!821 = !{ptr @.str.403, !822, !"<string literal>", i1 false, i1 false}
!822 = !{!"../sound/soc/codecs/rt5645.c", i32 1223, i32 2}
!823 = !{ptr @rt5645_spo_l_mix, !824, !"rt5645_spo_l_mix", i1 false, i1 false}
!824 = !{!"../sound/soc/codecs/rt5645.c", i32 1216, i32 38}
!825 = !{ptr @rt5645_spo_r_mix, !826, !"rt5645_spo_r_mix", i1 false, i1 false}
!826 = !{!"../sound/soc/codecs/rt5645.c", i32 1227, i32 38}
!827 = !{ptr @.str.408, !828, !"<string literal>", i1 false, i1 false}
!828 = !{!"../sound/soc/codecs/rt5645.c", i32 1237, i32 2}
!829 = !{ptr @rt5645_hpo_mix, !830, !"rt5645_hpo_mix", i1 false, i1 false}
!830 = !{!"../sound/soc/codecs/rt5645.c", i32 1234, i32 38}
!831 = !{ptr @.str.412, !832, !"<string literal>", i1 false, i1 false}
!832 = !{!"../sound/soc/codecs/rt5645.c", i32 1268, i32 2}
!833 = !{ptr @.str.414, !834, !"<string literal>", i1 false, i1 false}
!834 = !{!"../sound/soc/codecs/rt5645.c", i32 1270, i32 2}
!835 = !{ptr @rt5645_lout_mix, !836, !"rt5645_lout_mix", i1 false, i1 false}
!836 = !{!"../sound/soc/codecs/rt5645.c", i32 1263, i32 38}
!837 = !{ptr @hp_amp_power.hp_amp_power_count, !838, !"hp_amp_power_count", i1 false, i1 false}
!838 = !{!"../sound/soc/codecs/rt5645.c", i32 1672, i32 13}
!839 = !{ptr @.str.416, !840, !"<string literal>", i1 false, i1 false}
!840 = !{!"../sound/soc/codecs/rt5645.c", i32 1625, i32 2}
!841 = !{ptr @rt5645_pdm1_l_mux, !842, !"rt5645_pdm1_l_mux", i1 false, i1 false}
!842 = !{!"../sound/soc/codecs/rt5645.c", i32 1624, i32 38}
!843 = !{ptr @rt5645_pdm1_l_enum, !844, !"rt5645_pdm1_l_enum", i1 false, i1 false}
!844 = !{!"../sound/soc/codecs/rt5645.c", i32 1620, i32 8}
!845 = !{ptr @.str.417, !846, !"<string literal>", i1 false, i1 false}
!846 = !{!"../sound/soc/codecs/rt5645.c", i32 1617, i32 2}
!847 = !{ptr @.str.418, !848, !"<string literal>", i1 false, i1 false}
!848 = !{!"../sound/soc/codecs/rt5645.c", i32 1617, i32 14}
!849 = !{ptr @rt5645_pdm_src, !850, !"rt5645_pdm_src", i1 false, i1 false}
!850 = !{!"../sound/soc/codecs/rt5645.c", i32 1616, i32 27}
!851 = !{ptr @.str.419, !852, !"<string literal>", i1 false, i1 false}
!852 = !{!"../sound/soc/codecs/rt5645.c", i32 1632, i32 2}
!853 = !{ptr @rt5645_pdm1_r_mux, !854, !"rt5645_pdm1_r_mux", i1 false, i1 false}
!854 = !{!"../sound/soc/codecs/rt5645.c", i32 1631, i32 38}
!855 = !{ptr @rt5645_pdm1_r_enum, !856, !"rt5645_pdm1_r_enum", i1 false, i1 false}
!856 = !{!"../sound/soc/codecs/rt5645.c", i32 1627, i32 8}
!857 = !{ptr @pdm1_l_vol_control, !858, !"pdm1_l_vol_control", i1 false, i1 false}
!858 = !{!"../sound/soc/codecs/rt5645.c", i32 1662, i32 38}
!859 = !{ptr @pdm1_r_vol_control, !860, !"pdm1_r_vol_control", i1 false, i1 false}
!860 = !{!"../sound/soc/codecs/rt5645.c", i32 1666, i32 38}
!861 = !{ptr @rt5645_dapm_routes, !862, !"rt5645_dapm_routes", i1 false, i1 false}
!862 = !{!"../sound/soc/codecs/rt5645.c", i32 2306, i32 40}
!863 = !{ptr @.str.422, !864, !"<string literal>", i1 false, i1 false}
!864 = !{!"../sound/soc/codecs/rt5645.c", i32 2259, i32 2}
!865 = !{ptr @.str.423, !866, !"<string literal>", i1 false, i1 false}
!866 = !{!"../sound/soc/codecs/rt5645.c", i32 2261, i32 2}
!867 = !{ptr @.str.424, !868, !"<string literal>", i1 false, i1 false}
!868 = !{!"../sound/soc/codecs/rt5645.c", i32 2263, i32 2}
!869 = !{ptr @.str.425, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../sound/soc/codecs/rt5645.c", i32 2265, i32 2}
!871 = !{ptr @.str.426, !872, !"<string literal>", i1 false, i1 false}
!872 = !{!"../sound/soc/codecs/rt5645.c", i32 2267, i32 2}
!873 = !{ptr @.str.427, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../sound/soc/codecs/rt5645.c", i32 2269, i32 2}
!875 = !{ptr @.str.428, !876, !"<string literal>", i1 false, i1 false}
!876 = !{!"../sound/soc/codecs/rt5645.c", i32 2271, i32 2}
!877 = !{ptr @.str.429, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../sound/soc/codecs/rt5645.c", i32 2273, i32 2}
!879 = !{ptr @rt5645_specific_dapm_widgets, !880, !"rt5645_specific_dapm_widgets", i1 false, i1 false}
!880 = !{!"../sound/soc/codecs/rt5645.c", i32 2258, i32 41}
!881 = !{ptr @.str.431, !882, !"<string literal>", i1 false, i1 false}
!882 = !{!"../sound/soc/codecs/rt5645.c", i32 1520, i32 2}
!883 = !{ptr @rt5645_if1_dac0_tdm_sel_mux, !884, !"rt5645_if1_dac0_tdm_sel_mux", i1 false, i1 false}
!884 = !{!"../sound/soc/codecs/rt5645.c", i32 1519, i32 38}
!885 = !{ptr @rt5645_tdm_dac0_enum, !886, !"rt5645_tdm_dac0_enum", i1 false, i1 false}
!886 = !{!"../sound/soc/codecs/rt5645.c", i32 1516, i32 8}
!887 = !{ptr @.str.432, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../sound/soc/codecs/rt5645.c", i32 1513, i32 2}
!889 = !{ptr @.str.433, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../sound/soc/codecs/rt5645.c", i32 1513, i32 11}
!891 = !{ptr @.str.434, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../sound/soc/codecs/rt5645.c", i32 1513, i32 20}
!893 = !{ptr @.str.435, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../sound/soc/codecs/rt5645.c", i32 1513, i32 29}
!895 = !{ptr @rt5645_tdm_dac_swap_select, !896, !"rt5645_tdm_dac_swap_select", i1 false, i1 false}
!896 = !{!"../sound/soc/codecs/rt5645.c", i32 1512, i32 27}
!897 = !{ptr @.str.436, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../sound/soc/codecs/rt5645.c", i32 1526, i32 2}
!899 = !{ptr @rt5645_if1_dac1_tdm_sel_mux, !900, !"rt5645_if1_dac1_tdm_sel_mux", i1 false, i1 false}
!900 = !{!"../sound/soc/codecs/rt5645.c", i32 1525, i32 38}
!901 = !{ptr @rt5645_tdm_dac1_enum, !902, !"rt5645_tdm_dac1_enum", i1 false, i1 false}
!902 = !{!"../sound/soc/codecs/rt5645.c", i32 1522, i32 8}
!903 = !{ptr @.str.437, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../sound/soc/codecs/rt5645.c", i32 1532, i32 2}
!905 = !{ptr @rt5645_if1_dac2_tdm_sel_mux, !906, !"rt5645_if1_dac2_tdm_sel_mux", i1 false, i1 false}
!906 = !{!"../sound/soc/codecs/rt5645.c", i32 1531, i32 38}
!907 = !{ptr @rt5645_tdm_dac2_enum, !908, !"rt5645_tdm_dac2_enum", i1 false, i1 false}
!908 = !{!"../sound/soc/codecs/rt5645.c", i32 1528, i32 8}
!909 = !{ptr @.str.438, !910, !"<string literal>", i1 false, i1 false}
!910 = !{!"../sound/soc/codecs/rt5645.c", i32 1538, i32 2}
!911 = !{ptr @rt5645_if1_dac3_tdm_sel_mux, !912, !"rt5645_if1_dac3_tdm_sel_mux", i1 false, i1 false}
!912 = !{!"../sound/soc/codecs/rt5645.c", i32 1537, i32 38}
!913 = !{ptr @rt5645_tdm_dac3_enum, !914, !"rt5645_tdm_dac3_enum", i1 false, i1 false}
!914 = !{!"../sound/soc/codecs/rt5645.c", i32 1534, i32 8}
!915 = !{ptr @.str.439, !916, !"<string literal>", i1 false, i1 false}
!916 = !{!"../sound/soc/codecs/rt5645.c", i32 1429, i32 2}
!917 = !{ptr @rt5645_if1_adc_in_mux, !918, !"rt5645_if1_adc_in_mux", i1 false, i1 false}
!918 = !{!"../sound/soc/codecs/rt5645.c", i32 1428, i32 38}
!919 = !{ptr @rt5645_if1_adc_in_enum, !920, !"rt5645_if1_adc_in_enum", i1 false, i1 false}
!920 = !{!"../sound/soc/codecs/rt5645.c", i32 1424, i32 8}
!921 = !{ptr @.str.440, !922, !"<string literal>", i1 false, i1 false}
!922 = !{!"../sound/soc/codecs/rt5645.c", i32 1420, i32 2}
!923 = !{ptr @.str.441, !924, !"<string literal>", i1 false, i1 false}
!924 = !{!"../sound/soc/codecs/rt5645.c", i32 1420, i32 29}
!925 = !{ptr @.str.442, !926, !"<string literal>", i1 false, i1 false}
!926 = !{!"../sound/soc/codecs/rt5645.c", i32 1421, i32 2}
!927 = !{ptr @.str.443, !928, !"<string literal>", i1 false, i1 false}
!928 = !{!"../sound/soc/codecs/rt5645.c", i32 1421, i32 29}
!929 = !{ptr @rt5645_if1_adc_in_src, !930, !"rt5645_if1_adc_in_src", i1 false, i1 false}
!930 = !{!"../sound/soc/codecs/rt5645.c", i32 1419, i32 27}
!931 = !{ptr @.str.444, !932, !"<string literal>", i1 false, i1 false}
!932 = !{!"../sound/soc/codecs/rt5645.c", i32 1497, i32 2}
!933 = !{ptr @rt5645_if1_adc1_in_mux, !934, !"rt5645_if1_adc1_in_mux", i1 false, i1 false}
!934 = !{!"../sound/soc/codecs/rt5645.c", i32 1496, i32 38}
!935 = !{ptr @rt5645_tdm_adc_slot0_1_enum, !936, !"rt5645_tdm_adc_slot0_1_enum", i1 false, i1 false}
!936 = !{!"../sound/soc/codecs/rt5645.c", i32 1493, i32 8}
!937 = !{ptr @.str.445, !938, !"<string literal>", i1 false, i1 false}
!938 = !{!"../sound/soc/codecs/rt5645.c", i32 1471, i32 2}
!939 = !{ptr @.str.446, !940, !"<string literal>", i1 false, i1 false}
!940 = !{!"../sound/soc/codecs/rt5645.c", i32 1471, i32 9}
!941 = !{ptr @.str.447, !942, !"<string literal>", i1 false, i1 false}
!942 = !{!"../sound/soc/codecs/rt5645.c", i32 1471, i32 16}
!943 = !{ptr @.str.448, !944, !"<string literal>", i1 false, i1 false}
!944 = !{!"../sound/soc/codecs/rt5645.c", i32 1471, i32 23}
!945 = !{ptr @rt5645_tdm_adc_swap_select, !946, !"rt5645_tdm_adc_swap_select", i1 false, i1 false}
!946 = !{!"../sound/soc/codecs/rt5645.c", i32 1470, i32 27}
!947 = !{ptr @.str.449, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../sound/soc/codecs/rt5645.c", i32 1503, i32 2}
!949 = !{ptr @rt5645_if1_adc2_in_mux, !950, !"rt5645_if1_adc2_in_mux", i1 false, i1 false}
!950 = !{!"../sound/soc/codecs/rt5645.c", i32 1502, i32 38}
!951 = !{ptr @rt5645_tdm_adc_slot2_3_enum, !952, !"rt5645_tdm_adc_slot2_3_enum", i1 false, i1 false}
!952 = !{!"../sound/soc/codecs/rt5645.c", i32 1499, i32 8}
!953 = !{ptr @.str.450, !954, !"<string literal>", i1 false, i1 false}
!954 = !{!"../sound/soc/codecs/rt5645.c", i32 1509, i32 2}
!955 = !{ptr @rt5645_if1_adc3_in_mux, !956, !"rt5645_if1_adc3_in_mux", i1 false, i1 false}
!956 = !{!"../sound/soc/codecs/rt5645.c", i32 1508, i32 38}
!957 = !{ptr @rt5645_tdm_adc_slot4_5_enum, !958, !"rt5645_tdm_adc_slot4_5_enum", i1 false, i1 false}
!958 = !{!"../sound/soc/codecs/rt5645.c", i32 1505, i32 8}
!959 = !{ptr @rt5645_specific_dapm_routes, !960, !"rt5645_specific_dapm_routes", i1 false, i1 false}
!960 = !{!"../sound/soc/codecs/rt5645.c", i32 2678, i32 40}
!961 = !{ptr @rt5645_old_dapm_routes, !962, !"rt5645_old_dapm_routes", i1 false, i1 false}
!962 = !{!"../sound/soc/codecs/rt5645.c", i32 2736, i32 40}
!963 = !{ptr @.str.451, !964, !"<string literal>", i1 false, i1 false}
!964 = !{!"../sound/soc/codecs/rt5645.c", i32 2278, i32 2}
!965 = !{ptr @.str.452, !966, !"<string literal>", i1 false, i1 false}
!966 = !{!"../sound/soc/codecs/rt5645.c", i32 2280, i32 2}
!967 = !{ptr @.str.453, !968, !"<string literal>", i1 false, i1 false}
!968 = !{!"../sound/soc/codecs/rt5645.c", i32 2282, i32 2}
!969 = !{ptr @.str.454, !970, !"<string literal>", i1 false, i1 false}
!970 = !{!"../sound/soc/codecs/rt5645.c", i32 2284, i32 2}
!971 = !{ptr @.str.455, !972, !"<string literal>", i1 false, i1 false}
!972 = !{!"../sound/soc/codecs/rt5645.c", i32 2287, i32 2}
!973 = !{ptr @.str.456, !974, !"<string literal>", i1 false, i1 false}
!974 = !{!"../sound/soc/codecs/rt5645.c", i32 2289, i32 2}
!975 = !{ptr @.str.457, !976, !"<string literal>", i1 false, i1 false}
!976 = !{!"../sound/soc/codecs/rt5645.c", i32 2291, i32 2}
!977 = !{ptr @.str.458, !978, !"<string literal>", i1 false, i1 false}
!978 = !{!"../sound/soc/codecs/rt5645.c", i32 2293, i32 2}
!979 = !{ptr @.str.459, !980, !"<string literal>", i1 false, i1 false}
!980 = !{!"../sound/soc/codecs/rt5645.c", i32 2296, i32 2}
!981 = !{ptr @.str.460, !982, !"<string literal>", i1 false, i1 false}
!982 = !{!"../sound/soc/codecs/rt5645.c", i32 2298, i32 2}
!983 = !{ptr @.str.461, !984, !"<string literal>", i1 false, i1 false}
!984 = !{!"../sound/soc/codecs/rt5645.c", i32 2300, i32 2}
!985 = !{ptr @.str.462, !986, !"<string literal>", i1 false, i1 false}
!986 = !{!"../sound/soc/codecs/rt5645.c", i32 2302, i32 2}
!987 = !{ptr @rt5650_specific_dapm_widgets, !988, !"rt5650_specific_dapm_widgets", i1 false, i1 false}
!988 = !{!"../sound/soc/codecs/rt5645.c", i32 2277, i32 41}
!989 = !{ptr @.str.464, !990, !"<string literal>", i1 false, i1 false}
!990 = !{!"../sound/soc/codecs/rt5645.c", i32 1575, i32 2}
!991 = !{ptr @rt5650_a_dac1_l_mux, !992, !"rt5650_a_dac1_l_mux", i1 false, i1 false}
!992 = !{!"../sound/soc/codecs/rt5645.c", i32 1574, i32 38}
!993 = !{ptr @rt5650_a_dac1_l_enum, !994, !"rt5650_a_dac1_l_enum", i1 false, i1 false}
!994 = !{!"../sound/soc/codecs/rt5645.c", i32 1570, i32 8}
!995 = !{ptr @.str.465, !996, !"<string literal>", i1 false, i1 false}
!996 = !{!"../sound/soc/codecs/rt5645.c", i32 1567, i32 2}
!997 = !{ptr @.str.466, !998, !"<string literal>", i1 false, i1 false}
!998 = !{!"../sound/soc/codecs/rt5645.c", i32 1567, i32 10}
!999 = !{ptr @rt5650_a_dac1_src, !1000, !"rt5650_a_dac1_src", i1 false, i1 false}
!1000 = !{!"../sound/soc/codecs/rt5645.c", i32 1566, i32 27}
!1001 = !{ptr @.str.467, !1002, !"<string literal>", i1 false, i1 false}
!1002 = !{!"../sound/soc/codecs/rt5645.c", i32 1582, i32 2}
!1003 = !{ptr @rt5650_a_dac1_r_mux, !1004, !"rt5650_a_dac1_r_mux", i1 false, i1 false}
!1004 = !{!"../sound/soc/codecs/rt5645.c", i32 1581, i32 38}
!1005 = !{ptr @rt5650_a_dac1_r_enum, !1006, !"rt5650_a_dac1_r_enum", i1 false, i1 false}
!1006 = !{!"../sound/soc/codecs/rt5645.c", i32 1577, i32 8}
!1007 = !{ptr @.str.468, !1008, !"<string literal>", i1 false, i1 false}
!1008 = !{!"../sound/soc/codecs/rt5645.c", i32 1594, i32 2}
!1009 = !{ptr @rt5650_a_dac2_l_mux, !1010, !"rt5650_a_dac2_l_mux", i1 false, i1 false}
!1010 = !{!"../sound/soc/codecs/rt5645.c", i32 1593, i32 38}
!1011 = !{ptr @rt5650_a_dac2_l_enum, !1012, !"rt5650_a_dac2_l_enum", i1 false, i1 false}
!1012 = !{!"../sound/soc/codecs/rt5645.c", i32 1589, i32 8}
!1013 = !{ptr @.str.469, !1014, !"<string literal>", i1 false, i1 false}
!1014 = !{!"../sound/soc/codecs/rt5645.c", i32 1586, i32 22}
!1015 = !{ptr @rt5650_a_dac2_src, !1016, !"rt5650_a_dac2_src", i1 false, i1 false}
!1016 = !{!"../sound/soc/codecs/rt5645.c", i32 1585, i32 27}
!1017 = !{ptr @.str.470, !1018, !"<string literal>", i1 false, i1 false}
!1018 = !{!"../sound/soc/codecs/rt5645.c", i32 1601, i32 2}
!1019 = !{ptr @rt5650_a_dac2_r_mux, !1020, !"rt5650_a_dac2_r_mux", i1 false, i1 false}
!1020 = !{!"../sound/soc/codecs/rt5645.c", i32 1600, i32 38}
!1021 = !{ptr @rt5650_a_dac2_r_enum, !1022, !"rt5650_a_dac2_r_enum", i1 false, i1 false}
!1022 = !{!"../sound/soc/codecs/rt5645.c", i32 1596, i32 8}
!1023 = !{ptr @rt5650_if1_adc1_in_mux, !1024, !"rt5650_if1_adc1_in_mux", i1 false, i1 false}
!1024 = !{!"../sound/soc/codecs/rt5645.c", i32 1477, i32 38}
!1025 = !{ptr @rt5650_tdm_adc_slot0_1_enum, !1026, !"rt5650_tdm_adc_slot0_1_enum", i1 false, i1 false}
!1026 = !{!"../sound/soc/codecs/rt5645.c", i32 1474, i32 8}
!1027 = !{ptr @rt5650_if1_adc2_in_mux, !1028, !"rt5650_if1_adc2_in_mux", i1 false, i1 false}
!1028 = !{!"../sound/soc/codecs/rt5645.c", i32 1483, i32 38}
!1029 = !{ptr @rt5650_tdm_adc_slot2_3_enum, !1030, !"rt5650_tdm_adc_slot2_3_enum", i1 false, i1 false}
!1030 = !{!"../sound/soc/codecs/rt5645.c", i32 1480, i32 8}
!1031 = !{ptr @rt5650_if1_adc3_in_mux, !1032, !"rt5650_if1_adc3_in_mux", i1 false, i1 false}
!1032 = !{!"../sound/soc/codecs/rt5645.c", i32 1489, i32 38}
!1033 = !{ptr @rt5650_tdm_adc_slot4_5_enum, !1034, !"rt5650_tdm_adc_slot4_5_enum", i1 false, i1 false}
!1034 = !{!"../sound/soc/codecs/rt5645.c", i32 1486, i32 8}
!1035 = !{ptr @rt5650_if1_adc_in_mux, !1036, !"rt5650_if1_adc_in_mux", i1 false, i1 false}
!1036 = !{!"../sound/soc/codecs/rt5645.c", i32 1466, i32 38}
!1037 = !{ptr @rt5650_if1_adc_in_enum, !1038, !"rt5650_if1_adc_in_enum", i1 false, i1 false}
!1038 = !{!"../sound/soc/codecs/rt5645.c", i32 1462, i32 8}
!1039 = !{ptr @.str.471, !1040, !"<string literal>", i1 false, i1 false}
!1040 = !{!"../sound/soc/codecs/rt5645.c", i32 1433, i32 2}
!1041 = !{ptr @.str.472, !1042, !"<string literal>", i1 false, i1 false}
!1042 = !{!"../sound/soc/codecs/rt5645.c", i32 1434, i32 2}
!1043 = !{ptr @.str.473, !1044, !"<string literal>", i1 false, i1 false}
!1044 = !{!"../sound/soc/codecs/rt5645.c", i32 1435, i32 2}
!1045 = !{ptr @.str.474, !1046, !"<string literal>", i1 false, i1 false}
!1046 = !{!"../sound/soc/codecs/rt5645.c", i32 1436, i32 2}
!1047 = !{ptr @.str.475, !1048, !"<string literal>", i1 false, i1 false}
!1048 = !{!"../sound/soc/codecs/rt5645.c", i32 1437, i32 2}
!1049 = !{ptr @.str.476, !1050, !"<string literal>", i1 false, i1 false}
!1050 = !{!"../sound/soc/codecs/rt5645.c", i32 1438, i32 2}
!1051 = !{ptr @.str.477, !1052, !"<string literal>", i1 false, i1 false}
!1052 = !{!"../sound/soc/codecs/rt5645.c", i32 1440, i32 2}
!1053 = !{ptr @.str.478, !1054, !"<string literal>", i1 false, i1 false}
!1054 = !{!"../sound/soc/codecs/rt5645.c", i32 1441, i32 2}
!1055 = !{ptr @.str.479, !1056, !"<string literal>", i1 false, i1 false}
!1056 = !{!"../sound/soc/codecs/rt5645.c", i32 1442, i32 2}
!1057 = !{ptr @.str.480, !1058, !"<string literal>", i1 false, i1 false}
!1058 = !{!"../sound/soc/codecs/rt5645.c", i32 1443, i32 2}
!1059 = !{ptr @.str.481, !1060, !"<string literal>", i1 false, i1 false}
!1060 = !{!"../sound/soc/codecs/rt5645.c", i32 1444, i32 2}
!1061 = !{ptr @.str.482, !1062, !"<string literal>", i1 false, i1 false}
!1062 = !{!"../sound/soc/codecs/rt5645.c", i32 1445, i32 2}
!1063 = !{ptr @.str.483, !1064, !"<string literal>", i1 false, i1 false}
!1064 = !{!"../sound/soc/codecs/rt5645.c", i32 1447, i32 2}
!1065 = !{ptr @.str.484, !1066, !"<string literal>", i1 false, i1 false}
!1066 = !{!"../sound/soc/codecs/rt5645.c", i32 1448, i32 2}
!1067 = !{ptr @.str.485, !1068, !"<string literal>", i1 false, i1 false}
!1068 = !{!"../sound/soc/codecs/rt5645.c", i32 1449, i32 2}
!1069 = !{ptr @.str.486, !1070, !"<string literal>", i1 false, i1 false}
!1070 = !{!"../sound/soc/codecs/rt5645.c", i32 1450, i32 2}
!1071 = !{ptr @.str.487, !1072, !"<string literal>", i1 false, i1 false}
!1072 = !{!"../sound/soc/codecs/rt5645.c", i32 1451, i32 2}
!1073 = !{ptr @.str.488, !1074, !"<string literal>", i1 false, i1 false}
!1074 = !{!"../sound/soc/codecs/rt5645.c", i32 1452, i32 2}
!1075 = !{ptr @.str.489, !1076, !"<string literal>", i1 false, i1 false}
!1076 = !{!"../sound/soc/codecs/rt5645.c", i32 1454, i32 2}
!1077 = !{ptr @.str.490, !1078, !"<string literal>", i1 false, i1 false}
!1078 = !{!"../sound/soc/codecs/rt5645.c", i32 1455, i32 2}
!1079 = !{ptr @.str.491, !1080, !"<string literal>", i1 false, i1 false}
!1080 = !{!"../sound/soc/codecs/rt5645.c", i32 1456, i32 2}
!1081 = !{ptr @.str.492, !1082, !"<string literal>", i1 false, i1 false}
!1082 = !{!"../sound/soc/codecs/rt5645.c", i32 1457, i32 2}
!1083 = !{ptr @.str.493, !1084, !"<string literal>", i1 false, i1 false}
!1084 = !{!"../sound/soc/codecs/rt5645.c", i32 1458, i32 2}
!1085 = !{ptr @.str.494, !1086, !"<string literal>", i1 false, i1 false}
!1086 = !{!"../sound/soc/codecs/rt5645.c", i32 1459, i32 2}
!1087 = !{ptr @rt5650_if1_adc_in_src, !1088, !"rt5650_if1_adc_in_src", i1 false, i1 false}
!1088 = !{!"../sound/soc/codecs/rt5645.c", i32 1432, i32 27}
!1089 = !{ptr @rt5650_if1_dac0_tdm_sel_mux, !1090, !"rt5650_if1_dac0_tdm_sel_mux", i1 false, i1 false}
!1090 = !{!"../sound/soc/codecs/rt5645.c", i32 1544, i32 38}
!1091 = !{ptr @rt5650_tdm_dac0_enum, !1092, !"rt5650_tdm_dac0_enum", i1 false, i1 false}
!1092 = !{!"../sound/soc/codecs/rt5645.c", i32 1541, i32 8}
!1093 = !{ptr @rt5650_if1_dac1_tdm_sel_mux, !1094, !"rt5650_if1_dac1_tdm_sel_mux", i1 false, i1 false}
!1094 = !{!"../sound/soc/codecs/rt5645.c", i32 1550, i32 38}
!1095 = !{ptr @rt5650_tdm_dac1_enum, !1096, !"rt5650_tdm_dac1_enum", i1 false, i1 false}
!1096 = !{!"../sound/soc/codecs/rt5645.c", i32 1547, i32 8}
!1097 = !{ptr @rt5650_if1_dac2_tdm_sel_mux, !1098, !"rt5650_if1_dac2_tdm_sel_mux", i1 false, i1 false}
!1098 = !{!"../sound/soc/codecs/rt5645.c", i32 1556, i32 38}
!1099 = !{ptr @rt5650_tdm_dac2_enum, !1100, !"rt5650_tdm_dac2_enum", i1 false, i1 false}
!1100 = !{!"../sound/soc/codecs/rt5645.c", i32 1553, i32 8}
!1101 = !{ptr @rt5650_if1_dac3_tdm_sel_mux, !1102, !"rt5650_if1_dac3_tdm_sel_mux", i1 false, i1 false}
!1102 = !{!"../sound/soc/codecs/rt5645.c", i32 1562, i32 38}
!1103 = !{ptr @rt5650_tdm_dac3_enum, !1104, !"rt5650_tdm_dac3_enum", i1 false, i1 false}
!1104 = !{!"../sound/soc/codecs/rt5645.c", i32 1559, i32 8}
!1105 = !{ptr @rt5650_specific_dapm_routes, !1106, !"rt5650_specific_dapm_routes", i1 false, i1 false}
!1106 = !{!"../sound/soc/codecs/rt5645.c", i32 2587, i32 40}
!1107 = !{ptr @.str.495, !1108, !"<string literal>", i1 false, i1 false}
!1108 = !{!"../sound/soc/codecs/rt5645.c", i32 3484, i32 11}
!1109 = !{ptr @.str.496, !1110, !"<string literal>", i1 false, i1 false}
!1110 = !{!"../sound/soc/codecs/rt5645.c", i32 3503, i32 11}
!1111 = !{ptr @rt5645_dai, !1112, !"rt5645_dai", i1 false, i1 false}
!1112 = !{!"../sound/soc/codecs/rt5645.c", i32 3482, i32 34}
!1113 = !{ptr @rt5645_aif_dai_ops, !1114, !"rt5645_aif_dai_ops", i1 false, i1 false}
!1114 = !{!"../sound/soc/codecs/rt5645.c", i32 3474, i32 37}
!1115 = !{ptr @.str.497, !1116, !"<string literal>", i1 false, i1 false}
!1116 = !{!"../sound/soc/codecs/rt5645.c", i32 2909, i32 3}
!1117 = !{ptr @.str.498, !1116, !"<string literal>", i1 false, i1 false}
!1118 = !{ptr @rt5645_set_dai_sysclk._entry, !1116, !"_entry", i1 false, i1 false}
!1119 = !{ptr @rt5645_set_dai_sysclk._entry_ptr, !1116, !"_entry_ptr", i1 false, i1 false}
!1120 = !{ptr @.str.499, !1121, !"<string literal>", i1 false, i1 false}
!1121 = !{!"../sound/soc/codecs/rt5645.c", i32 2917, i32 2}
!1122 = !{ptr @rt5645_set_dai_sysclk.__UNIQUE_ID_ddebug300, !1121, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!1123 = !{ptr @.str.500, !1124, !"<string literal>", i1 false, i1 false}
!1124 = !{!"../sound/soc/codecs/rt5645.c", i32 2935, i32 3}
!1125 = !{ptr @.str.501, !1124, !"<string literal>", i1 false, i1 false}
!1126 = !{ptr @rt5645_set_dai_pll.__UNIQUE_ID_ddebug301, !1124, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!1127 = !{ptr @.str.502, !1128, !"<string literal>", i1 false, i1 false}
!1128 = !{!"../sound/soc/codecs/rt5645.c", i32 2961, i32 4}
!1129 = !{ptr @rt5645_set_dai_pll._entry, !1128, !"_entry", i1 false, i1 false}
!1130 = !{ptr @rt5645_set_dai_pll._entry_ptr, !1128, !"_entry_ptr", i1 false, i1 false}
!1131 = !{ptr @.str.504, !1132, !"<string literal>", i1 false, i1 false}
!1132 = !{!"../sound/soc/codecs/rt5645.c", i32 2966, i32 3}
!1133 = !{ptr @rt5645_set_dai_pll._entry.503, !1132, !"_entry", i1 false, i1 false}
!1134 = !{ptr @rt5645_set_dai_pll._entry_ptr.505, !1132, !"_entry_ptr", i1 false, i1 false}
!1135 = !{ptr @.str.507, !1136, !"<string literal>", i1 false, i1 false}
!1136 = !{!"../sound/soc/codecs/rt5645.c", i32 2972, i32 3}
!1137 = !{ptr @rt5645_set_dai_pll._entry.506, !1136, !"_entry", i1 false, i1 false}
!1138 = !{ptr @rt5645_set_dai_pll._entry_ptr.508, !1136, !"_entry_ptr", i1 false, i1 false}
!1139 = !{ptr @.str.509, !1140, !"<string literal>", i1 false, i1 false}
!1140 = !{!"../sound/soc/codecs/rt5645.c", i32 2976, i32 2}
!1141 = !{ptr @rt5645_set_dai_pll.__UNIQUE_ID_ddebug302, !1140, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!1142 = !{ptr @.str.510, !1143, !"<string literal>", i1 false, i1 false}
!1143 = !{!"../sound/soc/codecs/rt5645.c", i32 2882, i32 3}
!1144 = !{ptr @rt5645_set_dai_fmt._entry, !1143, !"_entry", i1 false, i1 false}
!1145 = !{ptr @rt5645_set_dai_fmt._entry_ptr, !1143, !"_entry_ptr", i1 false, i1 false}
!1146 = !{ptr @.str.511, !1147, !"<string literal>", i1 false, i1 false}
!1147 = !{!"../sound/soc/codecs/rt5645.c", i32 2752, i32 3}
!1148 = !{ptr @.str.512, !1147, !"<string literal>", i1 false, i1 false}
!1149 = !{ptr @rt5645_hw_params._entry, !1147, !"_entry", i1 false, i1 false}
!1150 = !{ptr @rt5645_hw_params._entry_ptr, !1147, !"_entry_ptr", i1 false, i1 false}
!1151 = !{ptr @.str.514, !1152, !"<string literal>", i1 false, i1 false}
!1152 = !{!"../sound/soc/codecs/rt5645.c", i32 2757, i32 3}
!1153 = !{ptr @rt5645_hw_params._entry.513, !1152, !"_entry", i1 false, i1 false}
!1154 = !{ptr @rt5645_hw_params._entry_ptr.515, !1152, !"_entry_ptr", i1 false, i1 false}
!1155 = !{ptr @.str.516, !1156, !"<string literal>", i1 false, i1 false}
!1156 = !{!"../sound/soc/codecs/rt5645.c", i32 2773, i32 2}
!1157 = !{ptr @rt5645_hw_params.__UNIQUE_ID_ddebug298, !1156, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!1158 = !{ptr @.str.517, !1159, !"<string literal>", i1 false, i1 false}
!1159 = !{!"../sound/soc/codecs/rt5645.c", i32 2775, i32 2}
!1160 = !{ptr @rt5645_hw_params.__UNIQUE_ID_ddebug299, !1159, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!1161 = !{ptr @rt5645_hw_params._entry.518, !1162, !"_entry", i1 false, i1 false}
!1162 = !{!"../sound/soc/codecs/rt5645.c", i32 2811, i32 3}
!1163 = !{ptr @rt5645_hw_params._entry_ptr.519, !1162, !"_entry_ptr", i1 false, i1 false}
!1164 = !{ptr @rt5645_of_match, !1165, !"rt5645_of_match", i1 false, i1 false}
!1165 = !{!"../sound/soc/codecs/rt5645.c", i32 3592, i32 34}
!1166 = !{ptr @rt5645_i2c_id, !1167, !"rt5645_i2c_id", i1 false, i1 false}
!1167 = !{!"../sound/soc/codecs/rt5645.c", i32 3584, i32 35}
!1168 = !{i32 1, !"wchar_size", i32 2}
!1169 = !{i32 1, !"min_enum_size", i32 4}
!1170 = !{i32 8, !"branch-target-enforcement", i32 0}
!1171 = !{i32 8, !"sign-return-address", i32 0}
!1172 = !{i32 8, !"sign-return-address-all", i32 0}
!1173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1174 = !{i32 7, !"uwtable", i32 1}
!1175 = !{i32 7, !"frame-pointer", i32 2}
!1176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1177 = !{!"auto-init"}
!1178 = !{i8 0, i8 2}
!1179 = !{i64 2149079250, i64 2149079255, i64 2149079268, i64 2149079312, i64 2149079346, i64 2149079367}
!1180 = !{i32 0, i32 33}
