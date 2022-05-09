; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt5670.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5670.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rt5670_jack_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5670_jack_suspend\09\09\09\09"
module asm "\09.long\09__crc_rt5670_jack_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5670_jack_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5670_jack_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_rt5670_jack_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5670_jack_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5670_jack_resume\09\09\09\09"
module asm "\09.long\09__crc_rt5670_jack_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5670_jack_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5670_jack_resume\22\09\09\09\09\09"
module asm "__kstrtabns_rt5670_jack_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5670_set_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5670_set_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_rt5670_set_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5670_set_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5670_set_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_rt5670_set_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5670_sel_asrc_clk_src\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5670_sel_asrc_clk_src\09\09\09\09"
module asm "\09.long\09__crc_rt5670_sel_asrc_clk_src\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5670_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5670_sel_asrc_clk_src\22\09\09\09\09\09"
module asm "__kstrtabns_rt5670_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt5670_components\22, \22a\22\09"
module asm "\09.weak\09__crc_rt5670_components\09\09\09\09"
module asm "\09.long\09__crc_rt5670_components\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5670_components:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5670_components\22\09\09\09\09\09"
module asm "__kstrtabns_rt5670_components:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.rt5670_priv = type { ptr, ptr, ptr, %struct.snd_soc_jack_gpio, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.95 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__param_str_quirk = internal constant [21 x i8] c"snd_soc_rt5670.quirk\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@quirk_override = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_quirk = internal constant %struct.kernel_param { ptr @__param_str_quirk, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @quirk_override } }, section "__param", align 4
@__UNIQUE_ID_quirktype297 = internal constant [35 x i8] c"snd_soc_rt5670.parmtype=quirk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk298 = internal constant [56 x i8] c"snd_soc_rt5670.parm=quirk:Board-specific quirk override\00", section ".modinfo", align 1
@__kstrtab_rt5670_jack_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5670_jack_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5670_jack_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5670_jack_suspend to i32), ptr @__kstrtab_rt5670_jack_suspend, ptr @__kstrtabns_rt5670_jack_suspend }, section "___ksymtab_gpl+rt5670_jack_suspend", align 4
@__kstrtab_rt5670_jack_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5670_jack_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5670_jack_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5670_jack_resume to i32), ptr @__kstrtab_rt5670_jack_resume, ptr @__kstrtabns_rt5670_jack_resume }, section "___ksymtab_gpl+rt5670_jack_resume", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"headset\00", [24 x i8] zeroinitializer }, align 32
@rt5670_set_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Adding jack GPIO failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt5670_set_jack_detect\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt5670.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5670_set_jack_detect._entry_ptr = internal global ptr @rt5670_set_jack_detect._entry, section ".printk_index", align 4
@__kstrtab_rt5670_set_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5670_set_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5670_set_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5670_set_jack_detect to i32), ptr @__kstrtab_rt5670_set_jack_detect, ptr @__kstrtabns_rt5670_set_jack_detect }, section "___ksymtab_gpl+rt5670_set_jack_detect", align 4
@__kstrtab_rt5670_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5670_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5670_sel_asrc_clk_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5670_sel_asrc_clk_src to i32), ptr @__kstrtab_rt5670_sel_asrc_clk_src, ptr @__kstrtabns_rt5670_sel_asrc_clk_src }, section "___ksymtab_gpl+rt5670_sel_asrc_clk_src", align 4
@rt5670_quirk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cfg-spk:2 cfg-mic:dmics12\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cfg-spk:2 cfg-mic:dmic1\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cfg-spk:2 cfg-mic:dmic2\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cfg-spk:2 cfg-mic:dmic3\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_rt5670_components = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5670_components = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5670_components = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5670_components to i32), ptr @__kstrtab_rt5670_components, ptr @__kstrtabns_rt5670_components }, section "___ksymtab_gpl+rt5670_components", align 4
@__initcall__kmod_snd_soc_rt5670__305_3342_rt5670_i2c_driver_init6 = internal global ptr @rt5670_i2c_driver_init, section ".initcall6.init", align 4
@rt5670_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5670_i2c_probe, ptr @rt5670_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.21, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5670_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5670_i2c_driver_exit = internal global ptr @rt5670_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [46 x i8] c"snd_soc_rt5670.description=ASoC RT5670 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [55 x i8] c"snd_soc_rt5670.author=Bard Liao <bardliao@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [52 x i8] c"snd_soc_rt5670.file=sound/soc/codecs/snd-soc-rt5670\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [30 x i8] c"snd_soc_rt5670.license=GPL v2\00", section ".modinfo", align 1
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mic Det Power\00", [18 x i8] zeroinitializer }, align 32
@rt5670_irq_detection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected button code 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt5670_irq_detection\00", [43 x i8] zeroinitializer }, align 32
@rt5670_irq_detection._entry_ptr = internal global ptr @rt5670_irq_detection._entry, section ".printk_index", align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5670\00", [25 x i8] zeroinitializer }, align 32
@rt5670_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5670\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt5671\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt5672\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 3067, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Overriding quirk 0x%x => 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5670_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr = internal global ptr @rt5670_i2c_probe._entry, section ".printk_index", align 4
@rt5670_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 3073, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"quirk GPIO1 is IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.27 = internal global ptr @rt5670_i2c_probe._entry.25, section ".printk_index", align 4
@rt5670_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.3, i32 3077, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"quirk GPIO1 is external speaker enable\0A\00", [56 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.30 = internal global ptr @rt5670_i2c_probe._entry.28, section ".printk_index", align 4
@rt5670_i2c_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.3, i32 3081, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quirk IN2_DIFF\0A\00", [16 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.33 = internal global ptr @rt5670_i2c_probe._entry.31, section ".printk_index", align 4
@rt5670_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.3, i32 3085, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"quirk DMIC enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.36 = internal global ptr @rt5670_i2c_probe._entry.34, section ".printk_index", align 4
@rt5670_i2c_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.3, i32 3089, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"quirk DMIC1 on IN2P pin\0A\00", [39 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.39 = internal global ptr @rt5670_i2c_probe._entry.37, section ".printk_index", align 4
@rt5670_i2c_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.23, ptr @.str.3, i32 3093, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"quirk DMIC1 on GPIO6 pin\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.42 = internal global ptr @rt5670_i2c_probe._entry.40, section ".printk_index", align 4
@rt5670_i2c_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.23, ptr @.str.3, i32 3097, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"quirk DMIC1 on GPIO7 pin\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.45 = internal global ptr @rt5670_i2c_probe._entry.43, section ".printk_index", align 4
@rt5670_i2c_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.23, ptr @.str.3, i32 3101, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"quirk DMIC2 on INR pin\0A\00", [40 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.48 = internal global ptr @rt5670_i2c_probe._entry.46, section ".printk_index", align 4
@rt5670_i2c_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.23, ptr @.str.3, i32 3105, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"quirk DMIC2 on GPIO8 pin\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.51 = internal global ptr @rt5670_i2c_probe._entry.49, section ".printk_index", align 4
@rt5670_i2c_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.23, ptr @.str.3, i32 3109, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"quirk DMIC3 on GPIO5 pin\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.54 = internal global ptr @rt5670_i2c_probe._entry.52, section ".printk_index", align 4
@rt5670_i2c_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.23, ptr @.str.3, i32 3114, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"quirk JD mode 1\0A\00", [47 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.57 = internal global ptr @rt5670_i2c_probe._entry.55, section ".printk_index", align 4
@rt5670_i2c_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.23, ptr @.str.3, i32 3118, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"quirk JD mode 2\0A\00", [47 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.60 = internal global ptr @rt5670_i2c_probe._entry.58, section ".printk_index", align 4
@rt5670_i2c_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.23, ptr @.str.3, i32 3122, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"quirk JD mode 3\0A\00", [47 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.63 = internal global ptr @rt5670_i2c_probe._entry.61, section ".printk_index", align 4
@rt5670_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5670_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5670_readable_register, ptr @rt5670_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5670_reg, i32 134, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5670_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt5670:3135:(&rt5670_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.23, ptr @.str.3, i32 3139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.67 = internal global ptr @rt5670_i2c_probe._entry.65, section ".printk_index", align 4
@rt5670_i2c_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.23, ptr @.str.3, i32 3146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Device with ID register %#x is not rt5670/72\0A\00", [50 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.70 = internal global ptr @rt5670_i2c_probe._entry.68, section ".printk_index", align 4
@init_list = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 276, i32 39562, i32 0 }, %struct.reg_sequence { i32 312, i32 8161, i32 0 }, %struct.reg_sequence { i32 317, i32 13888, i32 0 }, %struct.reg_sequence { i32 138, i32 291, i32 0 }], [48 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.23, ptr @.str.3, i32 3167, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.74 = internal global ptr @rt5670_i2c_probe._entry.71, section ".printk_index", align 4
@rt5670_i2c_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.23, ptr @.str.3, i32 3298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Always use GPIO5 as DMIC3 data pin\0A\00", [60 x i8] zeroinitializer }, align 32
@rt5670_i2c_probe._entry_ptr.77 = internal global ptr @rt5670_i2c_probe._entry.75, section ".printk_index", align 4
@soc_component_dev_rt5670 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt5670_snd_controls, i32 16, ptr @rt5670_dapm_widgets, i32 171, ptr @rt5670_dapm_routes, i32 299, ptr @rt5670_probe, ptr @rt5670_remove, ptr @rt5670_suspend, ptr @rt5670_resume, ptr null, ptr null, ptr null, ptr null, ptr @rt5670_set_codec_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5670_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt5670_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.449, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5670_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.233, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.231, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.450, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5670_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.237, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.235, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@rt5670_reg = internal constant { [134 x %struct.reg_default], [272 x i8] } { [134 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 2, i32 34952 }, %struct.reg_default { i32 3, i32 34952 }, %struct.reg_default { i32 10, i32 1 }, %struct.reg_default { i32 11, i32 2087 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 8 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 17 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 12079 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 38, i32 30816 }, %struct.reg_default { i32 39, i32 30816 }, %struct.reg_default { i32 40, i32 30833 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 22102 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 44, i32 43680 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 12079 }, %struct.reg_default { i32 47, i32 4098 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 24320 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 69, i32 57359 }, %struct.reg_default { i32 76, i32 21376 }, %struct.reg_default { i32 79, i32 115 }, %struct.reg_default { i32 82, i32 211 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 1 }, %struct.reg_default { i32 99, i32 195 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 1 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 111, i32 32768 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 30576 }, %struct.reg_default { i32 116, i32 3584 }, %struct.reg_default { i32 117, i32 5381 }, %struct.reg_default { i32 118, i32 21 }, %struct.reg_default { i32 119, i32 3072 }, %struct.reg_default { i32 120, i32 16384 }, %struct.reg_default { i32 121, i32 291 }, %struct.reg_default { i32 127, i32 4352 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 4 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 291 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 3 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3078 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 4720 }, %struct.reg_default { i32 149, i32 4096 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 8580 }, %struct.reg_default { i32 155, i32 266 }, %struct.reg_default { i32 156, i32 2794 }, %struct.reg_default { i32 157, i32 12 }, %struct.reg_default { i32 158, i32 1024 }, %struct.reg_default { i32 174, i32 28672 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 28672 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 31 }, %struct.reg_default { i32 180, i32 8716 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 6163 }, %struct.reg_default { i32 208, i32 1680 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 41504 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 214, i32 1024 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 1 }, %struct.reg_default { i32 220, i32 73 }, %struct.reg_default { i32 221, i32 36 }, %struct.reg_default { i32 230, i32 32768 }, %struct.reg_default { i32 231, i32 0 }, %struct.reg_default { i32 236, i32 41472 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 238, i32 41472 }, %struct.reg_default { i32 239, i32 0 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 249, i32 0 }, %struct.reg_default { i32 250, i32 32784 }, %struct.reg_default { i32 251, i32 51 }, %struct.reg_default { i32 252, i32 256 }], [272 x i8] zeroinitializer }, align 32
@rt5670_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.78, i32 256, i32 504, i32 106, i32 255, i32 0, i32 108, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@rt5670_snd_controls = internal constant { [16 x %struct.snd_kcontrol_new], [192 x i8] } { [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt5670_dac1_playback_switch_get, ptr @rt5670_dac1_playback_switch_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if2_adc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if2_dac_enum to i32) }], [192 x i8] zeroinitializer }, align 32
@rt5670_dapm_routes = internal constant { [299 x %struct.snd_soc_dapm_route], [3876 x i8] } { [299 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.123, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.124, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.125, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.126, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.117, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.118, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.116, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.119, ptr @can_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.120, ptr @can_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.121, ptr @can_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.122, ptr @can_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.114, ptr @can_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.115, ptr @can_use_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.10, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.289, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.291, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.293, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.295, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.291, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.293, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.138, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.139, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.140, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.138, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.139, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.140, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.138, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.139, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.140, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.138, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.139, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.140, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.301, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.241, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.303, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.241, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.303, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.241, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.301, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.241, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.301, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.253, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.253, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.314, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.254, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.316, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.301, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.254, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.318, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.320, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.318, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.320, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.318, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.320, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.318, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.320, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.301, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.241, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.303, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.241, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.303, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.241, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.301, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.241, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.318, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.320, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.318, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.320, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.308, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.309, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.357, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.358, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.359, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.360, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.193, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.198, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.351, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.352, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.194, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.355, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.352, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.219, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.342, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.343, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.344, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.345, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.346, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.347, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.333, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.334, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.335, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.336, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.339, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.339, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.193, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.194, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.195, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.202, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.199, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr @.str.342, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr @.str.219, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr @.str.342, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr @.str.219, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.361, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.363, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.361, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.363, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.112, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr null, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.342, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.219, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.368, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.242, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.342, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.219, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.368, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.372, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.375, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.379, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr @.str.377, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr @.str.379, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr @.str.375, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr @.str.382, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr @.str.375, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr @.str.377, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr @.str.382, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.379, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.382, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr @.str.377, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.391, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.377, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr @.str.382, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr @.str.395, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr @.str.382, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr @.str.377, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr null, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.293, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.289, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.377, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr @.str.375, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.291, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.295, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.382, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.379, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.363, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.289, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.363, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.295, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr null, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.363, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.412, ptr @.str.269, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr @.str.375, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr @.str.379, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr @.str.416, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr @.str.418, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.280, ptr @.str.425, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.280, ptr @.str.424, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.280, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr @.str.425, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr @.str.424, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr null, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.275, ptr null, ptr @.str.270, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.275, ptr null, ptr @.str.10, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.282, ptr null, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.282, ptr null, ptr @.str.273, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.282, ptr null, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.274, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr null, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.276, ptr @.str.420, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.420, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.284, ptr null, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr null, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.284, ptr null, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr null, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }], [3876 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 3, i32 3, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 13, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -6562, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 25, i32 25, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mono DAC Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 26, i32 26, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN1 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@bst_tlv = internal constant { [44 x i32], [48 x i8] } { [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IN2 Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 14, i32 14, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IN Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -1762, i32 3000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 28, i32 28, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mono ADC Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 29, i32 29, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"STO1 ADC Boost Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@adc_bst_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"STO2 ADC Boost Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 8, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC IF2 Data Switch\00", [44 x i8] zeroinitializer }, align 32
@rt5670_if2_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 8, i8 8, i32 4, i32 3, ptr @rt5670_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC IF2 Data Switch\00", [44 x i8] zeroinitializer }, align 32
@rt5670_if2_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 10, i8 10, i32 4, i32 3, ptr @rt5670_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_data_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Swap\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"left copy to right\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"right copy to left\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S1 ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2S2 ASRC\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC STO ASRC\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC MONO L ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC MONO R ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC STO1 ASRC\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC STO2 ASRC\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMIC MONO L ASRC\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMIC MONO R ASRC\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC STO1 ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC STO2 ASRC\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC MONO L ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC MONO R ASRC\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L1\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R1\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L2\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R2\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC L3\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC R3\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1N\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2P\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2N\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC1 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC2 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC3 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST1\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BST2\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INL VOL\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INR VOL\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXL\00", [24 x i8] zeroinitializer }, align 32
@rt5670_rec_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RECMIXR\00", [24 x i8] zeroinitializer }, align 32
@rt5670_rec_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC 1\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC 2\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC 1_2\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC 1 power\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC 2 power\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC clock\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 DMIC Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5670_sto1_dmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.299, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo1_dmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5670_sto_adc_2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo1_adc2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R2 Mux\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC L1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5670_sto_adc_1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.302, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo1_adc1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo1 ADC R1 Mux\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 DMIC Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5670_sto2_dmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.304, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo2_dmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC L2 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5670_sto2_adc_2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.305, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo2_adc2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC R2 Mux\00", [45 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC L1 Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5670_sto2_adc_1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.306, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo2_adc1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC R1 Mux\00", [45 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stereo2 ADC LR Mux\00", [45 x i8] zeroinitializer }, align 32
@rt5670_sto2_adc_lr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.307, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_stereo2_adc_lr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono DMIC L Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_mono_dmic_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.310, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_mono_dmic_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono DMIC R Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_mono_dmic_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.311, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_mono_dmic_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC L2 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.312, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_mono_adc_l2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC L1 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.313, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_mono_adc_l1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC R1 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.315, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_mono_adc_r1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono ADC R2 Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.317, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_mono_adc_r2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Stereo1 Filter\00", [45 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Stereo2 Filter\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5670_sto1_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.319 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto1 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5670_sto1_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.323 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto2 ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5670_sto2_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sto2 ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5670_sto2_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.327 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Mono Left Filter\00", [43 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono ADC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.329 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Mono Right Filter\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono ADC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo1 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 ADC MIXL\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo2 ADC MIXR\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sto2 ADC LR MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo1 ADC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo2 ADC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mono ADC MIX\00", [19 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VAD_ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF_ADC1\00", [24 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF_ADC2\00", [24 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF_ADC3\00", [24 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC1\00", [23 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC2\00", [23 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC3\00", [23 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxDP_ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxDP_ADC_L\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxDP_ADC_R\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxDC_DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TDM Data Mux\00", [19 x i8] zeroinitializer }, align 32
@rt5670_txdp_slot_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_txdp_slot_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSP UL Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_dsp_ul_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_dsp_ul_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSP DL Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_dsp_dl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_dsp_dl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxDP Mux\00", [23 x i8] zeroinitializer }, align 32
@rt5670_rxdp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_rxdp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IF2 ADC Mux\00", [20 x i8] zeroinitializer }, align 32
@rt5670_if2_adc_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.348, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if2_adc_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 DAC1\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1 DAC2\00", [23 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 L\00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC1 R\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC2 L\00", [21 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF1 DAC2 R\00", [21 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF1 ADC L\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF1 ADC R\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF2 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 DAC L\00", [22 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 DAC R\00", [22 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF2 ADC\00", [24 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 ADC L\00", [22 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IF2 ADC R\00", [22 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IF1 ADC1 IN1 Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5670_if1_adc1_in1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.349, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if1_adc1_in1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IF1 ADC1 IN2 Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5670_if1_adc1_in2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.350, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if1_adc1_in2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF1 ADC2 IN Mux\00", [16 x i8] zeroinitializer }, align 32
@rt5670_if1_adc2_in_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.353, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if1_adc2_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IF1 ADC2 IN1 Mux\00", [47 x i8] zeroinitializer }, align 32
@rt5670_if1_adc2_in1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.354, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_if1_adc2_in1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VAD ADC Mux\00", [20 x i8] zeroinitializer }, align 32
@rt5670_vad_adc_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.356, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_vad_adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2RX\00", [25 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Audio DSP\00", [22 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXL\00", [22 x i8] zeroinitializer }, align 32
@rt5670_dac_l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @rt5670_put_dac1_mix_dac1_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC1 MIXR\00", [22 x i8] zeroinitializer }, align 32
@rt5670_dac_r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.365 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @rt5670_put_dac1_mix_dac1_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC MIX\00", [24 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC L2 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_dac_l2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_dac2l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC R2 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_dac_r2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.371, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_dac2r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R2 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC1 L Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_dac1l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.373, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_dac1l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC1 R Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_dac1r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.374, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_dac1r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Stereo1 Filter\00", [45 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Mono Left Filter\00", [43 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Mono Right Filter\00", [42 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXL\00", [16 x i8] zeroinitializer }, align 32
@rt5670_sto_dac_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.375, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.376 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.377, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.378 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.379, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.380 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stereo DAC MIXR\00", [16 x i8] zeroinitializer }, align 32
@rt5670_sto_dac_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.379, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.381 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.383 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.375, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.384 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono DAC MIXL\00", [18 x i8] zeroinitializer }, align 32
@rt5670_mono_dac_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.375, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.377, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mono DAC MIXR\00", [18 x i8] zeroinitializer }, align 32
@rt5670_mono_dac_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.379, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.389 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.377, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5670_dig_l_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.391, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.392 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.377, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.393 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.394 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5670_dig_r_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.395, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.396 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.397 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.377, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.398 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC L1 Power\00", [19 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC R1 Power\00", [19 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L1\00", [25 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R1\00", [25 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC L2\00", [25 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC R2\00", [25 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXL\00", [23 x i8] zeroinitializer }, align 32
@rt5670_out_l_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.399 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.400 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.377, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.401 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.375, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.402 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT MIXR\00", [23 x i8] zeroinitializer }, align 32
@rt5670_out_r_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.403 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.404 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.405 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.379, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.406 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOVOL MIXL\00", [20 x i8] zeroinitializer }, align 32
@rt5670_hpvoll_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.407 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.408 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPOVOL MIXR\00", [20 x i8] zeroinitializer }, align 32
@rt5670_hpvolr_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.409 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.410 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 1\00", [26 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC 2\00", [26 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOVOL\00", [25 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPO MIX\00", [24 x i8] zeroinitializer }, align 32
@rt5670_hpo_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.411 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.412, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.413 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT MIX\00", [23 x i8] zeroinitializer }, align 32
@rt5670_lout_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.375, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.414 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.379, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.415 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.416, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.417 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.418, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.419 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Improve HP Amp Drv\00", [45 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP L Amp\00", [23 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP R Amp\00", [23 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Amp\00", [25 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOUT L Playback\00", [16 x i8] zeroinitializer }, align 32
@lout_l_enable_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.420, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.421 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOUT R Playback\00", [16 x i8] zeroinitializer }, align 32
@lout_r_enable_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.420, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.422 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT Amp\00", [23 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM1 Power\00", [21 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM1 L Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_pdm1_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.423, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_pdm1_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM1 R Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_pdm1_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.426, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_pdm1_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOUTR\00", [26 x i8] zeroinitializer }, align 32
@rt5670_dapm_widgets = internal constant { [171 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [7684 x i8] } { [171 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.10, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5670_bst1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5670_bst2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 317, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto1_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto_adc_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto_adc_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto_adc_1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto_adc_1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto2_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto2_adc_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto2_adc_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto2_adc_1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto2_adc_1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_sto2_adc_lr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_mono_dmic_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_mono_dmic_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_mono_adc_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_mono_adc_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_mono_adc_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_mono_adc_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_sto2_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_sto2_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 15, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_mono_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_mono_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_txdp_slot_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_dsp_ul_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_dsp_dl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_rxdp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_if2_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_if1_adc1_in1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_if1_adc1_in2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_if1_adc2_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_if1_adc2_in1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_vad_adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.230, ptr @.str.231, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.232, ptr @.str.233, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.234, ptr @.str.235, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.236, ptr @.str.237, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 192, i8 8, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.240, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.242, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_dac_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_dac_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.244, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.245, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.246, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_dac1l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.247, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_dac1r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_mono_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_mono_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_dig_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5670_dig_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.261, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.262, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.263, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5670_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.264, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5670_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_hpvoll_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_hpvolr_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.267, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.268, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.269, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.270, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5670_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.271, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5670_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.272, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5670_hp_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.273, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.274, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.275, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5670_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.276, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lout_l_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.277, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lout_r_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.278, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.279, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.280, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 14, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_pdm1_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.281, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 12, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_pdm1_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.282, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.283, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.284, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.285, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [7684 x i8] zeroinitializer }, align 32
@set_dmic_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set DMIC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_dmic_clk\00", [19 x i8] zeroinitializer }, align 32
@set_dmic_clk._entry_ptr = internal global ptr @set_dmic_clk._entry, section ".printk_index", align 4
@.str.289 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INL Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BST1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INR Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo1 DMIC source\00", [44 x i8] zeroinitializer }, align 32
@rt5670_stereo1_dmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 8, i8 8, i32 3, i32 3, ptr @rt5670_stereo_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_stereo_dmic_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.138, ptr @.str.139, ptr @.str.140], [20 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo1 ADC 2 Mux\00", [46 x i8] zeroinitializer }, align 32
@rt5670_stereo1_adc2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 11, i8 11, i32 2, i32 1, ptr @rt5670_stereo_adc2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_stereo_adc2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.241, ptr @.str.301], [24 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo1 ADC 1 Mux\00", [46 x i8] zeroinitializer }, align 32
@rt5670_stereo1_adc1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 12, i8 12, i32 2, i32 1, ptr @rt5670_stereo_adc1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_stereo_adc1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.241, ptr @.str.303], [24 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stereo2 DMIC source\00", [44 x i8] zeroinitializer }, align 32
@rt5670_stereo2_dmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 8, i8 8, i32 3, i32 3, ptr @rt5670_stereo_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo2 ADC 2 Mux\00", [46 x i8] zeroinitializer }, align 32
@rt5670_stereo2_adc2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 11, i8 11, i32 2, i32 1, ptr @rt5670_stereo_adc2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo2 ADC 1 Mux\00", [46 x i8] zeroinitializer }, align 32
@rt5670_stereo2_adc1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 12, i8 12, i32 2, i32 1, ptr @rt5670_stereo_adc1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stereo2 ADC LR source\00", [42 x i8] zeroinitializer }, align 32
@rt5670_stereo2_adc_lr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 15, i8 15, i32 2, i32 1, ptr @rt5670_stereo2_adc_lr_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_stereo2_adc_lr_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.308, ptr @.str.309], [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LR\00", [29 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mono DMIC left source\00", [42 x i8] zeroinitializer }, align 32
@rt5670_mono_dmic_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 8, i8 8, i32 3, i32 3, ptr @rt5670_mono_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_mono_dmic_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.138, ptr @.str.139, ptr @.str.140], [20 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono DMIC Right source\00", [41 x i8] zeroinitializer }, align 32
@rt5670_mono_dmic_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 0, i8 0, i32 3, i32 3, ptr @rt5670_mono_dmic_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mono ADC2 left source\00", [42 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 11, i8 11, i32 2, i32 1, ptr @rt5670_mono_adc_l2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.253, ptr @.str.301], [24 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mono ADC1 left source\00", [42 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 12, i8 12, i32 2, i32 1, ptr @rt5670_mono_adc_l1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_l1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.253, ptr @.str.314], [24 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono ADC1 right source\00", [41 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 4, i8 4, i32 2, i32 1, ptr @rt5670_mono_adc_r1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.254, ptr @.str.316], [24 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono ADC2 right source\00", [41 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 3, i8 3, i32 2, i32 1, ptr @rt5670_mono_adc_r2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_mono_adc_r2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.254, ptr @.str.301], [24 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxDP Slot source\00", [47 x i8] zeroinitializer }, align 32
@rt5670_txdp_slot_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 2, i8 2, i32 4, i32 3, ptr @rt5670_txdp_slot_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_txdp_slot_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336], [16 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Slot 0-1\00", [23 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Slot 2-3\00", [23 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Slot 4-5\00", [23 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Slot 6-7\00", [23 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSP UL source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_dsp_ul_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 1, i8 1, i32 2, i32 1, ptr @rt5670_dsp_bypass_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_dsp_bypass_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.338, ptr @.str.339], [24 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSP\00", [28 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSP DL source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_dsp_dl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 0, i8 0, i32 2, i32 1, ptr @rt5670_dsp_bypass_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC2 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_rxdp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 13, i8 13, i32 7, i32 7, ptr @rt5670_rxdp_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_rxdp_src = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.219, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347], [36 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF1 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STO1 ADC Mixer\00", [17 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STO2 ADC Mixer\00", [17 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mono ADC Mixer L\00", [47 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mono ADC Mixer R\00", [47 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IF2 ADC IN source\00", [46 x i8] zeroinitializer }, align 32
@rt5670_if2_adc_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 12, i8 12, i32 6, i32 7, ptr @rt5670_if2_adc_in_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_if2_adc_in_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.202, ptr @.str.199, ptr @.str.192], [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 ADC1 IN1 source\00", [44 x i8] zeroinitializer }, align 32
@rt5670_if1_adc1_in1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 250, i8 12, i8 12, i32 2, i32 1, ptr @rt5670_if1_adc1_in1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_if1_adc1_in1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.193, ptr @.str.198], [24 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 ADC1 IN2 source\00", [44 x i8] zeroinitializer }, align 32
@rt5670_if1_adc1_in2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 250, i8 11, i8 11, i32 2, i32 1, ptr @rt5670_if1_adc1_in2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_if1_adc1_in2_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.351, ptr @.str.352], [24 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IF1_ADC1_IN1\00", [19 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IF1_ADC4\00", [23 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IF1 ADC2 IN source\00", [45 x i8] zeroinitializer }, align 32
@rt5670_if1_adc2_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 15, i8 15, i32 2, i32 1, ptr @rt5670_if1_adc2_in_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_if1_adc2_in_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.194, ptr @.str.192], [24 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF1 ADC2 IN1 source\00", [44 x i8] zeroinitializer }, align 32
@rt5670_if1_adc2_in1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 250, i8 10, i8 10, i32 2, i32 1, ptr @rt5670_if1_adc2_in1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_if1_adc2_in1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.355, ptr @.str.352], [24 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IF1_ADC2_IN\00", [20 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VAD ADC source\00", [17 x i8] zeroinitializer }, align 32
@rt5670_vad_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 157, i8 8, i8 8, i32 4, i32 3, ptr @rt5670_vad_adc_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_vad_adc_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360], [16 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sto1 ADC L\00", [21 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono ADC L\00", [21 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono ADC R\00", [21 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sto2 ADC L\00", [21 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stereo ADC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.362 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.364 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.365 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@rt5670_dac2l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 27, i8 4, i8 4, i32 7, i32 7, ptr @rt5670_dac12_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_dac12_src = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.342, ptr @.str.219, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.192, ptr @.str.370], [36 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF3 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxDC DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bass\00", [27 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IF4 DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC2 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_dac2r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 27, i8 0, i8 0, i32 6, i32 7, ptr @rt5670_dacr2_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_dacr2_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.342, ptr @.str.219, ptr @.str.367, ptr @.str.368, ptr @.str.372, ptr @.str.370], [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxDP ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC1 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_dac1l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 8, i8 8, i32 2, i32 1, ptr @rt5670_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_dac1_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.342, ptr @.str.219], [24 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC1 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_dac1r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 10, i8 10, i32 2, i32 1, ptr @rt5670_dac1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.376 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC L2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.378 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.380 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC R2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 10, i32 10, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sto DAC Mix L Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.392 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.394 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sto DAC Mix R Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.396 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 11, i32 11, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.397 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.398 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.399 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.400 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.401 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.402 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.403 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.404 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.405 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.406 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.407 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.408 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.409 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.410 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.411 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HPVOL Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.413 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.414 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.415 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTMIX L Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.417 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 13, i32 13, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OUTMIX R Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.419 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 12, i32 12, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.420 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.421 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 15, i32 15, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.422 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 7, i32 7, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDM1 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_pdm1_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 15, i8 15, i32 2, i32 1, ptr @rt5670_pdm_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_pdm_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.424, ptr @.str.425], [24 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Stereo DAC\00", [21 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDM1 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_pdm1_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 13, i8 13, i32 2, i32 1, ptr @rt5670_pdm_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt5670_specific_dapm_routes = internal constant { [10 x %struct.snd_soc_dapm_route], [152 x i8] } { [10 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.430, ptr @.str.425, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.430, ptr @.str.424, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.430, ptr null, ptr @.str.429, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr @.str.425, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr @.str.424, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr null, ptr @.str.429, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.432, ptr null, ptr @.str.280, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.433, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.434, ptr null, ptr @.str.430, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.435, ptr null, ptr @.str.431, ptr null, %struct.snd_soc_dobj zeroinitializer }], [152 x i8] zeroinitializer }, align 32
@rt5672_specific_dapm_routes = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.439, ptr null, ptr @.str.280, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.439, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr null, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr null, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr null, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.443, ptr null, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@rt5670_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.427, ptr @.str.428, ptr @.str.3, i32 2745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"The driver is for RT5670 RT5671 or RT5672 only\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt5670_probe\00", [19 x i8] zeroinitializer }, align 32
@rt5670_probe._entry_ptr = internal global ptr @rt5670_probe._entry, section ".printk_index", align 4
@.str.429 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM2 Power\00", [21 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM2 L Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_pdm2_l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.437, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_pdm2_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM2 R Mux\00", [21 x i8] zeroinitializer }, align 32
@rt5670_pdm2_r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.438, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt5670_pdm2_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDM1L\00", [26 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDM1R\00", [26 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDM2L\00", [26 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDM2R\00", [26 x i8] zeroinitializer }, align 32
@rt5670_specific_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.429, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.430, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 10, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_pdm2_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.431, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 8, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5670_pdm2_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.432, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.433, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.434, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.435, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDM2 L source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_pdm2_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 11, i8 11, i32 2, i32 1, ptr @rt5670_pdm_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDM2 R source\00", [18 x i8] zeroinitializer }, align 32
@rt5670_pdm2_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 49, i8 9, i8 9, i32 2, i32 1, ptr @rt5670_pdm_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPO Amp\00", [24 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPOLP\00", [26 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPOLN\00", [26 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPORP\00", [26 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPORN\00", [26 x i8] zeroinitializer }, align 32
@rt5672_specific_dapm_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.439, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5670_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.440, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.441, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.442, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.443, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@rt5670_set_codec_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.445, ptr @.str.446, ptr @.str.3, i32 2514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt5670_set_codec_sysclk\00", [40 x i8] zeroinitializer }, align 32
@rt5670_set_codec_sysclk._entry_ptr = internal global ptr @rt5670_set_codec_sysclk._entry, section ".printk_index", align 4
@rt5670_set_codec_sysclk.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.447, ptr @.str.446, ptr @.str.3, ptr @.str.448, i8 2, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.447 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt5670\00", [17 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sysclk : %dHz clock id : %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5670-aif1\00", [20 x i8] zeroinitializer }, align 32
@rt5670_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr @rt5670_set_dai_pll, ptr null, ptr @rt5670_set_bclk_ratio, ptr @rt5670_set_dai_fmt, ptr null, ptr @rt5670_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5670_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5670-aif2\00", [20 x i8] zeroinitializer }, align 32
@rt5670_set_dai_pll.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.447, ptr @.str.451, ptr @.str.3, ptr @.str.452, i8 2, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.451 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5670_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt5670_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.453, ptr @.str.451, ptr @.str.3, i32 2569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid dai->id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rt5670_set_dai_pll._entry_ptr = internal global ptr @rt5670_set_dai_pll._entry, section ".printk_index", align 4
@rt5670_set_dai_pll._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.455, ptr @.str.451, ptr @.str.3, i32 2574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt5670_set_dai_pll._entry_ptr.456 = internal global ptr @rt5670_set_dai_pll._entry.454, section ".printk_index", align 4
@rt5670_set_dai_pll._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.458, ptr @.str.451, ptr @.str.3, i32 2580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5670_set_dai_pll._entry_ptr.459 = internal global ptr @rt5670_set_dai_pll._entry.457, section ".printk_index", align 4
@rt5670_set_dai_pll.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.447, ptr @.str.451, ptr @.str.3, ptr @.str.460, i8 2, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.460 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt5670_set_bclk_ratio.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.447, ptr @.str.461, ptr @.str.3, ptr @.str.462, i8 2, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.461 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt5670_set_bclk_ratio\00", [42 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s ratio=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@rt5670_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.453, ptr @.str.463, ptr @.str.3, i32 2491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt5670_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@rt5670_set_dai_fmt._entry_ptr = internal global ptr @rt5670_set_dai_fmt._entry, section ".printk_index", align 4
@rt5670_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.464, ptr @.str.465, ptr @.str.3, i32 2378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5670_hw_params\00", [47 x i8] zeroinitializer }, align 32
@rt5670_hw_params._entry_ptr = internal global ptr @rt5670_hw_params._entry, section ".printk_index", align 4
@rt5670_hw_params._entry.466 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.467, ptr @.str.465, ptr @.str.3, i32 2383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt5670_hw_params._entry_ptr.468 = internal global ptr @rt5670_hw_params._entry.466, section ".printk_index", align 4
@rt5670_hw_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.447, ptr @.str.465, ptr @.str.3, ptr @.str.469, i8 2, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.469 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rt5670_hw_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.447, ptr @.str.465, ptr @.str.3, ptr @.str.470, i8 2, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.470 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rt5670_hw_params._entry.471 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.453, ptr @.str.465, ptr @.str.3, i32 2428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt5670_hw_params._entry_ptr.472 = internal global ptr @rt5670_hw_params._entry.471, section ".printk_index", align 4
@switch.table.is_using_asrc = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 133, i32 133, i32 135, i32 132, i32 133, i32 133, i32 133, i32 133, i32 132, i32 132, i32 132], [52 x i8] zeroinitializer }, align 32
@switch.table.is_using_asrc.473 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 4, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 8, i32 12], [52 x i8] zeroinitializer }, align 32
@switch.table.rt5670_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12, i32 0, i32 0, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.474 = internal global [5 x i64] [i64 3, i64 16, i64 128, i64 1024, i64 8192]
@__sancov_gen_cov_switch_values.475 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.476 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.477 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.478 = internal global [142 x i64] [i64 140, i64 32, i64 0, i64 2, i64 3, i64 10, i64 11, i64 12, i64 14, i64 15, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 59, i64 60, i64 61, i64 62, i64 69, i64 76, i64 79, i64 82, i64 83, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 106, i64 108, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 127, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 147, i64 148, i64 149, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 174, i64 175, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 187, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 205, i64 206, i64 207, i64 208, i64 209, i64 211, i64 212, i64 214, i64 217, i64 218, i64 219, i64 220, i64 221, i64 224, i64 225, i64 226, i64 227, i64 228, i64 230, i64 231, i64 236, i64 237, i64 238, i64 239, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.479 = internal global [28 x i64] [i64 26, i64 32, i64 0, i64 10, i64 11, i64 12, i64 50, i64 53, i64 56, i64 108, i64 135, i64 148, i64 149, i64 158, i64 174, i64 176, i64 180, i64 190, i64 191, i64 219, i64 224, i64 225, i64 226, i64 227, i64 228, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.480 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.481 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.482 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.483 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.484 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.485 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.486 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.487 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.488 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.489 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.490 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.491 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.492 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.493 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.494 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.495 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.496 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.497 = private unnamed_addr constant [15 x i8] c"quirk_override\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 48, i32 21 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 585, i32 25 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 596, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [13 x i8] c"rt5670_quirk\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 47, i32 22 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3037, i32 10 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3039, i32 10 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3041, i32 10 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3043, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant [18 x i8] c"rt5670_i2c_driver\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3332, i32 26 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 438, i32 39 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 551, i32 5 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3334, i32 11 }
@___asan_gen_.554 = private unnamed_addr constant [14 x i8] c"rt5670_i2c_id\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2874, i32 35 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3066, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3073, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3077, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3081, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3085, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3089, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3093, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3097, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3101, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3105, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3109, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3114, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3118, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3122, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [14 x i8] c"rt5670_regmap\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2858, i32 35 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3135, i32 19 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3138, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3145, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [10 x i8] c"init_list\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 69, i32 34 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3167, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 3297, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt5670\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2840, i32 46 }
@___asan_gen_.689 = private unnamed_addr constant [11 x i8] c"rt5670_dai\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2797, i32 34 }
@___asan_gen_.692 = private unnamed_addr constant [11 x i8] c"rt5670_reg\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 76, i32 33 }
@___asan_gen_.695 = private unnamed_addr constant [14 x i8] c"rt5670_ranges\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 59, i32 38 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 60, i32 12 }
@___asan_gen_.701 = private unnamed_addr constant [20 x i8] c"rt5670_snd_controls\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 682, i32 38 }
@___asan_gen_.704 = private unnamed_addr constant [19 x i8] c"rt5670_dapm_routes\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1971, i32 40 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 684, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 604, i32 14 }
@___asan_gen_.713 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 688, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 691, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 693, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 695, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 605, i32 14 }
@___asan_gen_.732 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 698, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 702, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [8 x i8] c"bst_tlv\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 611, i32 14 }
@___asan_gen_.743 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 704, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 707, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 606, i32 14 }
@___asan_gen_.754 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 711, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 713, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 607, i32 14 }
@___asan_gen_.765 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 717, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 722, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant [12 x i8] c"adc_bst_tlv\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 608, i32 14 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 726, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 730, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [20 x i8] c"rt5670_if2_adc_enum\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 629, i32 8 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 731, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [20 x i8] c"rt5670_if2_dac_enum\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 626, i32 8 }
@___asan_gen_.793 = private unnamed_addr constant [19 x i8] c"rt5670_data_select\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 622, i32 27 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 623, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 623, i32 12 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 623, i32 20 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 623, i32 42 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1598, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1600, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1606, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1608, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1610, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1612, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1614, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1616, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1618, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1620, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1622, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1624, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1626, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1628, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1630, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1635, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1639, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1640, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1641, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1642, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1643, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1644, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1646, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1647, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1648, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1649, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1651, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1652, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1653, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1655, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1657, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1659, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1661, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1664, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1667, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1671, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1673, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1677, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [17 x i8] c"rt5670_rec_l_mix\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1059, i32 38 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1679, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [17 x i8] c"rt5670_rec_r_mix\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1068, i32 38 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1682, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1683, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1685, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1687, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1689, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1691, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1694, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c"rt5670_sto1_dmic_mux\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1264, i32 38 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1696, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c"rt5670_sto_adc_2_mux\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1247, i32 38 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1698, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1700, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c"rt5670_sto_adc_1_mux\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1229, i32 38 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1702, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1704, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant [21 x i8] c"rt5670_sto2_dmic_mux\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1270, i32 38 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1706, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant [22 x i8] c"rt5670_sto2_adc_2_mux\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1253, i32 38 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1708, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1710, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant [22 x i8] c"rt5670_sto2_adc_1_mux\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1235, i32 38 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1712, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1714, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant [23 x i8] c"rt5670_sto2_adc_lr_mux\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1217, i32 38 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1716, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant [23 x i8] c"rt5670_mono_dmic_l_mux\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1303, i32 38 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1718, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant [23 x i8] c"rt5670_mono_dmic_r_mux\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1309, i32 38 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1720, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_l2_mux\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1292, i32 38 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1722, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_l1_mux\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1282, i32 38 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1724, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_r1_mux\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1319, i32 38 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1726, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_r2_mux\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1329, i32 38 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1729, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1731, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1733, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant [22 x i8] c"rt5670_sto1_adc_l_mix\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 922, i32 38 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1735, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant [22 x i8] c"rt5670_sto1_adc_r_mix\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 929, i32 38 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1737, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant [22 x i8] c"rt5670_sto2_adc_l_mix\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 936, i32 38 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1740, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [22 x i8] c"rt5670_sto2_adc_r_mix\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 943, i32 38 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1743, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1745, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant [22 x i8] c"rt5670_mono_adc_l_mix\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 950, i32 38 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1748, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1750, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant [22 x i8] c"rt5670_mono_adc_r_mix\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 957, i32 38 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1755, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1756, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1757, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1758, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1759, i32 2 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1760, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1761, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1762, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1763, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1764, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1765, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1766, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1767, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1768, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1769, i32 2 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1772, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1773, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1774, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1775, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1777, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant [21 x i8] c"rt5670_txdp_slot_mux\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1340, i32 38 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1780, i32 2 }
@___asan_gen_.1153 = private unnamed_addr constant [18 x i8] c"rt5670_dsp_ul_mux\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1199, i32 38 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1782, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant [18 x i8] c"rt5670_dsp_dl_mux\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1205, i32 38 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1785, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant [16 x i8] c"rt5670_rxdp_mux\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1188, i32 38 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1789, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant [22 x i8] c"rt5670_if2_adc_in_mux\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1362, i32 38 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1793, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1795, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1796, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1797, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1798, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1799, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1800, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1801, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1802, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1803, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1804, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1806, i32 2 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1807, i32 2 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1808, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1809, i32 2 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1810, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1811, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1814, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc1_in1_mux\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1402, i32 38 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1816, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc1_in2_mux\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1413, i32 38 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1818, i32 2 }
@___asan_gen_.1240 = private unnamed_addr constant [23 x i8] c"rt5670_if1_adc2_in_mux\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1351, i32 38 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1820, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc2_in1_mux\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1424, i32 38 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1822, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant [19 x i8] c"rt5670_vad_adc_mux\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1435, i32 38 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1826, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1827, i32 2 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1828, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1829, i32 2 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1833, i32 2 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1837, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant [17 x i8] c"rt5670_dac_l_mix\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 992, i32 38 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1839, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant [17 x i8] c"rt5670_dac_r_mix\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 998, i32 38 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1841, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1844, i32 2 }
@___asan_gen_.1300 = private unnamed_addr constant [18 x i8] c"rt5670_dac_l2_mux\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1166, i32 38 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1846, i32 2 }
@___asan_gen_.1306 = private unnamed_addr constant [18 x i8] c"rt5670_dac_r2_mux\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1176, i32 38 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1848, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1850, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1853, i32 2 }
@___asan_gen_.1318 = private unnamed_addr constant [17 x i8] c"rt5670_dac1l_mux\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1147, i32 38 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1854, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant [17 x i8] c"rt5670_dac1r_mux\00", align 1
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1153, i32 38 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1857, i32 2 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1859, i32 2 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1861, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1863, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant [21 x i8] c"rt5670_sto_dac_l_mix\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1004, i32 38 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1866, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant [21 x i8] c"rt5670_sto_dac_r_mix\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1013, i32 38 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1869, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant [22 x i8] c"rt5670_mono_dac_l_mix\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1022, i32 38 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1872, i32 2 }
@___asan_gen_.1357 = private unnamed_addr constant [22 x i8] c"rt5670_mono_dac_r_mix\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1031, i32 38 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1875, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant [17 x i8] c"rt5670_dig_l_mix\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1040, i32 38 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1878, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant [17 x i8] c"rt5670_dig_r_mix\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1049, i32 38 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1883, i32 2 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1885, i32 2 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1887, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1888, i32 2 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1889, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1892, i32 2 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1896, i32 2 }
@___asan_gen_.1393 = private unnamed_addr constant [17 x i8] c"rt5670_out_l_mix\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1077, i32 38 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1898, i32 2 }
@___asan_gen_.1399 = private unnamed_addr constant [17 x i8] c"rt5670_out_r_mix\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1088, i32 38 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1901, i32 2 }
@___asan_gen_.1405 = private unnamed_addr constant [18 x i8] c"rt5670_hpvoll_mix\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1106, i32 38 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1904, i32 2 }
@___asan_gen_.1411 = private unnamed_addr constant [18 x i8] c"rt5670_hpvolr_mix\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1113, i32 38 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1907, i32 2 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1908, i32 2 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1909, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1912, i32 2 }
@___asan_gen_.1426 = private unnamed_addr constant [15 x i8] c"rt5670_hpo_mix\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1099, i32 38 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1914, i32 2 }
@___asan_gen_.1432 = private unnamed_addr constant [16 x i8] c"rt5670_lout_mix\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1120, i32 38 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1916, i32 2 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1919, i32 2 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1921, i32 2 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1923, i32 2 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1926, i32 2 }
@___asan_gen_.1450 = private unnamed_addr constant [22 x i8] c"lout_l_enable_control\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1131, i32 38 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1928, i32 2 }
@___asan_gen_.1456 = private unnamed_addr constant [22 x i8] c"lout_r_enable_control\00", align 1
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1135, i32 38 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1930, i32 2 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1933, i32 2 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1936, i32 2 }
@___asan_gen_.1468 = private unnamed_addr constant [18 x i8] c"rt5670_pdm1_l_mux\00", align 1
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1373, i32 38 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1938, i32 2 }
@___asan_gen_.1474 = private unnamed_addr constant [18 x i8] c"rt5670_pdm1_r_mux\00", align 1
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1379, i32 38 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1942, i32 2 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1943, i32 2 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1944, i32 2 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1945, i32 2 }
@___asan_gen_.1489 = private unnamed_addr constant [20 x i8] c"rt5670_dapm_widgets\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1597, i32 41 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 755, i32 3 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1060, i32 2 }
@___asan_gen_.1504 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1062, i32 2 }
@___asan_gen_.1508 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1064, i32 2 }
@___asan_gen_.1512 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1069, i32 2 }
@___asan_gen_.1516 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1517 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1518 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1265, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant [25 x i8] c"rt5670_stereo1_dmic_enum\00", align 1
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1261, i32 8 }
@___asan_gen_.1525 = private unnamed_addr constant [23 x i8] c"rt5670_stereo_dmic_src\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1257, i32 27 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1248, i32 2 }
@___asan_gen_.1531 = private unnamed_addr constant [25 x i8] c"rt5670_stereo1_adc2_enum\00", align 1
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1244, i32 8 }
@___asan_gen_.1534 = private unnamed_addr constant [23 x i8] c"rt5670_stereo_adc2_src\00", align 1
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1240, i32 27 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1241, i32 13 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1230, i32 2 }
@___asan_gen_.1543 = private unnamed_addr constant [25 x i8] c"rt5670_stereo1_adc1_enum\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1226, i32 8 }
@___asan_gen_.1546 = private unnamed_addr constant [23 x i8] c"rt5670_stereo_adc1_src\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1222, i32 27 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1223, i32 13 }
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1271, i32 2 }
@___asan_gen_.1555 = private unnamed_addr constant [25 x i8] c"rt5670_stereo2_dmic_enum\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1267, i32 8 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1254, i32 2 }
@___asan_gen_.1561 = private unnamed_addr constant [25 x i8] c"rt5670_stereo2_adc2_enum\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1250, i32 8 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1236, i32 2 }
@___asan_gen_.1567 = private unnamed_addr constant [25 x i8] c"rt5670_stereo2_adc1_enum\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1232, i32 8 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1218, i32 2 }
@___asan_gen_.1573 = private unnamed_addr constant [27 x i8] c"rt5670_stereo2_adc_lr_enum\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1214, i32 8 }
@___asan_gen_.1576 = private unnamed_addr constant [26 x i8] c"rt5670_stereo2_adc_lr_src\00", align 1
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1210, i32 27 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1211, i32 2 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1211, i32 7 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1304, i32 2 }
@___asan_gen_.1588 = private unnamed_addr constant [24 x i8] c"rt5670_mono_dmic_l_enum\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1300, i32 8 }
@___asan_gen_.1591 = private unnamed_addr constant [21 x i8] c"rt5670_mono_dmic_src\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1296, i32 27 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1310, i32 2 }
@___asan_gen_.1597 = private unnamed_addr constant [24 x i8] c"rt5670_mono_dmic_r_enum\00", align 1
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1306, i32 8 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1293, i32 2 }
@___asan_gen_.1603 = private unnamed_addr constant [24 x i8] c"rt5670_mono_adc_l2_enum\00", align 1
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1289, i32 8 }
@___asan_gen_.1606 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_l2_src\00", align 1
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1285, i32 27 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1283, i32 2 }
@___asan_gen_.1612 = private unnamed_addr constant [24 x i8] c"rt5670_mono_adc_l1_enum\00", align 1
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1279, i32 8 }
@___asan_gen_.1615 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_l1_src\00", align 1
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1275, i32 27 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1276, i32 19 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1320, i32 2 }
@___asan_gen_.1624 = private unnamed_addr constant [24 x i8] c"rt5670_mono_adc_r1_enum\00", align 1
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1316, i32 8 }
@___asan_gen_.1627 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_r1_src\00", align 1
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1312, i32 27 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1313, i32 19 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1330, i32 2 }
@___asan_gen_.1636 = private unnamed_addr constant [24 x i8] c"rt5670_mono_adc_r2_enum\00", align 1
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1326, i32 8 }
@___asan_gen_.1639 = private unnamed_addr constant [23 x i8] c"rt5670_mono_adc_r2_src\00", align 1
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1322, i32 27 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 923, i32 2 }
@___asan_gen_.1645 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 925, i32 2 }
@___asan_gen_.1649 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1650 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1652 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1653 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1654 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1655 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1656 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1657 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1659 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1341, i32 2 }
@___asan_gen_.1663 = private unnamed_addr constant [22 x i8] c"rt5670_txdp_slot_enum\00", align 1
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1337, i32 8 }
@___asan_gen_.1666 = private unnamed_addr constant [21 x i8] c"rt5670_txdp_slot_src\00", align 1
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1333, i32 27 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1334, i32 2 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1334, i32 14 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1334, i32 26 }
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1334, i32 38 }
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1200, i32 2 }
@___asan_gen_.1684 = private unnamed_addr constant [19 x i8] c"rt5670_dsp_ul_enum\00", align 1
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1196, i32 8 }
@___asan_gen_.1687 = private unnamed_addr constant [22 x i8] c"rt5670_dsp_bypass_src\00", align 1
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1192, i32 27 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1193, i32 2 }
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1193, i32 9 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1206, i32 2 }
@___asan_gen_.1699 = private unnamed_addr constant [19 x i8] c"rt5670_dsp_dl_enum\00", align 1
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1202, i32 8 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1189, i32 2 }
@___asan_gen_.1705 = private unnamed_addr constant [17 x i8] c"rt5670_rxdp_enum\00", align 1
@___asan_gen_.1707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1185, i32 8 }
@___asan_gen_.1708 = private unnamed_addr constant [16 x i8] c"rt5670_rxdp_src\00", align 1
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1180, i32 27 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1181, i32 13 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1181, i32 24 }
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1181, i32 42 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1182, i32 2 }
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1182, i32 22 }
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1182, i32 42 }
@___asan_gen_.1731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1363, i32 2 }
@___asan_gen_.1732 = private unnamed_addr constant [23 x i8] c"rt5670_if2_adc_in_enum\00", align 1
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1359, i32 8 }
@___asan_gen_.1735 = private unnamed_addr constant [22 x i8] c"rt5670_if2_adc_in_src\00", align 1
@___asan_gen_.1737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1355, i32 27 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1403, i32 2 }
@___asan_gen_.1741 = private unnamed_addr constant [25 x i8] c"rt5670_if1_adc1_in1_enum\00", align 1
@___asan_gen_.1743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1399, i32 8 }
@___asan_gen_.1744 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc1_in1_src\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1395, i32 27 }
@___asan_gen_.1749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1414, i32 2 }
@___asan_gen_.1750 = private unnamed_addr constant [25 x i8] c"rt5670_if1_adc1_in2_enum\00", align 1
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1410, i32 8 }
@___asan_gen_.1753 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc1_in2_src\00", align 1
@___asan_gen_.1755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1406, i32 27 }
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1407, i32 2 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1407, i32 18 }
@___asan_gen_.1764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1352, i32 2 }
@___asan_gen_.1765 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc2_in_enum\00", align 1
@___asan_gen_.1767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1348, i32 8 }
@___asan_gen_.1768 = private unnamed_addr constant [23 x i8] c"rt5670_if1_adc2_in_src\00", align 1
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1344, i32 27 }
@___asan_gen_.1773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1425, i32 2 }
@___asan_gen_.1774 = private unnamed_addr constant [25 x i8] c"rt5670_if1_adc2_in1_enum\00", align 1
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1421, i32 8 }
@___asan_gen_.1777 = private unnamed_addr constant [24 x i8] c"rt5670_if1_adc2_in1_src\00", align 1
@___asan_gen_.1779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1417, i32 27 }
@___asan_gen_.1782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1418, i32 2 }
@___asan_gen_.1785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1436, i32 2 }
@___asan_gen_.1786 = private unnamed_addr constant [20 x i8] c"rt5670_vad_adc_enum\00", align 1
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1432, i32 8 }
@___asan_gen_.1789 = private unnamed_addr constant [19 x i8] c"rt5670_vad_adc_src\00", align 1
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1428, i32 27 }
@___asan_gen_.1794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1429, i32 2 }
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1429, i32 16 }
@___asan_gen_.1800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1429, i32 30 }
@___asan_gen_.1803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1429, i32 44 }
@___asan_gen_.1806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 993, i32 2 }
@___asan_gen_.1807 = private unnamed_addr constant [21 x i8] c".compoundliteral.362\00", align 1
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 995, i32 2 }
@___asan_gen_.1811 = private unnamed_addr constant [21 x i8] c".compoundliteral.364\00", align 1
@___asan_gen_.1812 = private unnamed_addr constant [21 x i8] c".compoundliteral.365\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1814 = private unnamed_addr constant [18 x i8] c"rt5670_dac2l_enum\00", align 1
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1163, i32 8 }
@___asan_gen_.1817 = private unnamed_addr constant [17 x i8] c"rt5670_dac12_src\00", align 1
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1158, i32 27 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1159, i32 24 }
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1159, i32 35 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1160, i32 2 }
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1160, i32 21 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1177, i32 2 }
@___asan_gen_.1835 = private unnamed_addr constant [18 x i8] c"rt5670_dac2r_enum\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1173, i32 8 }
@___asan_gen_.1838 = private unnamed_addr constant [17 x i8] c"rt5670_dacr2_src\00", align 1
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1169, i32 27 }
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1170, i32 47 }
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1148, i32 2 }
@___asan_gen_.1847 = private unnamed_addr constant [18 x i8] c"rt5670_dac1l_enum\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1144, i32 8 }
@___asan_gen_.1850 = private unnamed_addr constant [16 x i8] c"rt5670_dac1_src\00", align 1
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1140, i32 27 }
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1154, i32 2 }
@___asan_gen_.1856 = private unnamed_addr constant [18 x i8] c"rt5670_dac1r_enum\00", align 1
@___asan_gen_.1858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1150, i32 8 }
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1005, i32 2 }
@___asan_gen_.1862 = private unnamed_addr constant [21 x i8] c".compoundliteral.376\00", align 1
@___asan_gen_.1865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1007, i32 2 }
@___asan_gen_.1866 = private unnamed_addr constant [21 x i8] c".compoundliteral.378\00", align 1
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1009, i32 2 }
@___asan_gen_.1870 = private unnamed_addr constant [21 x i8] c".compoundliteral.380\00", align 1
@___asan_gen_.1871 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1016, i32 2 }
@___asan_gen_.1875 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1876 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1877 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1878 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1879 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1880 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1881 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1882 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1041, i32 2 }
@___asan_gen_.1886 = private unnamed_addr constant [21 x i8] c".compoundliteral.392\00", align 1
@___asan_gen_.1887 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1888 = private unnamed_addr constant [21 x i8] c".compoundliteral.394\00", align 1
@___asan_gen_.1891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1050, i32 2 }
@___asan_gen_.1892 = private unnamed_addr constant [21 x i8] c".compoundliteral.396\00", align 1
@___asan_gen_.1893 = private unnamed_addr constant [21 x i8] c".compoundliteral.397\00", align 1
@___asan_gen_.1894 = private unnamed_addr constant [21 x i8] c".compoundliteral.398\00", align 1
@___asan_gen_.1895 = private unnamed_addr constant [21 x i8] c".compoundliteral.399\00", align 1
@___asan_gen_.1896 = private unnamed_addr constant [21 x i8] c".compoundliteral.400\00", align 1
@___asan_gen_.1897 = private unnamed_addr constant [21 x i8] c".compoundliteral.401\00", align 1
@___asan_gen_.1898 = private unnamed_addr constant [21 x i8] c".compoundliteral.402\00", align 1
@___asan_gen_.1899 = private unnamed_addr constant [21 x i8] c".compoundliteral.403\00", align 1
@___asan_gen_.1900 = private unnamed_addr constant [21 x i8] c".compoundliteral.404\00", align 1
@___asan_gen_.1901 = private unnamed_addr constant [21 x i8] c".compoundliteral.405\00", align 1
@___asan_gen_.1902 = private unnamed_addr constant [21 x i8] c".compoundliteral.406\00", align 1
@___asan_gen_.1903 = private unnamed_addr constant [21 x i8] c".compoundliteral.407\00", align 1
@___asan_gen_.1904 = private unnamed_addr constant [21 x i8] c".compoundliteral.408\00", align 1
@___asan_gen_.1905 = private unnamed_addr constant [21 x i8] c".compoundliteral.409\00", align 1
@___asan_gen_.1906 = private unnamed_addr constant [21 x i8] c".compoundliteral.410\00", align 1
@___asan_gen_.1907 = private unnamed_addr constant [21 x i8] c".compoundliteral.411\00", align 1
@___asan_gen_.1910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1102, i32 2 }
@___asan_gen_.1911 = private unnamed_addr constant [21 x i8] c".compoundliteral.413\00", align 1
@___asan_gen_.1912 = private unnamed_addr constant [21 x i8] c".compoundliteral.414\00", align 1
@___asan_gen_.1913 = private unnamed_addr constant [21 x i8] c".compoundliteral.415\00", align 1
@___asan_gen_.1916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1125, i32 2 }
@___asan_gen_.1917 = private unnamed_addr constant [21 x i8] c".compoundliteral.417\00", align 1
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1127, i32 2 }
@___asan_gen_.1921 = private unnamed_addr constant [21 x i8] c".compoundliteral.419\00", align 1
@___asan_gen_.1924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1132, i32 2 }
@___asan_gen_.1925 = private unnamed_addr constant [21 x i8] c".compoundliteral.421\00", align 1
@___asan_gen_.1926 = private unnamed_addr constant [21 x i8] c".compoundliteral.422\00", align 1
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1374, i32 2 }
@___asan_gen_.1930 = private unnamed_addr constant [19 x i8] c"rt5670_pdm1_l_enum\00", align 1
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1370, i32 8 }
@___asan_gen_.1933 = private unnamed_addr constant [15 x i8] c"rt5670_pdm_src\00", align 1
@___asan_gen_.1935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1366, i32 27 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1367, i32 2 }
@___asan_gen_.1941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1367, i32 14 }
@___asan_gen_.1944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1380, i32 2 }
@___asan_gen_.1945 = private unnamed_addr constant [19 x i8] c"rt5670_pdm1_r_enum\00", align 1
@___asan_gen_.1947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1376, i32 8 }
@___asan_gen_.1948 = private unnamed_addr constant [28 x i8] c"rt5670_specific_dapm_routes\00", align 1
@___asan_gen_.1950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2344, i32 40 }
@___asan_gen_.1951 = private unnamed_addr constant [28 x i8] c"rt5672_specific_dapm_routes\00", align 1
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2357, i32 40 }
@___asan_gen_.1962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2744, i32 3 }
@___asan_gen_.1965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1949, i32 2 }
@___asan_gen_.1968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1951, i32 2 }
@___asan_gen_.1969 = private unnamed_addr constant [18 x i8] c"rt5670_pdm2_l_mux\00", align 1
@___asan_gen_.1971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1385, i32 38 }
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1953, i32 2 }
@___asan_gen_.1975 = private unnamed_addr constant [18 x i8] c"rt5670_pdm2_r_mux\00", align 1
@___asan_gen_.1977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1391, i32 38 }
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1955, i32 2 }
@___asan_gen_.1983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1956, i32 2 }
@___asan_gen_.1986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1957, i32 2 }
@___asan_gen_.1989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1958, i32 2 }
@___asan_gen_.1990 = private unnamed_addr constant [29 x i8] c"rt5670_specific_dapm_widgets\00", align 1
@___asan_gen_.1992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1948, i32 41 }
@___asan_gen_.1995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1386, i32 2 }
@___asan_gen_.1996 = private unnamed_addr constant [19 x i8] c"rt5670_pdm2_l_enum\00", align 1
@___asan_gen_.1998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1382, i32 8 }
@___asan_gen_.2001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1392, i32 2 }
@___asan_gen_.2002 = private unnamed_addr constant [19 x i8] c"rt5670_pdm2_r_enum\00", align 1
@___asan_gen_.2004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1388, i32 8 }
@___asan_gen_.2007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1962, i32 2 }
@___asan_gen_.2010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1965, i32 2 }
@___asan_gen_.2013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1966, i32 2 }
@___asan_gen_.2016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1967, i32 2 }
@___asan_gen_.2019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1968, i32 2 }
@___asan_gen_.2020 = private unnamed_addr constant [29 x i8] c"rt5672_specific_dapm_widgets\00", align 1
@___asan_gen_.2022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 1961, i32 41 }
@___asan_gen_.2031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2514, i32 3 }
@___asan_gen_.2037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2523, i32 2 }
@___asan_gen_.2040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2799, i32 11 }
@___asan_gen_.2041 = private unnamed_addr constant [19 x i8] c"rt5670_aif_dai_ops\00", align 1
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2789, i32 37 }
@___asan_gen_.2046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2819, i32 11 }
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2541, i32 3 }
@___asan_gen_.2058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2569, i32 4 }
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2574, i32 3 }
@___asan_gen_.2070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2580, i32 3 }
@___asan_gen_.2073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2584, i32 2 }
@___asan_gen_.2079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2651, i32 2 }
@___asan_gen_.2085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2491, i32 3 }
@___asan_gen_.2094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2377, i32 3 }
@___asan_gen_.2100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2383, i32 3 }
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2389, i32 2 }
@___asan_gen_.2104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2391, i32 2 }
@___asan_gen_.2107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2108 = private constant [29 x i8] c"../sound/soc/codecs/rt5670.c\00", align 1
@___asan_gen_.2109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2108, i32 2428, i32 3 }
@___asan_gen_.2110 = private unnamed_addr constant [27 x i8] c"switch.table.is_using_asrc\00", align 1
@___asan_gen_.2111 = private unnamed_addr constant [31 x i8] c"switch.table.is_using_asrc.473\00", align 1
@___asan_gen_.2112 = private unnamed_addr constant [30 x i8] c"switch.table.rt5670_hw_params\00", align 1
@llvm.compiler.used = appending global [635 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__UNIQUE_ID_quirk298, ptr @__UNIQUE_ID_quirktype297, ptr @__exitcall_rt5670_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt5670__305_3342_rt5670_i2c_driver_init6, ptr @__ksymtab_rt5670_components, ptr @__ksymtab_rt5670_jack_resume, ptr @__ksymtab_rt5670_jack_suspend, ptr @__ksymtab_rt5670_sel_asrc_clk_src, ptr @__ksymtab_rt5670_set_jack_detect, ptr @__param_quirk, ptr @rt5670_hw_params._entry, ptr @rt5670_hw_params._entry.466, ptr @rt5670_hw_params._entry.471, ptr @rt5670_hw_params._entry_ptr, ptr @rt5670_hw_params._entry_ptr.468, ptr @rt5670_hw_params._entry_ptr.472, ptr @rt5670_i2c_driver_exit, ptr @rt5670_i2c_probe._entry, ptr @rt5670_i2c_probe._entry.25, ptr @rt5670_i2c_probe._entry.28, ptr @rt5670_i2c_probe._entry.31, ptr @rt5670_i2c_probe._entry.34, ptr @rt5670_i2c_probe._entry.37, ptr @rt5670_i2c_probe._entry.40, ptr @rt5670_i2c_probe._entry.43, ptr @rt5670_i2c_probe._entry.46, ptr @rt5670_i2c_probe._entry.49, ptr @rt5670_i2c_probe._entry.52, ptr @rt5670_i2c_probe._entry.55, ptr @rt5670_i2c_probe._entry.58, ptr @rt5670_i2c_probe._entry.61, ptr @rt5670_i2c_probe._entry.65, ptr @rt5670_i2c_probe._entry.68, ptr @rt5670_i2c_probe._entry.71, ptr @rt5670_i2c_probe._entry.75, ptr @rt5670_i2c_probe._entry_ptr, ptr @rt5670_i2c_probe._entry_ptr.27, ptr @rt5670_i2c_probe._entry_ptr.30, ptr @rt5670_i2c_probe._entry_ptr.33, ptr @rt5670_i2c_probe._entry_ptr.36, ptr @rt5670_i2c_probe._entry_ptr.39, ptr @rt5670_i2c_probe._entry_ptr.42, ptr @rt5670_i2c_probe._entry_ptr.45, ptr @rt5670_i2c_probe._entry_ptr.48, ptr @rt5670_i2c_probe._entry_ptr.51, ptr @rt5670_i2c_probe._entry_ptr.54, ptr @rt5670_i2c_probe._entry_ptr.57, ptr @rt5670_i2c_probe._entry_ptr.60, ptr @rt5670_i2c_probe._entry_ptr.63, ptr @rt5670_i2c_probe._entry_ptr.67, ptr @rt5670_i2c_probe._entry_ptr.70, ptr @rt5670_i2c_probe._entry_ptr.74, ptr @rt5670_i2c_probe._entry_ptr.77, ptr @rt5670_irq_detection._entry, ptr @rt5670_irq_detection._entry_ptr, ptr @rt5670_probe._entry, ptr @rt5670_probe._entry_ptr, ptr @rt5670_set_codec_sysclk._entry, ptr @rt5670_set_codec_sysclk._entry_ptr, ptr @rt5670_set_dai_fmt._entry, ptr @rt5670_set_dai_fmt._entry_ptr, ptr @rt5670_set_dai_pll._entry, ptr @rt5670_set_dai_pll._entry.454, ptr @rt5670_set_dai_pll._entry.457, ptr @rt5670_set_dai_pll._entry_ptr, ptr @rt5670_set_dai_pll._entry_ptr.456, ptr @rt5670_set_dai_pll._entry_ptr.459, ptr @rt5670_set_jack_detect._entry, ptr @rt5670_set_jack_detect._entry_ptr, ptr @set_dmic_clk._entry, ptr @set_dmic_clk._entry_ptr, ptr @quirk_override, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rt5670_quirk, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rt5670_i2c_driver, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.21, ptr @rt5670_i2c_id, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @rt5670_i2c_probe._key, ptr @rt5670_regmap, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @init_list, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @soc_component_dev_rt5670, ptr @rt5670_dai, ptr @rt5670_reg, ptr @rt5670_ranges, ptr @.str.78, ptr @rt5670_snd_controls, ptr @rt5670_dapm_routes, ptr @.str.79, ptr @out_vol_tlv, ptr @.compoundliteral, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @dac_vol_tlv, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @bst_tlv, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @in_vol_tlv, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @adc_vol_tlv, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @adc_bst_tlv, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @rt5670_if2_adc_enum, ptr @.str.107, ptr @rt5670_if2_dac_enum, ptr @rt5670_data_select, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @rt5670_rec_l_mix, ptr @.str.150, ptr @rt5670_rec_r_mix, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @rt5670_sto1_dmic_mux, ptr @.str.158, ptr @rt5670_sto_adc_2_mux, ptr @.str.159, ptr @.str.160, ptr @rt5670_sto_adc_1_mux, ptr @.str.161, ptr @.str.162, ptr @rt5670_sto2_dmic_mux, ptr @.str.163, ptr @rt5670_sto2_adc_2_mux, ptr @.str.164, ptr @.str.165, ptr @rt5670_sto2_adc_1_mux, ptr @.str.166, ptr @.str.167, ptr @rt5670_sto2_adc_lr_mux, ptr @.str.168, ptr @rt5670_mono_dmic_l_mux, ptr @.str.169, ptr @rt5670_mono_dmic_r_mux, ptr @.str.170, ptr @rt5670_mono_adc_l2_mux, ptr @.str.171, ptr @rt5670_mono_adc_l1_mux, ptr @.str.172, ptr @rt5670_mono_adc_r1_mux, ptr @.str.173, ptr @rt5670_mono_adc_r2_mux, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @rt5670_sto1_adc_l_mix, ptr @.str.177, ptr @rt5670_sto1_adc_r_mix, ptr @.str.178, ptr @rt5670_sto2_adc_l_mix, ptr @.str.179, ptr @rt5670_sto2_adc_r_mix, ptr @.str.180, ptr @.str.181, ptr @rt5670_mono_adc_l_mix, ptr @.str.182, ptr @.str.183, ptr @rt5670_mono_adc_r_mix, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @rt5670_txdp_slot_mux, ptr @.str.204, ptr @rt5670_dsp_ul_mux, ptr @.str.205, ptr @rt5670_dsp_dl_mux, ptr @.str.206, ptr @rt5670_rxdp_mux, ptr @.str.207, ptr @rt5670_if2_adc_in_mux, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @rt5670_if1_adc1_in1_mux, ptr @.str.226, ptr @rt5670_if1_adc1_in2_mux, ptr @.str.227, ptr @rt5670_if1_adc2_in_mux, ptr @.str.228, ptr @rt5670_if1_adc2_in1_mux, ptr @.str.229, ptr @rt5670_vad_adc_mux, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @rt5670_dac_l_mix, ptr @.str.240, ptr @rt5670_dac_r_mix, ptr @.str.241, ptr @.str.242, ptr @rt5670_dac_l2_mux, ptr @.str.243, ptr @rt5670_dac_r2_mux, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @rt5670_dac1l_mux, ptr @.str.247, ptr @rt5670_dac1r_mux, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @rt5670_sto_dac_l_mix, ptr @.str.252, ptr @rt5670_sto_dac_r_mix, ptr @.str.253, ptr @rt5670_mono_dac_l_mix, ptr @.str.254, ptr @rt5670_mono_dac_r_mix, ptr @.str.255, ptr @rt5670_dig_l_mix, ptr @.str.256, ptr @rt5670_dig_r_mix, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @rt5670_out_l_mix, ptr @.str.264, ptr @rt5670_out_r_mix, ptr @.str.265, ptr @rt5670_hpvoll_mix, ptr @.str.266, ptr @rt5670_hpvolr_mix, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @rt5670_hpo_mix, ptr @.str.271, ptr @rt5670_lout_mix, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @lout_l_enable_control, ptr @.str.277, ptr @lout_r_enable_control, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @rt5670_pdm1_l_mux, ptr @.str.281, ptr @rt5670_pdm1_r_mux, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @rt5670_dapm_widgets, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.compoundliteral.292, ptr @.str.293, ptr @.compoundliteral.294, ptr @.str.295, ptr @.compoundliteral.296, ptr @.compoundliteral.297, ptr @.compoundliteral.298, ptr @.str.299, ptr @rt5670_stereo1_dmic_enum, ptr @rt5670_stereo_dmic_src, ptr @.str.300, ptr @rt5670_stereo1_adc2_enum, ptr @rt5670_stereo_adc2_src, ptr @.str.301, ptr @.str.302, ptr @rt5670_stereo1_adc1_enum, ptr @rt5670_stereo_adc1_src, ptr @.str.303, ptr @.str.304, ptr @rt5670_stereo2_dmic_enum, ptr @.str.305, ptr @rt5670_stereo2_adc2_enum, ptr @.str.306, ptr @rt5670_stereo2_adc1_enum, ptr @.str.307, ptr @rt5670_stereo2_adc_lr_enum, ptr @rt5670_stereo2_adc_lr_src, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @rt5670_mono_dmic_l_enum, ptr @rt5670_mono_dmic_src, ptr @.str.311, ptr @rt5670_mono_dmic_r_enum, ptr @.str.312, ptr @rt5670_mono_adc_l2_enum, ptr @rt5670_mono_adc_l2_src, ptr @.str.313, ptr @rt5670_mono_adc_l1_enum, ptr @rt5670_mono_adc_l1_src, ptr @.str.314, ptr @.str.315, ptr @rt5670_mono_adc_r1_enum, ptr @rt5670_mono_adc_r1_src, ptr @.str.316, ptr @.str.317, ptr @rt5670_mono_adc_r2_enum, ptr @rt5670_mono_adc_r2_src, ptr @.str.318, ptr @.compoundliteral.319, ptr @.str.320, ptr @.compoundliteral.321, ptr @.compoundliteral.322, ptr @.compoundliteral.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.compoundliteral.326, ptr @.compoundliteral.327, ptr @.compoundliteral.328, ptr @.compoundliteral.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @rt5670_txdp_slot_enum, ptr @rt5670_txdp_slot_src, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @rt5670_dsp_ul_enum, ptr @rt5670_dsp_bypass_src, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @rt5670_dsp_dl_enum, ptr @.str.341, ptr @rt5670_rxdp_enum, ptr @rt5670_rxdp_src, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @rt5670_if2_adc_in_enum, ptr @rt5670_if2_adc_in_src, ptr @.str.349, ptr @rt5670_if1_adc1_in1_enum, ptr @rt5670_if1_adc1_in1_src, ptr @.str.350, ptr @rt5670_if1_adc1_in2_enum, ptr @rt5670_if1_adc1_in2_src, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @rt5670_if1_adc2_in_enum, ptr @rt5670_if1_adc2_in_src, ptr @.str.354, ptr @rt5670_if1_adc2_in1_enum, ptr @rt5670_if1_adc2_in1_src, ptr @.str.355, ptr @.str.356, ptr @rt5670_vad_adc_enum, ptr @rt5670_vad_adc_src, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.compoundliteral.362, ptr @.str.363, ptr @.compoundliteral.364, ptr @.compoundliteral.365, ptr @.compoundliteral.366, ptr @rt5670_dac2l_enum, ptr @rt5670_dac12_src, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @rt5670_dac2r_enum, ptr @rt5670_dacr2_src, ptr @.str.372, ptr @.str.373, ptr @rt5670_dac1l_enum, ptr @rt5670_dac1_src, ptr @.str.374, ptr @rt5670_dac1r_enum, ptr @.str.375, ptr @.compoundliteral.376, ptr @.str.377, ptr @.compoundliteral.378, ptr @.str.379, ptr @.compoundliteral.380, ptr @.compoundliteral.381, ptr @.str.382, ptr @.compoundliteral.383, ptr @.compoundliteral.384, ptr @.compoundliteral.385, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.compoundliteral.389, ptr @.compoundliteral.390, ptr @.str.391, ptr @.compoundliteral.392, ptr @.compoundliteral.393, ptr @.compoundliteral.394, ptr @.str.395, ptr @.compoundliteral.396, ptr @.compoundliteral.397, ptr @.compoundliteral.398, ptr @.compoundliteral.399, ptr @.compoundliteral.400, ptr @.compoundliteral.401, ptr @.compoundliteral.402, ptr @.compoundliteral.403, ptr @.compoundliteral.404, ptr @.compoundliteral.405, ptr @.compoundliteral.406, ptr @.compoundliteral.407, ptr @.compoundliteral.408, ptr @.compoundliteral.409, ptr @.compoundliteral.410, ptr @.compoundliteral.411, ptr @.str.412, ptr @.compoundliteral.413, ptr @.compoundliteral.414, ptr @.compoundliteral.415, ptr @.str.416, ptr @.compoundliteral.417, ptr @.str.418, ptr @.compoundliteral.419, ptr @.str.420, ptr @.compoundliteral.421, ptr @.compoundliteral.422, ptr @.str.423, ptr @rt5670_pdm1_l_enum, ptr @rt5670_pdm_src, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @rt5670_pdm1_r_enum, ptr @rt5670_specific_dapm_routes, ptr @rt5672_specific_dapm_routes, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @rt5670_pdm2_l_mux, ptr @.str.431, ptr @rt5670_pdm2_r_mux, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @rt5670_specific_dapm_widgets, ptr @.str.437, ptr @rt5670_pdm2_l_enum, ptr @.str.438, ptr @rt5670_pdm2_r_enum, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @rt5672_specific_dapm_widgets, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @rt5670_aif_dai_ops, ptr @.str.450, ptr @.str.451, ptr @.str.452, ptr @.str.453, ptr @.str.455, ptr @.str.458, ptr @.str.460, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.467, ptr @.str.469, ptr @.str.470, ptr @switch.table.is_using_asrc, ptr @switch.table.is_using_asrc.473, ptr @switch.table.rt5670_hw_params], section "llvm.metadata"
@0 = internal global [590 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_set_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_irq_detection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_i2c_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt5670 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_reg to i32), i32 1072, i32 1344, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_snd_controls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dapm_routes to i32), i32 15548, i32 19424, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bst_tlv to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_bst_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if2_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if2_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_data_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_rec_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_rec_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto1_dmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto_adc_2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto_adc_1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto2_dmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto2_adc_2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto2_adc_1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto2_adc_lr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dmic_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dmic_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto1_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto1_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto2_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto2_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_txdp_slot_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dsp_ul_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dsp_dl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_rxdp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if2_adc_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc1_in1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc1_in2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc2_in_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc2_in1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_vad_adc_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac_l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac_r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac_l2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac_r2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac1l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac1r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto_dac_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_sto_dac_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dac_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dac_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dig_l_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dig_r_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_out_l_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_out_r_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_hpvoll_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_hpvolr_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_hpo_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_lout_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lout_l_enable_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lout_r_enable_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm1_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm1_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dapm_widgets to i32), i32 30780, i32 38464, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dmic_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo1_dmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo_dmic_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo1_adc2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo_adc2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo1_adc1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo_adc1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo2_dmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo2_adc2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo2_adc1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo2_adc_lr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_stereo2_adc_lr_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dmic_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dmic_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_dmic_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_l1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_mono_adc_r2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_txdp_slot_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_txdp_slot_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dsp_ul_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dsp_bypass_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dsp_dl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_rxdp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_rxdp_src to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if2_adc_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if2_adc_in_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc1_in1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc1_in1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc1_in2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc1_in2_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc2_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc2_in_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc2_in1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_if1_adc2_in1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_vad_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_vad_adc_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.362 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.364 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.365 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac2l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac12_src to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac2r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dacr2_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac1l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac1_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_dac1r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.376 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.378 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.380 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1871 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1877 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.392 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.394 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1888 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.396 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1892 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.397 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.398 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1894 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.399 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.400 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.401 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.402 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.403 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1899 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.404 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.405 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.406 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.407 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.408 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1904 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.409 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.410 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.411 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1907 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.413 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.414 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.415 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.417 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.419 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.421 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.422 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm1_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1930 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm1_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_specific_dapm_routes to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.1948 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5672_specific_dapm_routes to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm2_l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm2_r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_specific_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.1990 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm2_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1996 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_pdm2_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2002 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5672_specific_dapm_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_set_codec_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_set_dai_pll._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_set_dai_pll._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_hw_params._entry.466 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2104 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5670_hw_params._entry.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.is_using_asrc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.is_using_asrc.473 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2111 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt5670_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt5670_jack_suspend(ptr noundef %component) #0 align 64 {
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
  %jack_type = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jack_type, align 4
  %jack_type_saved = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %jack_type_saved to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %jack_type_saved, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %call23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 191, i32 noundef 8, i32 noundef 0) #9
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 252, i32 noundef 4, i32 noundef 4) #9
  %jack_type25.i = getelementptr inbounds %struct.rt5670_priv, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %jack_type25.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %jack_type25.i, align 4
  %call26.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.10) #9
  %call27.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i.i) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt5670_headset_detect(ptr noundef %component, i32 noundef %jack_insert) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jack_insert)
  %tobool.not = icmp eq i32 %jack_insert, 0
  br i1 %tobool.not, label %if.else22, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.10) #9
  %call3 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 252, i32 noundef 4, i32 noundef 0) #9
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 4224, i32 noundef 4096) #9
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 193, i32 noundef 4) #9
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 192, i32 noundef 32768, i32 noundef 32768) #9
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 10, i32 noundef 4, i32 noundef 4) #9
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 248, i32 noundef 240) #9
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 4096, i32 noundef 4096) #9
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 4096, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 300) #9
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12) #9
  %and = and i32 %call12, 7
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  br i1 %switch, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %jack_type = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %jack_type, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 191, i32 noundef 8, i32 noundef 8) #9
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 219, i32 noundef 64, i32 noundef 64) #9
  %call17 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 219) #9
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 252, i32 noundef 4, i32 noundef 4) #9
  %jack_type19 = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %jack_type19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %jack_type19, align 4
  %call20 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.10) #9
  %call21 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  br label %if.end28

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 191, i32 noundef 8, i32 noundef 0) #9
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 252, i32 noundef 4, i32 noundef 4) #9
  %jack_type25 = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %jack_type25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %jack_type25, align 4
  %call26 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.10) #9
  %call27 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #9
  br label %if.end28

if.end28:                                         ; preds = %if.else22, %if.else, %if.then14
  %jack_type29 = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %jack_type29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jack_type29, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt5670_jack_resume(ptr noundef %component) #0 align 64 {
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
  %jack_type_saved = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %jack_type_saved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jack_type_saved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @rt5670_headset_detect(ptr noundef %component, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5670_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack) #0 align 64 {
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
  %jack1 = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %jack1, align 4
  %5 = load ptr, ptr %dev.i, align 4
  %hp_gpio = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3
  %gpiod_dev = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %gpiod_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %gpiod_dev, align 4
  %name = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 4
  %report = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %report to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 28675, ptr %report, align 4
  %debounce_time = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %debounce_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 150, ptr %debounce_time, align 4
  %wake = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %wake to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %wake, align 4
  %data = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %data, align 4
  %jack_status_check = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %jack_status_check to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rt5670_irq_detection, ptr %jack_status_check, align 4
  %call10 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef %jack, i32 noundef 1, ptr noundef %hp_gpio) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_irq_detection(ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %jack1 = getelementptr inbounds %struct.rt5670_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jack1, align 4
  %status = getelementptr inbounds %struct.snd_soc_jack, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %jd_mode = getelementptr inbounds %struct.rt5670_priv, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %jd_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef 148) #9
  %. = select i1 %cmp, i32 112, i32 32
  %and4 = and i32 %call, %.
  %8 = lshr exact i32 %and4, 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.sw.epilog34_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 0, label %entry.sw.bb_crit_edge60
    i32 7, label %entry.sw.bb27_crit_edge
    i32 1, label %entry.sw.bb27_crit_edge61
    i32 2, label %entry.sw.bb27_crit_edge62
  ]

entry.sw.bb27_crit_edge62:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

entry.sw.bb27_crit_edge61:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

entry.sw.bb_crit_edge60:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog34_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge60
  %jack_type = getelementptr inbounds %struct.rt5670_priv, ptr %data, i32 0, i32 22
  %10 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @rt5670_headset_detect(ptr noundef %13, i32 noundef 1)
  %debounce_time = getelementptr inbounds %struct.rt5670_priv, ptr %data, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %debounce_time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 25, ptr %debounce_time, align 4
  br label %sw.epilog34

if.end9:                                          ; preds = %sw.bb
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %13, i32 noundef 191) #9
  %and12 = and i32 %call11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end9.if.then24_crit_edge, label %if.then13

if.end9.if.then24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then13:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %16, i32 noundef 219) #9
  %and.i = and i32 %call.i, 65408
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %16, i32 noundef 219, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end22.thread58, label %rt5670_button_detect.exit

if.end22.thread58:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %dev59 = getelementptr inbounds %struct.snd_soc_component, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11, i32 noundef 0) #12
  br label %if.then24

rt5670_button_detect.exit:                        ; preds = %if.then13
  tail call void @msleep(i32 noundef 20) #9
  %call2.i = tail call i32 @snd_soc_component_read(ptr noundef %16, i32 noundef 219) #9
  %call3.i = tail call i32 @snd_soc_component_write(ptr noundef %16, i32 noundef 219, i32 noundef %call2.i) #9
  %trunc = trunc i32 %and.i to i16
  %21 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.474)
  switch i16 %trunc, label %if.end22 [
    i16 8192, label %rt5670_button_detect.exit.sw.epilog34_crit_edge
    i16 1024, label %sw.bb17
    i16 128, label %sw.bb19
  ]

rt5670_button_detect.exit.sw.epilog34_crit_edge:  ; preds = %rt5670_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

sw.bb17:                                          ; preds = %rt5670_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

sw.bb19:                                          ; preds = %rt5670_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

if.end22:                                         ; preds = %rt5670_button_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef %and.i) #12
  br label %sw.epilog34

if.then24:                                        ; preds = %if.end22.thread58, %if.end9.if.then24_crit_edge
  %26 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jack_type, align 4
  br label %sw.epilog34

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge61, %entry.sw.bb27_crit_edge62
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %29, i32 noundef 191, i32 noundef 1, i32 noundef 0) #9
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %31, i32 0, i32 17
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  %call23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %31, i32 noundef 191, i32 noundef 8, i32 noundef 0) #9
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %31, i32 noundef 252, i32 noundef 4, i32 noundef 4) #9
  %jack_type25.i = getelementptr inbounds %struct.rt5670_priv, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %jack_type25.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %jack_type25.i, align 4
  %call26.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.10) #9
  %call27.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i.i) #9
  %debounce_time32 = getelementptr inbounds %struct.rt5670_priv, ptr %data, i32 0, i32 3, i32 6
  %37 = ptrtoint ptr %debounce_time32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 150, ptr %debounce_time32, align 4
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb27, %if.then24, %if.end22, %sw.bb19, %sw.bb17, %rt5670_button_detect.exit.sw.epilog34_crit_edge, %if.then6, %entry.sw.epilog34_crit_edge
  %report.1 = phi i32 [ %3, %entry.sw.epilog34_crit_edge ], [ 0, %sw.bb27 ], [ %call8, %if.then6 ], [ %27, %if.then24 ], [ 3, %if.end22 ], [ 8195, %rt5670_button_detect.exit.sw.epilog34_crit_edge ], [ 16387, %sw.bb17 ], [ 4099, %sw.bb19 ]
  ret i32 %report.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt5670_sel_asrc_clk_src(ptr noundef %component, i32 noundef %filter_mask, i32 noundef %clk_src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %clk_src)
  %cmp = icmp ugt i32 %clk_src, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %filter_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shl = shl nuw nsw i32 %clk_src, 12
  %spec.select = select i1 %tobool.not, i32 0, i32 61440
  %and5 = and i32 %filter_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %spec.select, 3840
  %shl10 = shl nuw nsw i32 %clk_src, 8
  %asrc2_mask.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %and13 = and i32 %filter_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or16 = or i32 %asrc2_mask.1, 240
  %shl18 = shl nuw nsw i32 %clk_src, 4
  %asrc2_mask.2 = select i1 %tobool14.not, i32 %asrc2_mask.1, i32 %or16
  %and21 = and i32 %filter_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or24 = or i32 %asrc2_mask.2, 15
  %asrc2_mask.3 = select i1 %tobool22.not, i32 %asrc2_mask.2, i32 %or24
  %and29 = and i32 %filter_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %asrc3_mask.0 = select i1 %tobool30.not, i32 0, i32 240
  %asrc3_value.0 = select i1 %tobool30.not, i32 0, i32 %shl18
  %and37 = and i32 %filter_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or40 = or i32 %asrc3_mask.0, 15
  %asrc3_mask.1 = select i1 %tobool38.not, i32 %asrc3_mask.0, i32 %or40
  %or43 = select i1 %tobool38.not, i32 0, i32 %clk_src
  %asrc3_value.1 = or i32 %asrc3_value.0, %or43
  %and45 = and i32 %filter_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or48 = or i32 %asrc3_mask.1, 61440
  %and49 = and i32 %asrc3_value.1, -61441
  %or51 = or i32 %and49, %shl
  %asrc3_mask.2 = select i1 %tobool46.not, i32 %asrc3_mask.1, i32 %or48
  %asrc3_value.2 = select i1 %tobool46.not, i32 %asrc3_value.1, i32 %or51
  %and53 = and i32 %filter_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or56 = or i32 %asrc3_mask.2, 3840
  %and57 = and i32 %asrc3_value.2, -3841
  %or59 = or i32 %and57, %shl10
  %asrc3_mask.3 = select i1 %tobool54.not, i32 %asrc3_mask.2, i32 %or56
  %asrc3_value.3 = select i1 %tobool54.not, i32 %asrc3_value.2, i32 %or59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asrc2_mask.3)
  %tobool61.not = icmp eq i32 %asrc2_mask.3, 0
  br i1 %tobool61.not, label %if.end.if.end63_crit_edge, label %if.then62

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then62:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select105 = select i1 %tobool.not, i32 0, i32 %shl
  %or11 = select i1 %tobool6.not, i32 0, i32 %shl10
  %asrc2_value.1 = or i32 %spec.select105, %or11
  %or19 = select i1 %tobool14.not, i32 0, i32 %shl18
  %asrc2_value.2 = or i32 %asrc2_value.1, %or19
  %or27 = select i1 %tobool22.not, i32 0, i32 %clk_src
  %asrc2_value.3 = or i32 %asrc2_value.2, %or27
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 132, i32 noundef %asrc2_mask.3, i32 noundef %asrc2_value.3) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asrc3_mask.3)
  %tobool64.not = icmp eq i32 %asrc3_mask.3, 0
  br i1 %tobool64.not, label %if.end63.cleanup_crit_edge, label %if.then65

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 133, i32 noundef %asrc3_mask.3, i32 noundef %asrc3_value.3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rt5670_components() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @quirk_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i32, ptr @rt5670_quirk, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %quirk.0 = phi i32 [ %1, %if.else ], [ %0, %entry.if.end_crit_edge ]
  %2 = and i32 %quirk.0, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp ne i32 %2, 0
  %4 = and i32 %quirk.0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  %and16 = and i32 %quirk.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %.not.not = xor i1 %.not, true
  %brmerge.not = and i1 %3, %.not.not
  %.str.6.mux = select i1 %brmerge.not, ptr @.str.6, ptr @.str.7
  %..str.9 = select i1 %tobool17.not, ptr null, ptr @.str.9
  %spec.select49 = select i1 %.not, ptr %..str.9, ptr @.str.8
  %retval.0 = select i1 %3, ptr %.str.6.mux, ptr %spec.select49
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_i2c_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5670_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5670_i2c_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5670_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !1066
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @quirk_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i32, ptr @rt5670_quirk, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %2) #12
  %4 = load i32, ptr @quirk_override, align 4
  store i32 %4, ptr @rt5670_quirk, align 4
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %5 = load i32, ptr @rt5670_quirk, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %gpio1_is_irq = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %gpio1_is_irq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %gpio1_is_irq, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end4.if.end11_crit_edge
  %7 = load i32, ptr @rt5670_quirk, align 4
  %and12 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %gpio1_is_ext_spk_en = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %gpio1_is_ext_spk_en to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %gpio1_is_ext_spk_en, align 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end11.if.end19_crit_edge
  %9 = load i32, ptr @rt5670_quirk, align 4
  %and20 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %in2_diff = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %in2_diff to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %in2_diff, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %11 = load i32, ptr @rt5670_quirk, align 4
  %and28 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dmic_en = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %dmic_en to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dmic_en, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %13 = load i32, ptr @rt5670_quirk, align 4
  %and36 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %if.then38

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %dmic1_data_pin = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %dmic1_data_pin to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %dmic1_data_pin, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end35.if.end43_crit_edge
  %15 = load i32, ptr @rt5670_quirk, align 4
  %and44 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end52_crit_edge, label %if.then46

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %dmic1_data_pin47 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %dmic1_data_pin47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dmic1_data_pin47, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end43.if.end52_crit_edge
  %17 = load i32, ptr @rt5670_quirk, align 4
  %and53 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end61_crit_edge, label %if.then55

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %dmic1_data_pin56 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %dmic1_data_pin56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %dmic1_data_pin56, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end52.if.end61_crit_edge
  %19 = load i32, ptr @rt5670_quirk, align 4
  %and62 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end69_crit_edge, label %if.then64

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %dmic2_data_pin = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %dmic2_data_pin to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %dmic2_data_pin, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.47) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end61.if.end69_crit_edge
  %21 = load i32, ptr @rt5670_quirk, align 4
  %and70 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end78_crit_edge, label %if.then72

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %dmic2_data_pin73 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %dmic2_data_pin73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %dmic2_data_pin73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %if.end69.if.end78_crit_edge
  %23 = load i32, ptr @rt5670_quirk, align 4
  %and79 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %if.then81

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %dmic3_data_pin = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %dmic3_data_pin to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %dmic3_data_pin, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.53) #12
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %if.end78.if.end86_crit_edge
  %25 = load i32, ptr @rt5670_quirk, align 4
  %and87 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end94_crit_edge, label %if.then89

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %jd_mode = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %jd_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %jd_mode, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.56) #12
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.end86.if.end94_crit_edge
  %27 = load i32, ptr @rt5670_quirk, align 4
  %and95 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end103_crit_edge, label %if.then97

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %jd_mode98 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %jd_mode98 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %jd_mode98, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.59) #12
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %if.end94.if.end103_crit_edge
  %29 = load i32, ptr @rt5670_quirk, align 4
  %and104 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end112_crit_edge, label %if.then106

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %jd_mode107 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %jd_mode107 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %jd_mode107, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62) #12
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %if.end103.if.end112_crit_edge
  %dac1_mixl_dac1_switch = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 24
  %31 = ptrtoint ptr %dac1_mixl_dac1_switch to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16843009, ptr %dac1_mixl_dac1_switch, align 4
  %call113 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5670_regmap, ptr noundef nonnull @rt5670_i2c_probe._key, ptr noundef nonnull @.str.64) #9
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call113, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then116, label %if.end123

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call113 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %33) #12
  br label %cleanup

if.end123:                                        ; preds = %if.end112
  %call125 = call i32 @regmap_read(ptr noundef %call113, i32 noundef 255, ptr noundef nonnull %val) #9
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25201, i32 %35)
  %cmp126.not = icmp eq i32 %35, 25201
  br i1 %cmp126.not, label %if.end132, label %do.end130

do.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %35) #12
  br label %cleanup

if.end132:                                        ; preds = %if.end123
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call134 = call i32 @regmap_write(ptr noundef %37, i32 noundef 0, i32 noundef 0) #9
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.i368 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 99, i32 noundef 208, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @msleep(i32 noundef 100) #9
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call138 = call i32 @regmap_write(ptr noundef %41, i32 noundef 0, i32 noundef 0) #9
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call140 = call i32 @regmap_read(ptr noundef %43, i32 noundef 253, ptr noundef nonnull %val) #9
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp141 = icmp ugt i32 %45, 3
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %. = select i1 %cmp141, i32 2432, i32 3328
  %call146 = call i32 @regmap_write(ptr noundef %47, i32 noundef 194, i32 noundef %.) #9
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call149 = call i32 @regmap_register_patch(ptr noundef %49, ptr noundef nonnull @init_list, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150.not = icmp eq i32 %call149, 0
  br i1 %cmp150.not, label %if.end132.if.end156_crit_edge, label %do.end154

if.end132.if.end156_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

do.end154:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %call149) #12
  br label %if.end156

if.end156:                                        ; preds = %do.end154, %if.end132.if.end156_crit_edge
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call.i369 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 250, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %in2_diff159 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 5
  %52 = ptrtoint ptr %in2_diff159 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %in2_diff159, align 4, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool160.not = icmp eq i8 %53, 0
  br i1 %tobool160.not, label %if.end156.if.end164_crit_edge, label %if.then161

if.end156.if.end164_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then161:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call.i370 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 14, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end156.if.end164_crit_edge
  %gpio1_is_irq165 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %gpio1_is_irq165 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %gpio1_is_irq165, align 1, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool166.not = icmp eq i8 %57, 0
  br i1 %tobool166.not, label %if.end164.if.end178_crit_edge, label %if.then167

if.end164.if.end178_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call169 = call i32 @regmap_write(ptr noundef %59, i32 noundef 219, i32 noundef 0) #9
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call171 = call i32 @regmap_write(ptr noundef %61, i32 noundef 220, i32 noundef 16) #9
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call173 = call i32 @regmap_write(ptr noundef %63, i32 noundef 221, i32 noundef 20) #9
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call.i371 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call.i372 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 193, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end178

if.end178:                                        ; preds = %if.then167, %if.end164.if.end178_crit_edge
  %gpio1_is_ext_spk_en179 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 7
  %68 = ptrtoint ptr %gpio1_is_ext_spk_en179 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %gpio1_is_ext_spk_en179, align 2, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool180.not = icmp eq i8 %69, 0
  br i1 %tobool180.not, label %if.end178.if.end186_crit_edge, label %if.then181

if.end178.if.end186_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.then181:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call.i373 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 192, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i374 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 193, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end186

if.end186:                                        ; preds = %if.then181, %if.end178.if.end186_crit_edge
  %jd_mode187 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 4
  %74 = ptrtoint ptr %jd_mode187 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %jd_mode187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool188.not = icmp eq i32 %75, 0
  br i1 %tobool188.not, label %if.end186.if.end209_crit_edge, label %if.then189

if.end186.if.end209_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then189:                                       ; preds = %if.end186
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call.i375 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 128, i32 noundef 49152, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %sysclk = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 12
  %78 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %sysclk, align 4
  %sysclk_src = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 13
  %79 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %sysclk_src, align 4
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call.i376 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 99, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call.i377 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 100, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i378 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 189, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call.i379 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 248, i32 noundef 56, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %88 = ptrtoint ptr %jd_mode187 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %jd_mode187, align 4
  %switch.tableidx = add i32 %89, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %90 = icmp ult i32 %switch.tableidx, 3
  br i1 %90, label %if.end209.sink.split, label %if.then189.if.end209_crit_edge

if.then189.if.end209_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.end209.sink.split:                             ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call.i380 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 148, i32 noundef 3, i32 noundef %switch.tableidx, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end209

if.end209:                                        ; preds = %if.end209.sink.split, %if.then189.if.end209_crit_edge, %if.end186.if.end209_crit_edge
  %dmic_en210 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 8
  %93 = ptrtoint ptr %dmic_en210 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dmic_en210, align 1, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool211.not = icmp eq i8 %94, 0
  br i1 %tobool211.not, label %if.end209.if.end255_crit_edge, label %if.then212

if.end209.if.end255_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

if.then212:                                       ; preds = %if.end209
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  %call.i383 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 192, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %dmic1_data_pin215 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 9
  %97 = ptrtoint ptr %dmic1_data_pin215 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dmic1_data_pin215, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.475)
  switch i32 %98, label %if.then212.sw.epilog230_crit_edge [
    i32 2, label %sw.bb216
    i32 1, label %sw.bb219
    i32 3, label %sw.bb224
  ]

if.then212.sw.epilog230_crit_edge:                ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog230

sw.bb216:                                         ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %call.i384 = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 117, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.bb219:                                         ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call.i385 = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 117, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call.i386 = call i32 @regmap_update_bits_base(ptr noundef %105, i32 noundef 192, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.bb224:                                         ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call.i387 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 117, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call.i388 = call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 192, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog230

sw.epilog230:                                     ; preds = %sw.bb224, %sw.bb219, %sw.bb216, %if.then212.sw.epilog230_crit_edge
  %dmic2_data_pin231 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 10
  %110 = ptrtoint ptr %dmic2_data_pin231 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dmic2_data_pin231, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.476)
  switch i32 %111, label %sw.epilog230.sw.epilog241_crit_edge [
    i32 2, label %sw.bb232
    i32 1, label %sw.bb235
  ]

sw.epilog230.sw.epilog241_crit_edge:              ; preds = %sw.epilog230
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog241

sw.bb232:                                         ; preds = %sw.epilog230
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 4
  %call.i389 = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 117, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog241

sw.bb235:                                         ; preds = %sw.epilog230
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %call.i390 = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 117, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call.i391 = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 192, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog241

sw.epilog241:                                     ; preds = %sw.bb235, %sw.bb232, %sw.epilog230.sw.epilog241_crit_edge
  %dmic3_data_pin242 = getelementptr inbounds %struct.rt5670_priv, ptr %call.i, i32 0, i32 11
  %119 = ptrtoint ptr %dmic3_data_pin242 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dmic3_data_pin242, align 4
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.477)
  switch i32 %120, label %sw.epilog241.if.end255_crit_edge [
    i32 3, label %sw.bb243
    i32 1, label %sw.epilog241.do.end251_crit_edge
    i32 2, label %sw.epilog241.do.end251_crit_edge398
  ]

sw.epilog241.do.end251_crit_edge398:              ; preds = %sw.epilog241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end251

sw.epilog241.do.end251_crit_edge:                 ; preds = %sw.epilog241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end251

sw.epilog241.if.end255_crit_edge:                 ; preds = %sw.epilog241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

sw.bb243:                                         ; preds = %sw.epilog241
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 4
  %call.i392 = call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 118, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %124 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap, align 4
  %call.i393 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 192, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end255

do.end251:                                        ; preds = %sw.epilog241.do.end251_crit_edge, %sw.epilog241.do.end251_crit_edge398
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #12
  br label %if.end255

if.end255:                                        ; preds = %do.end251, %sw.bb243, %sw.epilog241.if.end255_crit_edge, %if.end209.if.end255_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i394 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 1) #9
  %call260 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt5670, ptr noundef nonnull @rt5670_dai, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %err, label %if.end263

if.end263:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  %call.i395 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

err:                                              ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end263, %do.end130, %if.then116, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then116 ], [ -19, %do.end130 ], [ %call260, %err ], [ 0, %if.end263 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_i2c_remove(ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5670_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %0)
  %1 = icmp eq i32 %0, 108
  %2 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %2)
  %3 = icmp ult i32 %2, 249
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.478)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 2, label %for.end.cleanup_crit_edge23
    i32 3, label %for.end.cleanup_crit_edge24
    i32 10, label %for.end.cleanup_crit_edge25
    i32 11, label %for.end.cleanup_crit_edge26
    i32 12, label %for.end.cleanup_crit_edge27
    i32 14, label %for.end.cleanup_crit_edge28
    i32 15, label %for.end.cleanup_crit_edge29
    i32 25, label %for.end.cleanup_crit_edge30
    i32 26, label %for.end.cleanup_crit_edge31
    i32 27, label %for.end.cleanup_crit_edge32
    i32 28, label %for.end.cleanup_crit_edge33
    i32 29, label %for.end.cleanup_crit_edge34
    i32 31, label %for.end.cleanup_crit_edge35
    i32 30, label %for.end.cleanup_crit_edge36
    i32 32, label %for.end.cleanup_crit_edge37
    i32 38, label %for.end.cleanup_crit_edge38
    i32 39, label %for.end.cleanup_crit_edge39
    i32 40, label %for.end.cleanup_crit_edge40
    i32 41, label %for.end.cleanup_crit_edge41
    i32 42, label %for.end.cleanup_crit_edge42
    i32 43, label %for.end.cleanup_crit_edge43
    i32 44, label %for.end.cleanup_crit_edge44
    i32 45, label %for.end.cleanup_crit_edge45
    i32 46, label %for.end.cleanup_crit_edge46
    i32 47, label %for.end.cleanup_crit_edge47
    i32 48, label %for.end.cleanup_crit_edge48
    i32 49, label %for.end.cleanup_crit_edge49
    i32 50, label %for.end.cleanup_crit_edge50
    i32 51, label %for.end.cleanup_crit_edge51
    i32 52, label %for.end.cleanup_crit_edge52
    i32 53, label %for.end.cleanup_crit_edge53
    i32 54, label %for.end.cleanup_crit_edge54
    i32 55, label %for.end.cleanup_crit_edge55
    i32 56, label %for.end.cleanup_crit_edge56
    i32 59, label %for.end.cleanup_crit_edge57
    i32 60, label %for.end.cleanup_crit_edge58
    i32 61, label %for.end.cleanup_crit_edge59
    i32 62, label %for.end.cleanup_crit_edge60
    i32 69, label %for.end.cleanup_crit_edge61
    i32 76, label %for.end.cleanup_crit_edge62
    i32 79, label %for.end.cleanup_crit_edge63
    i32 82, label %for.end.cleanup_crit_edge64
    i32 83, label %for.end.cleanup_crit_edge65
    i32 97, label %for.end.cleanup_crit_edge66
    i32 98, label %for.end.cleanup_crit_edge67
    i32 99, label %for.end.cleanup_crit_edge68
    i32 100, label %for.end.cleanup_crit_edge69
    i32 101, label %for.end.cleanup_crit_edge70
    i32 102, label %for.end.cleanup_crit_edge71
    i32 106, label %for.end.cleanup_crit_edge72
    i32 108, label %for.end.cleanup_crit_edge73
    i32 111, label %for.end.cleanup_crit_edge74
    i32 112, label %for.end.cleanup_crit_edge75
    i32 113, label %for.end.cleanup_crit_edge76
    i32 114, label %for.end.cleanup_crit_edge77
    i32 115, label %for.end.cleanup_crit_edge78
    i32 116, label %for.end.cleanup_crit_edge79
    i32 117, label %for.end.cleanup_crit_edge80
    i32 118, label %for.end.cleanup_crit_edge81
    i32 119, label %for.end.cleanup_crit_edge82
    i32 120, label %for.end.cleanup_crit_edge83
    i32 121, label %for.end.cleanup_crit_edge84
    i32 127, label %for.end.cleanup_crit_edge85
    i32 128, label %for.end.cleanup_crit_edge86
    i32 129, label %for.end.cleanup_crit_edge87
    i32 130, label %for.end.cleanup_crit_edge88
    i32 131, label %for.end.cleanup_crit_edge89
    i32 132, label %for.end.cleanup_crit_edge90
    i32 133, label %for.end.cleanup_crit_edge91
    i32 134, label %for.end.cleanup_crit_edge92
    i32 135, label %for.end.cleanup_crit_edge93
    i32 137, label %for.end.cleanup_crit_edge94
    i32 138, label %for.end.cleanup_crit_edge95
    i32 139, label %for.end.cleanup_crit_edge96
    i32 140, label %for.end.cleanup_crit_edge97
    i32 141, label %for.end.cleanup_crit_edge98
    i32 151, label %for.end.cleanup_crit_edge99
    i32 152, label %for.end.cleanup_crit_edge100
    i32 153, label %for.end.cleanup_crit_edge101
    i32 142, label %for.end.cleanup_crit_edge102
    i32 143, label %for.end.cleanup_crit_edge103
    i32 144, label %for.end.cleanup_crit_edge104
    i32 145, label %for.end.cleanup_crit_edge105
    i32 147, label %for.end.cleanup_crit_edge106
    i32 148, label %for.end.cleanup_crit_edge107
    i32 149, label %for.end.cleanup_crit_edge108
    i32 154, label %for.end.cleanup_crit_edge109
    i32 155, label %for.end.cleanup_crit_edge110
    i32 156, label %for.end.cleanup_crit_edge111
    i32 157, label %for.end.cleanup_crit_edge112
    i32 158, label %for.end.cleanup_crit_edge113
    i32 174, label %for.end.cleanup_crit_edge114
    i32 175, label %for.end.cleanup_crit_edge115
    i32 176, label %for.end.cleanup_crit_edge116
    i32 177, label %for.end.cleanup_crit_edge117
    i32 178, label %for.end.cleanup_crit_edge118
    i32 179, label %for.end.cleanup_crit_edge119
    i32 180, label %for.end.cleanup_crit_edge120
    i32 181, label %for.end.cleanup_crit_edge121
    i32 182, label %for.end.cleanup_crit_edge122
    i32 187, label %for.end.cleanup_crit_edge123
    i32 189, label %for.end.cleanup_crit_edge124
    i32 190, label %for.end.cleanup_crit_edge125
    i32 191, label %for.end.cleanup_crit_edge126
    i32 192, label %for.end.cleanup_crit_edge127
    i32 193, label %for.end.cleanup_crit_edge128
    i32 194, label %for.end.cleanup_crit_edge129
    i32 205, label %for.end.cleanup_crit_edge130
    i32 206, label %for.end.cleanup_crit_edge131
    i32 207, label %for.end.cleanup_crit_edge132
    i32 208, label %for.end.cleanup_crit_edge133
    i32 209, label %for.end.cleanup_crit_edge134
    i32 211, label %for.end.cleanup_crit_edge135
    i32 212, label %for.end.cleanup_crit_edge136
    i32 214, label %for.end.cleanup_crit_edge137
    i32 217, label %for.end.cleanup_crit_edge138
    i32 218, label %for.end.cleanup_crit_edge139
    i32 219, label %for.end.cleanup_crit_edge140
    i32 220, label %for.end.cleanup_crit_edge141
    i32 221, label %for.end.cleanup_crit_edge142
    i32 230, label %for.end.cleanup_crit_edge143
    i32 231, label %for.end.cleanup_crit_edge144
    i32 236, label %for.end.cleanup_crit_edge145
    i32 237, label %for.end.cleanup_crit_edge146
    i32 238, label %for.end.cleanup_crit_edge147
    i32 239, label %for.end.cleanup_crit_edge148
    i32 248, label %for.end.cleanup_crit_edge149
    i32 249, label %for.end.cleanup_crit_edge150
    i32 250, label %for.end.cleanup_crit_edge151
    i32 224, label %for.end.cleanup_crit_edge152
    i32 225, label %for.end.cleanup_crit_edge153
    i32 226, label %for.end.cleanup_crit_edge154
    i32 227, label %for.end.cleanup_crit_edge155
    i32 228, label %for.end.cleanup_crit_edge156
    i32 251, label %for.end.cleanup_crit_edge157
    i32 252, label %for.end.cleanup_crit_edge158
    i32 253, label %for.end.cleanup_crit_edge159
    i32 254, label %for.end.cleanup_crit_edge160
    i32 255, label %for.end.cleanup_crit_edge161
  ]

for.end.cleanup_crit_edge161:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge160:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge159:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge158:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge157:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge156:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge155:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge154:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge153:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge152:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge151:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge150:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge149:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge148:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge147:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge146:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup_crit_edge145:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

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

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %for.end.cleanup_crit_edge48, %for.end.cleanup_crit_edge49, %for.end.cleanup_crit_edge50, %for.end.cleanup_crit_edge51, %for.end.cleanup_crit_edge52, %for.end.cleanup_crit_edge53, %for.end.cleanup_crit_edge54, %for.end.cleanup_crit_edge55, %for.end.cleanup_crit_edge56, %for.end.cleanup_crit_edge57, %for.end.cleanup_crit_edge58, %for.end.cleanup_crit_edge59, %for.end.cleanup_crit_edge60, %for.end.cleanup_crit_edge61, %for.end.cleanup_crit_edge62, %for.end.cleanup_crit_edge63, %for.end.cleanup_crit_edge64, %for.end.cleanup_crit_edge65, %for.end.cleanup_crit_edge66, %for.end.cleanup_crit_edge67, %for.end.cleanup_crit_edge68, %for.end.cleanup_crit_edge69, %for.end.cleanup_crit_edge70, %for.end.cleanup_crit_edge71, %for.end.cleanup_crit_edge72, %for.end.cleanup_crit_edge73, %for.end.cleanup_crit_edge74, %for.end.cleanup_crit_edge75, %for.end.cleanup_crit_edge76, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %for.end.cleanup_crit_edge84, %for.end.cleanup_crit_edge85, %for.end.cleanup_crit_edge86, %for.end.cleanup_crit_edge87, %for.end.cleanup_crit_edge88, %for.end.cleanup_crit_edge89, %for.end.cleanup_crit_edge90, %for.end.cleanup_crit_edge91, %for.end.cleanup_crit_edge92, %for.end.cleanup_crit_edge93, %for.end.cleanup_crit_edge94, %for.end.cleanup_crit_edge95, %for.end.cleanup_crit_edge96, %for.end.cleanup_crit_edge97, %for.end.cleanup_crit_edge98, %for.end.cleanup_crit_edge99, %for.end.cleanup_crit_edge100, %for.end.cleanup_crit_edge101, %for.end.cleanup_crit_edge102, %for.end.cleanup_crit_edge103, %for.end.cleanup_crit_edge104, %for.end.cleanup_crit_edge105, %for.end.cleanup_crit_edge106, %for.end.cleanup_crit_edge107, %for.end.cleanup_crit_edge108, %for.end.cleanup_crit_edge109, %for.end.cleanup_crit_edge110, %for.end.cleanup_crit_edge111, %for.end.cleanup_crit_edge112, %for.end.cleanup_crit_edge113, %for.end.cleanup_crit_edge114, %for.end.cleanup_crit_edge115, %for.end.cleanup_crit_edge116, %for.end.cleanup_crit_edge117, %for.end.cleanup_crit_edge118, %for.end.cleanup_crit_edge119, %for.end.cleanup_crit_edge120, %for.end.cleanup_crit_edge121, %for.end.cleanup_crit_edge122, %for.end.cleanup_crit_edge123, %for.end.cleanup_crit_edge124, %for.end.cleanup_crit_edge125, %for.end.cleanup_crit_edge126, %for.end.cleanup_crit_edge127, %for.end.cleanup_crit_edge128, %for.end.cleanup_crit_edge129, %for.end.cleanup_crit_edge130, %for.end.cleanup_crit_edge131, %for.end.cleanup_crit_edge132, %for.end.cleanup_crit_edge133, %for.end.cleanup_crit_edge134, %for.end.cleanup_crit_edge135, %for.end.cleanup_crit_edge136, %for.end.cleanup_crit_edge137, %for.end.cleanup_crit_edge138, %for.end.cleanup_crit_edge139, %for.end.cleanup_crit_edge140, %for.end.cleanup_crit_edge141, %for.end.cleanup_crit_edge142, %for.end.cleanup_crit_edge143, %for.end.cleanup_crit_edge144, %for.end.cleanup_crit_edge145, %for.end.cleanup_crit_edge146, %for.end.cleanup_crit_edge147, %for.end.cleanup_crit_edge148, %for.end.cleanup_crit_edge149, %for.end.cleanup_crit_edge150, %for.end.cleanup_crit_edge151, %for.end.cleanup_crit_edge152, %for.end.cleanup_crit_edge153, %for.end.cleanup_crit_edge154, %for.end.cleanup_crit_edge155, %for.end.cleanup_crit_edge156, %for.end.cleanup_crit_edge157, %for.end.cleanup_crit_edge158, %for.end.cleanup_crit_edge159, %for.end.cleanup_crit_edge160, %for.end.cleanup_crit_edge161, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ], [ true, %for.end.cleanup_crit_edge48 ], [ true, %for.end.cleanup_crit_edge49 ], [ true, %for.end.cleanup_crit_edge50 ], [ true, %for.end.cleanup_crit_edge51 ], [ true, %for.end.cleanup_crit_edge52 ], [ true, %for.end.cleanup_crit_edge53 ], [ true, %for.end.cleanup_crit_edge54 ], [ true, %for.end.cleanup_crit_edge55 ], [ true, %for.end.cleanup_crit_edge56 ], [ true, %for.end.cleanup_crit_edge57 ], [ true, %for.end.cleanup_crit_edge58 ], [ true, %for.end.cleanup_crit_edge59 ], [ true, %for.end.cleanup_crit_edge60 ], [ true, %for.end.cleanup_crit_edge61 ], [ true, %for.end.cleanup_crit_edge62 ], [ true, %for.end.cleanup_crit_edge63 ], [ true, %for.end.cleanup_crit_edge64 ], [ true, %for.end.cleanup_crit_edge65 ], [ true, %for.end.cleanup_crit_edge66 ], [ true, %for.end.cleanup_crit_edge67 ], [ true, %for.end.cleanup_crit_edge68 ], [ true, %for.end.cleanup_crit_edge69 ], [ true, %for.end.cleanup_crit_edge70 ], [ true, %for.end.cleanup_crit_edge71 ], [ true, %for.end.cleanup_crit_edge72 ], [ true, %for.end.cleanup_crit_edge73 ], [ true, %for.end.cleanup_crit_edge74 ], [ true, %for.end.cleanup_crit_edge75 ], [ true, %for.end.cleanup_crit_edge76 ], [ true, %for.end.cleanup_crit_edge77 ], [ true, %for.end.cleanup_crit_edge78 ], [ true, %for.end.cleanup_crit_edge79 ], [ true, %for.end.cleanup_crit_edge80 ], [ true, %for.end.cleanup_crit_edge81 ], [ true, %for.end.cleanup_crit_edge82 ], [ true, %for.end.cleanup_crit_edge83 ], [ true, %for.end.cleanup_crit_edge84 ], [ true, %for.end.cleanup_crit_edge85 ], [ true, %for.end.cleanup_crit_edge86 ], [ true, %for.end.cleanup_crit_edge87 ], [ true, %for.end.cleanup_crit_edge88 ], [ true, %for.end.cleanup_crit_edge89 ], [ true, %for.end.cleanup_crit_edge90 ], [ true, %for.end.cleanup_crit_edge91 ], [ true, %for.end.cleanup_crit_edge92 ], [ true, %for.end.cleanup_crit_edge93 ], [ true, %for.end.cleanup_crit_edge94 ], [ true, %for.end.cleanup_crit_edge95 ], [ true, %for.end.cleanup_crit_edge96 ], [ true, %for.end.cleanup_crit_edge97 ], [ true, %for.end.cleanup_crit_edge98 ], [ true, %for.end.cleanup_crit_edge99 ], [ true, %for.end.cleanup_crit_edge100 ], [ true, %for.end.cleanup_crit_edge101 ], [ true, %for.end.cleanup_crit_edge102 ], [ true, %for.end.cleanup_crit_edge103 ], [ true, %for.end.cleanup_crit_edge104 ], [ true, %for.end.cleanup_crit_edge105 ], [ true, %for.end.cleanup_crit_edge106 ], [ true, %for.end.cleanup_crit_edge107 ], [ true, %for.end.cleanup_crit_edge108 ], [ true, %for.end.cleanup_crit_edge109 ], [ true, %for.end.cleanup_crit_edge110 ], [ true, %for.end.cleanup_crit_edge111 ], [ true, %for.end.cleanup_crit_edge112 ], [ true, %for.end.cleanup_crit_edge113 ], [ true, %for.end.cleanup_crit_edge114 ], [ true, %for.end.cleanup_crit_edge115 ], [ true, %for.end.cleanup_crit_edge116 ], [ true, %for.end.cleanup_crit_edge117 ], [ true, %for.end.cleanup_crit_edge118 ], [ true, %for.end.cleanup_crit_edge119 ], [ true, %for.end.cleanup_crit_edge120 ], [ true, %for.end.cleanup_crit_edge121 ], [ true, %for.end.cleanup_crit_edge122 ], [ true, %for.end.cleanup_crit_edge123 ], [ true, %for.end.cleanup_crit_edge124 ], [ true, %for.end.cleanup_crit_edge125 ], [ true, %for.end.cleanup_crit_edge126 ], [ true, %for.end.cleanup_crit_edge127 ], [ true, %for.end.cleanup_crit_edge128 ], [ true, %for.end.cleanup_crit_edge129 ], [ true, %for.end.cleanup_crit_edge130 ], [ true, %for.end.cleanup_crit_edge131 ], [ true, %for.end.cleanup_crit_edge132 ], [ true, %for.end.cleanup_crit_edge133 ], [ true, %for.end.cleanup_crit_edge134 ], [ true, %for.end.cleanup_crit_edge135 ], [ true, %for.end.cleanup_crit_edge136 ], [ true, %for.end.cleanup_crit_edge137 ], [ true, %for.end.cleanup_crit_edge138 ], [ true, %for.end.cleanup_crit_edge139 ], [ true, %for.end.cleanup_crit_edge140 ], [ true, %for.end.cleanup_crit_edge141 ], [ true, %for.end.cleanup_crit_edge142 ], [ true, %for.end.cleanup_crit_edge143 ], [ true, %for.end.cleanup_crit_edge144 ], [ true, %for.end.cleanup_crit_edge145 ], [ true, %for.end.cleanup_crit_edge146 ], [ true, %for.end.cleanup_crit_edge147 ], [ true, %for.end.cleanup_crit_edge148 ], [ true, %for.end.cleanup_crit_edge149 ], [ true, %for.end.cleanup_crit_edge150 ], [ true, %for.end.cleanup_crit_edge151 ], [ true, %for.end.cleanup_crit_edge152 ], [ true, %for.end.cleanup_crit_edge153 ], [ true, %for.end.cleanup_crit_edge154 ], [ true, %for.end.cleanup_crit_edge155 ], [ true, %for.end.cleanup_crit_edge156 ], [ true, %for.end.cleanup_crit_edge157 ], [ true, %for.end.cleanup_crit_edge158 ], [ true, %for.end.cleanup_crit_edge159 ], [ true, %for.end.cleanup_crit_edge160 ], [ true, %for.end.cleanup_crit_edge161 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5670_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %0)
  %1 = icmp eq i32 %0, 108
  %2 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %2)
  %3 = icmp ult i32 %2, 249
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %entry
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.479)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 50, label %for.end.cleanup_crit_edge23
    i32 53, label %for.end.cleanup_crit_edge24
    i32 56, label %for.end.cleanup_crit_edge25
    i32 108, label %for.end.cleanup_crit_edge26
    i32 135, label %for.end.cleanup_crit_edge27
    i32 10, label %for.end.cleanup_crit_edge28
    i32 11, label %for.end.cleanup_crit_edge29
    i32 12, label %for.end.cleanup_crit_edge30
    i32 148, label %for.end.cleanup_crit_edge31
    i32 149, label %for.end.cleanup_crit_edge32
    i32 158, label %for.end.cleanup_crit_edge33
    i32 174, label %for.end.cleanup_crit_edge34
    i32 176, label %for.end.cleanup_crit_edge35
    i32 180, label %for.end.cleanup_crit_edge36
    i32 190, label %for.end.cleanup_crit_edge37
    i32 191, label %for.end.cleanup_crit_edge38
    i32 219, label %for.end.cleanup_crit_edge39
    i32 224, label %for.end.cleanup_crit_edge40
    i32 225, label %for.end.cleanup_crit_edge41
    i32 226, label %for.end.cleanup_crit_edge42
    i32 227, label %for.end.cleanup_crit_edge43
    i32 228, label %for.end.cleanup_crit_edge44
    i32 253, label %for.end.cleanup_crit_edge45
    i32 254, label %for.end.cleanup_crit_edge46
    i32 255, label %for.end.cleanup_crit_edge47
  ]

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

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_probe(ptr noundef %component) #0 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 0) #9
  %and = and i32 %call2, 6
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.480)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge17
    i32 2, label %sw.bb5
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  %call3 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @rt5670_specific_dapm_widgets, i32 noundef 7) #9
  %call4 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5670_specific_dapm_routes, i32 noundef 10) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @rt5672_specific_dapm_widgets, i32 noundef 5) #9
  %call7 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @rt5672_specific_dapm_routes, i32 noundef 6) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.427) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %component, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt5670_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #9
  %jack = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jack, align 4
  %hp_gpio = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 3
  tail call void @snd_soc_jack_free_gpios(ptr noundef %7, i32 noundef 1, ptr noundef %hp_gpio) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_suspend(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 1
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
define internal i32 @rt5670_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 1
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
define internal i32 @rt5670_set_codec_sysclk(ptr noundef %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %4 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.481)
  switch i32 %clk_id, label %do.end [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.epilog
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.445, i32 noundef %clk_id) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 128, i32 noundef 49152, i32 noundef 32768) #9
  %sysclk = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %freq, ptr %sysclk, align 4
  br label %do.body6

if.then:                                          ; preds = %sw.bb1, %entry.if.then_crit_edge
  %reg_val.0.ph = phi i32 [ %clk_id, %entry.if.then_crit_edge ], [ 16384, %sw.bb1 ]
  %call529 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 128, i32 noundef 49152, i32 noundef %reg_val.0.ph) #9
  %sysclk30 = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %sysclk30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk30, align 4
  %sysclk_src = getelementptr inbounds %struct.rt5670_priv, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %clk_id, ptr %sysclk_src, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.then, %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5670_set_codec_sysclk.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5670_set_codec_sysclk, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !1068

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5670_set_codec_sysclk.__UNIQUE_ID_ddebug301, ptr noundef %9, ptr noundef nonnull @.str.448, i32 noundef %freq, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then10 ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.482)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
    i32 0, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
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
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 145, i32 noundef 3072, i32 noundef 0) #9
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 1) #9
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 7, i32 noundef 5) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 49176, i32 noundef 0) #9
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 7, i32 noundef 3) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %jd_mode = getelementptr inbounds %struct.rt5670_priv, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %jd_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jd_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  %. = select i1 %tobool11.not, i32 0, i32 10240
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 59416, i32 noundef %.) #9
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 250, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt5670_dac1_playback_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dac1_playback_switch_l = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %dac1_playback_switch_l to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac1_playback_switch_l, align 2, !range !1067
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  %dac1_playback_switch_r = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 27
  %10 = ptrtoint ptr %dac1_playback_switch_r to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dac1_playback_switch_r, align 1, !range !1067
  %12 = zext i8 %11 to i32
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_dac1_playback_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dac1_playback_switch_l = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %dac1_playback_switch_l to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dac1_playback_switch_l, align 2, !range !1067
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp = icmp eq i32 %10, %8
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dac1_playback_switch_r = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 27
  %11 = ptrtoint ptr %dac1_playback_switch_r to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dac1_playback_switch_r, align 1, !range !1067
  %13 = zext i8 %12 to i32
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp7 = icmp eq i32 %15, %13
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11 = icmp ne i32 %10, 0
  %frombool = zext i1 %tobool11 to i8
  %16 = ptrtoint ptr %dac1_playback_switch_l to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %dac1_playback_switch_l, align 2
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15 = icmp ne i32 %18, 0
  %dac1_playback_switch_r16 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 27
  %frombool17 = zext i1 %tobool15 to i8
  %19 = ptrtoint ptr %dac1_playback_switch_r16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool17, ptr %dac1_playback_switch_r16, align 1
  %dac1_mixl_dac1_switch.i = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 24
  %20 = ptrtoint ptr %dac1_mixl_dac1_switch.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dac1_mixl_dac1_switch.i, align 4, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %spec.select.i = select i1 %tobool11, i32 64, i32 16448
  %val.0.i = select i1 %tobool.not.i, i32 16448, i32 %spec.select.i
  %dac1_mixr_dac1_switch.i = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 25
  %22 = ptrtoint ptr %dac1_mixr_dac1_switch.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dac1_mixr_dac1_switch.i, align 1, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i = icmp eq i8 %23, 0
  %and6.i = and i32 %val.0.i, 16384
  %spec.select14.i = select i1 %tobool15, i32 %and6.i, i32 %val.0.i
  %val.1.i = select i1 %tobool2.not.i, i32 %val.0.i, i32 %spec.select14.i
  %regmap.i = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 41, i32 noundef 16448, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

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
  %sysclk = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.287) #12
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
define internal i32 @rt5670_bst1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.483)
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
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 64, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 64, i32 noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_bst2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.484)
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
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 16, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 16, i32 noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_hp_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.485)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 145, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 251, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 99, i32 noundef 16424, i32 noundef 16424, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 143, i32 noundef 12544) #9
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 142, i32 noundef 32777) #9
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 375, i32 noundef 40704) #9
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #9
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 142, i32 noundef 32793) #9
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap16 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap16, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 142, i32 noundef 4) #9
  tail call void @msleep(i32 noundef 30) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.486)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 311, i32 noundef 46080) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 144, i32 noundef 1906) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 142, i32 noundef 32861) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 142, i32 noundef 33565) #9
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 251, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 2, i32 noundef 32896, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @msleep(i32 noundef 80) #9
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 142, i32 noundef 32793) #9
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap16 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap16, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 311, i32 noundef 46080) #9
  %23 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap16, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 144, i32 noundef 1906) #9
  %25 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap16, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 142, i32 noundef 32829) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  %37 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap16, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 142, i32 noundef 33565) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  %49 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap16, align 4
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 2, i32 noundef 32896, i32 noundef 32896, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @msleep(i32 noundef 20) #9
  %51 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap16, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 251, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap16, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 142, i32 noundef 32793) #9
  %55 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap16, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 144, i32 noundef 1799) #9
  %57 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap16, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 311, i32 noundef 64512) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb, %entry.cleanup_crit_edge
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
define internal i32 @rt5670_put_dac1_mix_dac1_switch(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #9
  %dev.i = getelementptr i8, ptr %call.i, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dac1_mixl_dac1_switch = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 24
  %frombool = zext i1 %tobool to i8
  %11 = ptrtoint ptr %dac1_mixl_dac1_switch to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %dac1_mixl_dac1_switch, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dac1_mixr_dac1_switch = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 25
  %frombool5 = zext i1 %tobool to i8
  %12 = ptrtoint ptr %dac1_mixr_dac1_switch to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool5, ptr %dac1_mixr_dac1_switch, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = tail call i32 @snd_soc_dapm_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dac1_mixl_dac1_switch.i = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 24
  %13 = ptrtoint ptr %dac1_mixl_dac1_switch.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dac1_mixl_dac1_switch.i, align 4, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end9.if.end.i_crit_edge, label %land.lhs.true.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dac1_playback_switch_l.i = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 26
  %15 = ptrtoint ptr %dac1_playback_switch_l.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dac1_playback_switch_l.i, align 2, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.i = icmp eq i8 %16, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 16448, i32 64
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end9.if.end.i_crit_edge
  %val.0.i = phi i32 [ 16448, %if.end9.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %dac1_mixr_dac1_switch.i = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 25
  %17 = ptrtoint ptr %dac1_mixr_dac1_switch.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dac1_mixr_dac1_switch.i, align 1, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %if.end.i.rt5670_update_ad_da_mixer_dac1_m_bits.exit_crit_edge, label %land.lhs.true3.i

if.end.i.rt5670_update_ad_da_mixer_dac1_m_bits.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt5670_update_ad_da_mixer_dac1_m_bits.exit

land.lhs.true3.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dac1_playback_switch_r.i = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 27
  %19 = ptrtoint ptr %dac1_playback_switch_r.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dac1_playback_switch_r.i, align 1, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  %and6.i = and i32 %val.0.i, 16384
  %spec.select14.i = select i1 %tobool4.not.i, i32 %val.0.i, i32 %and6.i
  br label %rt5670_update_ad_da_mixer_dac1_m_bits.exit

rt5670_update_ad_da_mixer_dac1_m_bits.exit:       ; preds = %land.lhs.true3.i, %if.end.i.rt5670_update_ad_da_mixer_dac1_m_bits.exit_crit_edge
  %val.1.i = phi i32 [ %val.0.i, %if.end.i.rt5670_update_ad_da_mixer_dac1_m_bits.exit_crit_edge ], [ %spec.select14.i, %land.lhs.true3.i ]
  %regmap.i = getelementptr inbounds %struct.rt5670_priv, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 41, i32 noundef 16448, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %rt5670_update_ad_da_mixer_dac1_m_bits.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rt5670_update_ad_da_mixer_dac1_m_bits.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

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
  %switch.shifted = lshr i16 1807, %switch.maskindex
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
  %switch.gep15 = getelementptr inbounds [11 x i32], ptr @switch.table.is_using_asrc.473, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %switch.load) #9
  %shr = lshr i32 %call8, %switch.load16
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @can_use_asrc(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %sysclk = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %lrck = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lrck, align 4
  %mul = mul i32 %9, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp = icmp sgt i32 %7, %mul
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %sysclk_src = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_spk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %gpio1_is_ext_spk_en = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %gpio1_is_ext_spk_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpio1_is_ext_spk_en, align 2, !range !1067
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.487)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %if.end.cleanup.sink.split_crit_edge
  %.sink10 = phi i32 [ 0, %sw.bb3 ], [ %event, %if.end.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 193, i32 noundef 2, i32 noundef %.sink10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_free_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_set_dai_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
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
  %pll_src = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 17
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
  %pll_in = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 18
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
  %pll_out = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 19
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5670_set_dai_pll.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5670_set_dai_pll, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !1068

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5670_set_dai_pll.__UNIQUE_ID_ddebug302, ptr noundef %14, ptr noundef nonnull @.str.452) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %pll_in13 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 18
  %15 = ptrtoint ptr %pll_in13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pll_in13, align 4
  %pll_out14 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %pll_out14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pll_out14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %17 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.488)
  switch i32 %source, label %do.end31 [
    i32 0, label %if.end16.sw.epilog33_crit_edge
    i32 1, label %if.end16.sw.bb18_crit_edge
    i32 2, label %if.end16.sw.bb18_crit_edge123
    i32 3, label %if.end16.sw.bb18_crit_edge124
    i32 4, label %if.end16.sw.bb18_crit_edge125
  ]

if.end16.sw.bb18_crit_edge125:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end16.sw.bb18_crit_edge124:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end16.sw.bb18_crit_edge123:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end16.sw.bb18_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.end16.sw.epilog33_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog33

sw.bb18:                                          ; preds = %if.end16.sw.bb18_crit_edge, %if.end16.sw.bb18_crit_edge123, %if.end16.sw.bb18_crit_edge124, %if.end16.sw.bb18_crit_edge125
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.489)
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.453, i32 noundef %19) #12
  br label %cleanup

do.end31:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.455, i32 noundef %source) #12
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.458, i32 noundef %freq_in) #12
  br label %cleanup

do.body42:                                        ; preds = %sw.epilog33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5670_set_dai_pll.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5670_set_dai_pll, %if.then54)) #9
          to label %do.end62 [label %if.then54], !srcloc !1068

if.then54:                                        ; preds = %do.body42
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pll_code, align 4, !range !1067
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
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5670_set_dai_pll.__UNIQUE_ID_ddebug303, ptr noundef %28, ptr noundef nonnull @.str.460, i32 noundef %31, i32 noundef %cond, i32 noundef %35, i32 noundef %37) #9
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
  %43 = load i8, ptr %pll_code, align 4, !range !1067
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
  %pll_in81 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 18
  %47 = ptrtoint ptr %pll_in81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %freq_in, ptr %pll_in81, align 4
  %pll_out82 = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 19
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
define internal i32 @rt5670_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5670_set_bclk_ratio.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5670_set_bclk_ratio, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !1068

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5670_set_bclk_ratio.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.461, i32 noundef %ratio) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %rem = urem i32 %ratio, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp6 = icmp eq i32 %rem, 0
  %. = select i1 %cmp6, i32 2048, i32 0
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 252, i32 noundef 2048, i32 noundef %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.490)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %reg_val.0 = phi i32 [ 32768, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 4
  %arrayidx5 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %arrayidx5, align 4
  %and6 = and i32 %fmt, 3840
  %11 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.491)
  switch i32 %and6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog10_crit_edge
    i32 768, label %sw.bb7
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or8 = or i32 %reg_val.0, 128
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb7, %sw.epilog.sw.epilog10_crit_edge
  %reg_val.1 = phi i32 [ %or8, %sw.bb7 ], [ %reg_val.0, %sw.epilog.sw.epilog10_crit_edge ]
  %and11 = and i32 %fmt, 15
  %12 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.492)
  switch i32 %and11, label %sw.epilog10.cleanup_crit_edge [
    i32 1, label %sw.epilog10.sw.epilog19_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog10.sw.epilog19_crit_edge:                ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog19

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %reg_val.1, 1
  br label %sw.epilog19

sw.bb14:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %reg_val.1, 2
  br label %sw.epilog19

sw.bb16:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #11
  %or17 = or i32 %reg_val.1, 3
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.epilog10.sw.epilog19_crit_edge
  %reg_val.2 = phi i32 [ %or17, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %reg_val.1, %sw.epilog10.sw.epilog19_crit_edge ]
  %id20 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %13 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id20, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.493)
  switch i32 %14, label %do.end [
    i32 0, label %sw.bb21
    i32 1, label %sw.bb23
  ]

sw.bb21:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 32899, i32 noundef %reg_val.2) #9
  br label %cleanup

sw.bb23:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 32899, i32 noundef %reg_val.2) #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.453, i32 noundef %14) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb23, %sw.bb21, %sw.epilog10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog10.cleanup_crit_edge ], [ 0, %sw.bb23 ], [ 0, %sw.bb21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = or i32 %rx_mask, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %val.0 = select i1 %3, i32 0, i32 16384
  %4 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.494)
  switch i32 %slots, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 6, label %sw.bb4
    i32 8, label %sw.bb6
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or3 = or i32 %val.0, 4096
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or5 = or i32 %val.0, 8192
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or7 = or i32 %val.0, 12288
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %val.1 = phi i32 [ %val.0, %entry.sw.epilog_crit_edge ], [ %or7, %sw.bb6 ], [ %or5, %sw.bb4 ], [ %or3, %sw.bb ]
  %5 = add i32 %slot_width, -16
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 30)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.495)
  switch i32 %6, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 2, label %sw.bb10
    i32 4, label %sw.bb12
    i32 0, label %sw.epilog.sw.epilog15_crit_edge
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or9 = or i32 %val.1, 1024
  br label %sw.epilog15

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or11 = or i32 %val.1, 2048
  br label %sw.epilog15

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %val.1, 3072
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.epilog.sw.epilog15_crit_edge
  %val.2 = phi i32 [ %val.1, %sw.epilog.sw.epilog15_crit_edge ], [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 119, i32 noundef 31744, i32 noundef %val.2) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog15, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5670_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 14, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %sysclk = getelementptr inbounds %struct.rt5670_priv, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sysclk, align 4
  %13 = load i32, ptr %id, align 4
  %arrayidx5 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 14, i32 %13
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
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %arrayidx9 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 14, i32 %19
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.464, i32 noundef %21, i32 noundef %19) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.467, i32 noundef %call11) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call11)
  %cmp19 = icmp ugt i32 %call11, 32
  %conv = zext i1 %cmp19 to i32
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %arrayidx22 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 14, i32 %25
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %shl = shl nuw nsw i32 32, %conv
  %mul = mul i32 %27, %shl
  %arrayidx24 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 15, i32 %25
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %arrayidx24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5670_hw_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5670_hw_params, %if.then29)) #9
          to label %do.body40 [label %if.then29], !srcloc !1068

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %29 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev30, align 4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %arrayidx33 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 15, i32 %32
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.rt5670_priv, ptr %5, i32 0, i32 14, i32 %32
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5670_hw_params.__UNIQUE_ID_ddebug299, ptr noundef %30, ptr noundef nonnull @.str.469, i32 noundef %34, i32 noundef %36) #9
  br label %do.body40

do.body40:                                        ; preds = %if.then29, %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt5670_hw_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt5670_hw_params, %if.then52)) #9
          to label %do.end57 [label %if.then52], !srcloc !1068

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %37 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev53, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt5670_hw_params.__UNIQUE_ID_ddebug300, ptr noundef %38, ptr noundef nonnull @.str.470, i32 noundef %conv, i32 noundef %call6, i32 noundef %40) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body40
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end57.if.then.i.i.i_crit_edge

do.end57.if.then.i.i.i_crit_edge:                 ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end57.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end57.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %42, %do.end57.if.then.i.i.i_crit_edge ], [ %45, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !1069
  %add.i.i.i = or i32 %43, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end57
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1.i.i.i = icmp eq i32 %45, 0
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
  %46 = add i32 %call1.i, -8
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %48 = icmp ult i32 %47, 5
  br i1 %48, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %47 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %49 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %switch.lobit.not = icmp eq i8 %49, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt5670_hw_params, i32 0, i32 %47
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load = load i32, ptr %switch.gep, align 4
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.496)
  switch i32 %52, label %do.end79 [
    i32 0, label %sw.bb64
    i32 1, label %sw.bb70
  ]

sw.bb64:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %shl65 = select i1 %cmp19, i32 32768, i32 0
  %shl66 = shl i32 %call6, 12
  %or67 = or i32 %shl65, %shl66
  %call68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 112, i32 noundef 12, i32 noundef %switch.load) #9
  %call69 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 61440, i32 noundef %or67) #9
  br label %cleanup

sw.bb70:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %shl71 = select i1 %cmp19, i32 2048, i32 0
  %shl72 = shl i32 %call6, 8
  %or73 = or i32 %shl71, %shl72
  %call74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 113, i32 noundef 12, i32 noundef %switch.load) #9
  %call75 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 115, i32 noundef 3840, i32 noundef %or73) #9
  br label %cleanup

do.end79:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.453, i32 noundef %52) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %sw.bb70, %sw.bb64, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %do.end79 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %sw.bb70 ], [ 0, %sw.bb64 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
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
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 590)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 590)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !466, !468, !469, !471, !472, !474, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !576, !577, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !896, !898, !900, !902, !904, !906, !908, !910, !912, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !947, !948, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !996, !997, !998, !1000, !1001, !1002, !1004, !1006, !1008, !1010, !1012, !1013, !1014, !1016, !1017, !1018, !1020, !1021, !1022, !1024, !1025, !1026, !1028, !1029, !1031, !1032, !1033, !1035, !1036, !1037, !1039, !1040, !1041, !1042, !1044, !1045, !1046, !1048, !1049, !1051, !1052, !1054, !1055}
!llvm.module.flags = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!llvm.ident = !{!1065}

!0 = !{ptr @__param_quirk, !1, !"__param_quirk", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt5670.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_quirktype297, !1, !"__UNIQUE_ID_quirktype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_quirk298, !4, !"__UNIQUE_ID_quirk298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt5670.c", i32 50, i32 1}
!5 = !{ptr @__ksymtab_rt5670_jack_suspend, !6, !"__ksymtab_rt5670_jack_suspend", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt5670.c", i32 486, i32 1}
!7 = !{ptr @__ksymtab_rt5670_jack_resume, !8, !"__ksymtab_rt5670_jack_resume", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt5670.c", i32 495, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt5670.c", i32 585, i32 25}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/rt5670.c", i32 596, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rt5670_set_jack_detect._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @rt5670_set_jack_detect._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_rt5670_set_jack_detect, !20, !"__ksymtab_rt5670_set_jack_detect", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt5670.c", i32 602, i32 1}
!21 = !{ptr @__ksymtab_rt5670_sel_asrc_clk_src, !22, !"__ksymtab_rt5670_sel_asrc_clk_src", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/rt5670.c", i32 919, i32 1}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/rt5670.c", i32 3037, i32 10}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt5670.c", i32 3039, i32 10}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt5670.c", i32 3041, i32 10}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt5670.c", i32 3043, i32 10}
!31 = !{ptr @__ksymtab_rt5670_components, !32, !"__ksymtab_rt5670_components", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt5670.c", i32 3047, i32 1}
!33 = !{ptr @__initcall__kmod_snd_soc_rt5670__305_3342_rt5670_i2c_driver_init6, !34, !"__initcall__kmod_snd_soc_rt5670__305_3342_rt5670_i2c_driver_init6", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/rt5670.c", i32 3342, i32 1}
!35 = !{ptr @__exitcall_rt5670_i2c_driver_exit, !34, !"__exitcall_rt5670_i2c_driver_exit", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_description306, !37, !"__UNIQUE_ID_description306", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt5670.c", i32 3344, i32 1}
!38 = !{ptr @__UNIQUE_ID_author307, !39, !"__UNIQUE_ID_author307", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt5670.c", i32 3345, i32 1}
!40 = !{ptr @__UNIQUE_ID_file308, !41, !"__UNIQUE_ID_file308", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt5670.c", i32 3346, i32 1}
!42 = !{ptr @__UNIQUE_ID_license309, !41, !"__UNIQUE_ID_license309", i1 false, i1 false}
!43 = !{ptr @rt5670_quirk, !44, !"rt5670_quirk", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt5670.c", i32 47, i32 22}
!45 = !{ptr @quirk_override, !46, !"quirk_override", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/rt5670.c", i32 48, i32 21}
!47 = !{ptr @__param_str_quirk, !1, !"__param_str_quirk", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt5670.c", i32 438, i32 39}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt5670.c", i32 551, i32 5}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rt5670_irq_detection._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rt5670_irq_detection._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/rt5670.c", i32 2901, i32 12}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/rt5670.c", i32 2913, i32 12}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/rt5670.c", i32 2925, i32 12}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt5670.c", i32 2937, i32 12}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt5670.c", i32 2961, i32 12}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt5670.c", i32 2973, i32 12}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt5670.c", i32 2985, i32 12}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt5670.c", i32 2997, i32 12}
!71 = distinct !{null, !72, !"dmi_platform_intel_quirks", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt5670.c", i32 2898, i32 35}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt5670.c", i32 3334, i32 11}
!75 = !{ptr @rt5670_i2c_driver, !76, !"rt5670_i2c_driver", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt5670.c", i32 3332, i32 26}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt5670.c", i32 3066, i32 3}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rt5670_i2c_probe._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @rt5670_i2c_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt5670.c", i32 3073, i32 3}
!85 = !{ptr @rt5670_i2c_probe._entry.25, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rt5670_i2c_probe._entry_ptr.27, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt5670.c", i32 3077, i32 3}
!89 = !{ptr @rt5670_i2c_probe._entry.28, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rt5670_i2c_probe._entry_ptr.30, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt5670.c", i32 3081, i32 3}
!93 = !{ptr @rt5670_i2c_probe._entry.31, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rt5670_i2c_probe._entry_ptr.33, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt5670.c", i32 3085, i32 3}
!97 = !{ptr @rt5670_i2c_probe._entry.34, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rt5670_i2c_probe._entry_ptr.36, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/rt5670.c", i32 3089, i32 3}
!101 = !{ptr @rt5670_i2c_probe._entry.37, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rt5670_i2c_probe._entry_ptr.39, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/rt5670.c", i32 3093, i32 3}
!105 = !{ptr @rt5670_i2c_probe._entry.40, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rt5670_i2c_probe._entry_ptr.42, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/rt5670.c", i32 3097, i32 3}
!109 = !{ptr @rt5670_i2c_probe._entry.43, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rt5670_i2c_probe._entry_ptr.45, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/rt5670.c", i32 3101, i32 3}
!113 = !{ptr @rt5670_i2c_probe._entry.46, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @rt5670_i2c_probe._entry_ptr.48, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/rt5670.c", i32 3105, i32 3}
!117 = !{ptr @rt5670_i2c_probe._entry.49, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @rt5670_i2c_probe._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/rt5670.c", i32 3109, i32 3}
!121 = !{ptr @rt5670_i2c_probe._entry.52, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @rt5670_i2c_probe._entry_ptr.54, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/rt5670.c", i32 3114, i32 3}
!125 = !{ptr @rt5670_i2c_probe._entry.55, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rt5670_i2c_probe._entry_ptr.57, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/rt5670.c", i32 3118, i32 3}
!129 = !{ptr @rt5670_i2c_probe._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rt5670_i2c_probe._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/rt5670.c", i32 3122, i32 3}
!133 = !{ptr @rt5670_i2c_probe._entry.61, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rt5670_i2c_probe._entry_ptr.63, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @rt5670_i2c_probe._key, !136, !"_key", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/rt5670.c", i32 3135, i32 19}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt5670.c", i32 3138, i32 3}
!140 = !{ptr @rt5670_i2c_probe._entry.65, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rt5670_i2c_probe._entry_ptr.67, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt5670.c", i32 3145, i32 3}
!144 = !{ptr @rt5670_i2c_probe._entry.68, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rt5670_i2c_probe._entry_ptr.70, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt5670.c", i32 3167, i32 3}
!148 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @rt5670_i2c_probe._entry.71, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @rt5670_i2c_probe._entry_ptr.74, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/rt5670.c", i32 3297, i32 4}
!153 = !{ptr @rt5670_i2c_probe._entry.75, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @rt5670_i2c_probe._entry_ptr.77, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @rt5670_regmap, !156, !"rt5670_regmap", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/rt5670.c", i32 2858, i32 35}
!157 = !{ptr @rt5670_reg, !158, !"rt5670_reg", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/rt5670.c", i32 76, i32 33}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/rt5670.c", i32 60, i32 12}
!161 = !{ptr @rt5670_ranges, !162, !"rt5670_ranges", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/rt5670.c", i32 59, i32 38}
!163 = !{ptr @init_list, !164, !"init_list", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/rt5670.c", i32 69, i32 34}
!165 = !{ptr @soc_component_dev_rt5670, !166, !"soc_component_dev_rt5670", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/rt5670.c", i32 2840, i32 46}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/rt5670.c", i32 684, i32 2}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/rt5670.c", i32 688, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/rt5670.c", i32 691, i32 2}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/rt5670.c", i32 693, i32 2}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/rt5670.c", i32 695, i32 2}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/rt5670.c", i32 698, i32 2}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/rt5670.c", i32 702, i32 2}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/rt5670.c", i32 704, i32 2}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/rt5670.c", i32 707, i32 2}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/rt5670.c", i32 711, i32 2}
!187 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/rt5670.c", i32 713, i32 2}
!189 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/rt5670.c", i32 717, i32 2}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/rt5670.c", i32 722, i32 2}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/rt5670.c", i32 726, i32 2}
!195 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/rt5670.c", i32 730, i32 2}
!197 = !{ptr @.str.107, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/rt5670.c", i32 731, i32 2}
!199 = !{ptr @rt5670_snd_controls, !200, !"rt5670_snd_controls", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/rt5670.c", i32 682, i32 38}
!201 = !{ptr @out_vol_tlv, !202, !"out_vol_tlv", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/rt5670.c", i32 604, i32 14}
!203 = !{ptr @dac_vol_tlv, !204, !"dac_vol_tlv", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/rt5670.c", i32 605, i32 14}
!205 = !{ptr @bst_tlv, !206, !"bst_tlv", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/rt5670.c", i32 611, i32 14}
!207 = !{ptr @in_vol_tlv, !208, !"in_vol_tlv", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/rt5670.c", i32 606, i32 14}
!209 = !{ptr @adc_vol_tlv, !210, !"adc_vol_tlv", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/rt5670.c", i32 607, i32 14}
!211 = !{ptr @adc_bst_tlv, !212, !"adc_bst_tlv", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/rt5670.c", i32 608, i32 14}
!213 = !{ptr @rt5670_if2_adc_enum, !214, !"rt5670_if2_adc_enum", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/rt5670.c", i32 629, i32 8}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/rt5670.c", i32 623, i32 2}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/rt5670.c", i32 623, i32 12}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/rt5670.c", i32 623, i32 20}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/rt5670.c", i32 623, i32 42}
!223 = !{ptr @rt5670_data_select, !224, !"rt5670_data_select", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/rt5670.c", i32 622, i32 27}
!225 = !{ptr @rt5670_if2_dac_enum, !226, !"rt5670_if2_dac_enum", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/rt5670.c", i32 626, i32 8}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/rt5670.c", i32 1598, i32 2}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/rt5670.c", i32 1600, i32 2}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/rt5670.c", i32 1606, i32 2}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/rt5670.c", i32 1608, i32 2}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/rt5670.c", i32 1610, i32 2}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/rt5670.c", i32 1612, i32 2}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/rt5670.c", i32 1614, i32 2}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/rt5670.c", i32 1616, i32 2}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/rt5670.c", i32 1618, i32 2}
!245 = !{ptr @.str.121, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/rt5670.c", i32 1620, i32 2}
!247 = !{ptr @.str.122, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/rt5670.c", i32 1622, i32 2}
!249 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/rt5670.c", i32 1624, i32 2}
!251 = !{ptr @.str.124, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/rt5670.c", i32 1626, i32 2}
!253 = !{ptr @.str.125, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/rt5670.c", i32 1628, i32 2}
!255 = !{ptr @.str.126, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/rt5670.c", i32 1630, i32 2}
!257 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/rt5670.c", i32 1635, i32 2}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/rt5670.c", i32 1639, i32 2}
!261 = !{ptr @.str.129, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/rt5670.c", i32 1640, i32 2}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/rt5670.c", i32 1641, i32 2}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/rt5670.c", i32 1642, i32 2}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/rt5670.c", i32 1643, i32 2}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/rt5670.c", i32 1644, i32 2}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/rt5670.c", i32 1646, i32 2}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/rt5670.c", i32 1647, i32 2}
!275 = !{ptr @.str.136, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/rt5670.c", i32 1648, i32 2}
!277 = !{ptr @.str.137, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/rt5670.c", i32 1649, i32 2}
!279 = !{ptr @.str.138, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/rt5670.c", i32 1651, i32 2}
!281 = !{ptr @.str.139, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/rt5670.c", i32 1652, i32 2}
!283 = !{ptr @.str.140, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/rt5670.c", i32 1653, i32 2}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/rt5670.c", i32 1655, i32 2}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/rt5670.c", i32 1657, i32 2}
!289 = !{ptr @.str.143, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/rt5670.c", i32 1659, i32 2}
!291 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt5670.c", i32 1661, i32 2}
!293 = !{ptr @.str.145, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/rt5670.c", i32 1664, i32 2}
!295 = !{ptr @.str.146, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/rt5670.c", i32 1667, i32 2}
!297 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/rt5670.c", i32 1671, i32 2}
!299 = !{ptr @.str.148, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/rt5670.c", i32 1673, i32 2}
!301 = !{ptr @.str.149, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/rt5670.c", i32 1677, i32 2}
!303 = !{ptr @.str.150, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/rt5670.c", i32 1679, i32 2}
!305 = !{ptr @.str.151, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/rt5670.c", i32 1682, i32 2}
!307 = !{ptr @.str.152, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/rt5670.c", i32 1683, i32 2}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/rt5670.c", i32 1685, i32 2}
!311 = !{ptr @.str.154, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/rt5670.c", i32 1687, i32 2}
!313 = !{ptr @.str.155, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/rt5670.c", i32 1689, i32 2}
!315 = !{ptr @.str.156, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/rt5670.c", i32 1691, i32 2}
!317 = !{ptr @.str.157, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/rt5670.c", i32 1694, i32 2}
!319 = !{ptr @.str.158, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/rt5670.c", i32 1696, i32 2}
!321 = !{ptr @.str.159, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/rt5670.c", i32 1698, i32 2}
!323 = !{ptr @.str.160, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/rt5670.c", i32 1700, i32 2}
!325 = !{ptr @.str.161, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/rt5670.c", i32 1702, i32 2}
!327 = !{ptr @.str.162, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/rt5670.c", i32 1704, i32 2}
!329 = !{ptr @.str.163, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/rt5670.c", i32 1706, i32 2}
!331 = !{ptr @.str.164, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/rt5670.c", i32 1708, i32 2}
!333 = !{ptr @.str.165, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/rt5670.c", i32 1710, i32 2}
!335 = !{ptr @.str.166, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/rt5670.c", i32 1712, i32 2}
!337 = !{ptr @.str.167, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/rt5670.c", i32 1714, i32 2}
!339 = !{ptr @.str.168, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/rt5670.c", i32 1716, i32 2}
!341 = !{ptr @.str.169, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/rt5670.c", i32 1718, i32 2}
!343 = !{ptr @.str.170, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/rt5670.c", i32 1720, i32 2}
!345 = !{ptr @.str.171, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/rt5670.c", i32 1722, i32 2}
!347 = !{ptr @.str.172, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/rt5670.c", i32 1724, i32 2}
!349 = !{ptr @.str.173, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/rt5670.c", i32 1726, i32 2}
!351 = !{ptr @.str.174, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/rt5670.c", i32 1729, i32 2}
!353 = !{ptr @.str.175, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/rt5670.c", i32 1731, i32 2}
!355 = !{ptr @.str.176, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/rt5670.c", i32 1733, i32 2}
!357 = !{ptr @.str.177, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/rt5670.c", i32 1735, i32 2}
!359 = !{ptr @.str.178, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/rt5670.c", i32 1737, i32 2}
!361 = !{ptr @.str.179, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/rt5670.c", i32 1740, i32 2}
!363 = !{ptr @.str.180, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/rt5670.c", i32 1743, i32 2}
!365 = !{ptr @.str.181, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/rt5670.c", i32 1745, i32 2}
!367 = !{ptr @.str.182, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/rt5670.c", i32 1748, i32 2}
!369 = !{ptr @.str.183, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/rt5670.c", i32 1750, i32 2}
!371 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/rt5670.c", i32 1755, i32 2}
!373 = !{ptr @.str.185, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/rt5670.c", i32 1756, i32 2}
!375 = !{ptr @.str.186, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/rt5670.c", i32 1757, i32 2}
!377 = !{ptr @.str.187, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/rt5670.c", i32 1758, i32 2}
!379 = !{ptr @.str.188, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/rt5670.c", i32 1759, i32 2}
!381 = !{ptr @.str.189, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/rt5670.c", i32 1760, i32 2}
!383 = !{ptr @.str.190, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/rt5670.c", i32 1761, i32 2}
!385 = !{ptr @.str.191, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/rt5670.c", i32 1762, i32 2}
!387 = !{ptr @.str.192, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/rt5670.c", i32 1763, i32 2}
!389 = !{ptr @.str.193, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/rt5670.c", i32 1764, i32 2}
!391 = !{ptr @.str.194, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/rt5670.c", i32 1765, i32 2}
!393 = !{ptr @.str.195, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/rt5670.c", i32 1766, i32 2}
!395 = !{ptr @.str.196, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/rt5670.c", i32 1767, i32 2}
!397 = !{ptr @.str.197, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/rt5670.c", i32 1768, i32 2}
!399 = !{ptr @.str.198, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/rt5670.c", i32 1769, i32 2}
!401 = !{ptr @.str.199, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/rt5670.c", i32 1772, i32 2}
!403 = !{ptr @.str.200, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/rt5670.c", i32 1773, i32 2}
!405 = !{ptr @.str.201, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/rt5670.c", i32 1774, i32 2}
!407 = !{ptr @.str.202, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/rt5670.c", i32 1775, i32 2}
!409 = !{ptr @.str.203, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/rt5670.c", i32 1777, i32 2}
!411 = !{ptr @.str.204, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/rt5670.c", i32 1780, i32 2}
!413 = !{ptr @.str.205, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/rt5670.c", i32 1782, i32 2}
!415 = !{ptr @.str.206, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/rt5670.c", i32 1785, i32 2}
!417 = !{ptr @.str.207, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/rt5670.c", i32 1789, i32 2}
!419 = !{ptr @.str.208, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/rt5670.c", i32 1793, i32 2}
!421 = !{ptr @.str.209, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/rt5670.c", i32 1795, i32 2}
!423 = !{ptr @.str.210, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/rt5670.c", i32 1796, i32 2}
!425 = !{ptr @.str.211, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/rt5670.c", i32 1797, i32 2}
!427 = !{ptr @.str.212, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/rt5670.c", i32 1798, i32 2}
!429 = !{ptr @.str.213, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/rt5670.c", i32 1799, i32 2}
!431 = !{ptr @.str.214, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/rt5670.c", i32 1800, i32 2}
!433 = !{ptr @.str.215, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/rt5670.c", i32 1801, i32 2}
!435 = !{ptr @.str.216, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/rt5670.c", i32 1802, i32 2}
!437 = !{ptr @.str.217, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/rt5670.c", i32 1803, i32 2}
!439 = !{ptr @.str.218, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/rt5670.c", i32 1804, i32 2}
!441 = !{ptr @.str.219, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/rt5670.c", i32 1806, i32 2}
!443 = !{ptr @.str.220, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/rt5670.c", i32 1807, i32 2}
!445 = !{ptr @.str.221, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/rt5670.c", i32 1808, i32 2}
!447 = !{ptr @.str.222, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/rt5670.c", i32 1809, i32 2}
!449 = !{ptr @.str.223, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/rt5670.c", i32 1810, i32 2}
!451 = !{ptr @.str.224, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/rt5670.c", i32 1811, i32 2}
!453 = !{ptr @.str.225, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/rt5670.c", i32 1814, i32 2}
!455 = !{ptr @.str.226, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/rt5670.c", i32 1816, i32 2}
!457 = !{ptr @.str.227, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/rt5670.c", i32 1818, i32 2}
!459 = !{ptr @.str.228, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/rt5670.c", i32 1820, i32 2}
!461 = !{ptr @.str.229, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/rt5670.c", i32 1822, i32 2}
!463 = !{ptr @.str.230, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/rt5670.c", i32 1826, i32 2}
!465 = !{ptr @.str.231, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.232, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/rt5670.c", i32 1827, i32 2}
!468 = !{ptr @.str.233, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.234, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/rt5670.c", i32 1828, i32 2}
!471 = !{ptr @.str.235, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.236, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/rt5670.c", i32 1829, i32 2}
!474 = !{ptr @.str.237, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @.str.238, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/rt5670.c", i32 1833, i32 2}
!477 = !{ptr @.str.239, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/rt5670.c", i32 1837, i32 2}
!479 = !{ptr @.str.240, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/rt5670.c", i32 1839, i32 2}
!481 = !{ptr @.str.241, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/rt5670.c", i32 1841, i32 2}
!483 = !{ptr @.str.242, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/rt5670.c", i32 1844, i32 2}
!485 = !{ptr @.str.243, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/rt5670.c", i32 1846, i32 2}
!487 = !{ptr @.str.244, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/rt5670.c", i32 1848, i32 2}
!489 = !{ptr @.str.245, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/rt5670.c", i32 1850, i32 2}
!491 = !{ptr @.str.246, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/rt5670.c", i32 1853, i32 2}
!493 = !{ptr @.str.247, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/rt5670.c", i32 1854, i32 2}
!495 = !{ptr @.str.248, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/rt5670.c", i32 1857, i32 2}
!497 = !{ptr @.str.249, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/rt5670.c", i32 1859, i32 2}
!499 = !{ptr @.str.250, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/rt5670.c", i32 1861, i32 2}
!501 = !{ptr @.str.251, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/rt5670.c", i32 1863, i32 2}
!503 = !{ptr @.str.252, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/rt5670.c", i32 1866, i32 2}
!505 = !{ptr @.str.253, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/rt5670.c", i32 1869, i32 2}
!507 = !{ptr @.str.254, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/rt5670.c", i32 1872, i32 2}
!509 = !{ptr @.str.255, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/rt5670.c", i32 1875, i32 2}
!511 = !{ptr @.str.256, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/rt5670.c", i32 1878, i32 2}
!513 = !{ptr @.str.257, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/rt5670.c", i32 1883, i32 2}
!515 = !{ptr @.str.258, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/rt5670.c", i32 1885, i32 2}
!517 = !{ptr @.str.259, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/rt5670.c", i32 1887, i32 2}
!519 = !{ptr @.str.260, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/rt5670.c", i32 1888, i32 2}
!521 = !{ptr @.str.261, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/rt5670.c", i32 1889, i32 2}
!523 = !{ptr @.str.262, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/rt5670.c", i32 1892, i32 2}
!525 = !{ptr @.str.263, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/rt5670.c", i32 1896, i32 2}
!527 = !{ptr @.str.264, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/rt5670.c", i32 1898, i32 2}
!529 = !{ptr @.str.265, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/rt5670.c", i32 1901, i32 2}
!531 = !{ptr @.str.266, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/rt5670.c", i32 1904, i32 2}
!533 = !{ptr @.str.267, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/rt5670.c", i32 1907, i32 2}
!535 = !{ptr @.str.268, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/rt5670.c", i32 1908, i32 2}
!537 = !{ptr @.str.269, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/rt5670.c", i32 1909, i32 2}
!539 = !{ptr @.str.270, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/rt5670.c", i32 1912, i32 2}
!541 = !{ptr @.str.271, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/rt5670.c", i32 1914, i32 2}
!543 = !{ptr @.str.272, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/rt5670.c", i32 1916, i32 2}
!545 = !{ptr @.str.273, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/rt5670.c", i32 1919, i32 2}
!547 = !{ptr @.str.274, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/rt5670.c", i32 1921, i32 2}
!549 = !{ptr @.str.275, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/rt5670.c", i32 1923, i32 2}
!551 = !{ptr @.str.276, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/rt5670.c", i32 1926, i32 2}
!553 = !{ptr @.str.277, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/rt5670.c", i32 1928, i32 2}
!555 = !{ptr @.str.278, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/rt5670.c", i32 1930, i32 2}
!557 = !{ptr @.str.279, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/rt5670.c", i32 1933, i32 2}
!559 = !{ptr @.str.280, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/rt5670.c", i32 1936, i32 2}
!561 = !{ptr @.str.281, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/rt5670.c", i32 1938, i32 2}
!563 = !{ptr @.str.282, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/rt5670.c", i32 1942, i32 2}
!565 = !{ptr @.str.283, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/rt5670.c", i32 1943, i32 2}
!567 = !{ptr @.str.284, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/rt5670.c", i32 1944, i32 2}
!569 = !{ptr @.str.285, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/rt5670.c", i32 1945, i32 2}
!571 = !{ptr @rt5670_dapm_widgets, !572, !"rt5670_dapm_widgets", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/rt5670.c", i32 1597, i32 41}
!573 = !{ptr @.str.287, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/rt5670.c", i32 755, i32 3}
!575 = !{ptr @.str.288, !574, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @set_dmic_clk._entry, !574, !"_entry", i1 false, i1 false}
!577 = !{ptr @set_dmic_clk._entry_ptr, !574, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.289, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/rt5670.c", i32 1060, i32 2}
!580 = !{ptr @.str.291, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/rt5670.c", i32 1062, i32 2}
!582 = !{ptr @.str.293, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/rt5670.c", i32 1064, i32 2}
!584 = !{ptr @rt5670_rec_l_mix, !585, !"rt5670_rec_l_mix", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/rt5670.c", i32 1059, i32 38}
!586 = !{ptr @.str.295, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/rt5670.c", i32 1069, i32 2}
!588 = !{ptr @rt5670_rec_r_mix, !589, !"rt5670_rec_r_mix", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/rt5670.c", i32 1068, i32 38}
!590 = !{ptr @.str.299, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/rt5670.c", i32 1265, i32 2}
!592 = !{ptr @rt5670_sto1_dmic_mux, !593, !"rt5670_sto1_dmic_mux", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/rt5670.c", i32 1264, i32 38}
!594 = !{ptr @rt5670_stereo1_dmic_enum, !595, !"rt5670_stereo1_dmic_enum", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/rt5670.c", i32 1261, i32 8}
!596 = !{ptr @rt5670_stereo_dmic_src, !597, !"rt5670_stereo_dmic_src", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/rt5670.c", i32 1257, i32 27}
!598 = !{ptr @.str.300, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/rt5670.c", i32 1248, i32 2}
!600 = !{ptr @rt5670_sto_adc_2_mux, !601, !"rt5670_sto_adc_2_mux", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/rt5670.c", i32 1247, i32 38}
!602 = !{ptr @rt5670_stereo1_adc2_enum, !603, !"rt5670_stereo1_adc2_enum", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/rt5670.c", i32 1244, i32 8}
!604 = !{ptr @.str.301, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/rt5670.c", i32 1241, i32 13}
!606 = !{ptr @rt5670_stereo_adc2_src, !607, !"rt5670_stereo_adc2_src", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/rt5670.c", i32 1240, i32 27}
!608 = !{ptr @.str.302, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/rt5670.c", i32 1230, i32 2}
!610 = !{ptr @rt5670_sto_adc_1_mux, !611, !"rt5670_sto_adc_1_mux", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/rt5670.c", i32 1229, i32 38}
!612 = !{ptr @rt5670_stereo1_adc1_enum, !613, !"rt5670_stereo1_adc1_enum", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/rt5670.c", i32 1226, i32 8}
!614 = !{ptr @.str.303, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/rt5670.c", i32 1223, i32 13}
!616 = !{ptr @rt5670_stereo_adc1_src, !617, !"rt5670_stereo_adc1_src", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/rt5670.c", i32 1222, i32 27}
!618 = !{ptr @.str.304, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/rt5670.c", i32 1271, i32 2}
!620 = !{ptr @rt5670_sto2_dmic_mux, !621, !"rt5670_sto2_dmic_mux", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/rt5670.c", i32 1270, i32 38}
!622 = !{ptr @rt5670_stereo2_dmic_enum, !623, !"rt5670_stereo2_dmic_enum", i1 false, i1 false}
!623 = !{!"../sound/soc/codecs/rt5670.c", i32 1267, i32 8}
!624 = !{ptr @.str.305, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/rt5670.c", i32 1254, i32 2}
!626 = !{ptr @rt5670_sto2_adc_2_mux, !627, !"rt5670_sto2_adc_2_mux", i1 false, i1 false}
!627 = !{!"../sound/soc/codecs/rt5670.c", i32 1253, i32 38}
!628 = !{ptr @rt5670_stereo2_adc2_enum, !629, !"rt5670_stereo2_adc2_enum", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/rt5670.c", i32 1250, i32 8}
!630 = !{ptr @.str.306, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/rt5670.c", i32 1236, i32 2}
!632 = !{ptr @rt5670_sto2_adc_1_mux, !633, !"rt5670_sto2_adc_1_mux", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/rt5670.c", i32 1235, i32 38}
!634 = !{ptr @rt5670_stereo2_adc1_enum, !635, !"rt5670_stereo2_adc1_enum", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/rt5670.c", i32 1232, i32 8}
!636 = !{ptr @.str.307, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/codecs/rt5670.c", i32 1218, i32 2}
!638 = !{ptr @rt5670_sto2_adc_lr_mux, !639, !"rt5670_sto2_adc_lr_mux", i1 false, i1 false}
!639 = !{!"../sound/soc/codecs/rt5670.c", i32 1217, i32 38}
!640 = !{ptr @rt5670_stereo2_adc_lr_enum, !641, !"rt5670_stereo2_adc_lr_enum", i1 false, i1 false}
!641 = !{!"../sound/soc/codecs/rt5670.c", i32 1214, i32 8}
!642 = !{ptr @.str.308, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/soc/codecs/rt5670.c", i32 1211, i32 2}
!644 = !{ptr @.str.309, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/soc/codecs/rt5670.c", i32 1211, i32 7}
!646 = !{ptr @rt5670_stereo2_adc_lr_src, !647, !"rt5670_stereo2_adc_lr_src", i1 false, i1 false}
!647 = !{!"../sound/soc/codecs/rt5670.c", i32 1210, i32 27}
!648 = !{ptr @.str.310, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/rt5670.c", i32 1304, i32 2}
!650 = !{ptr @rt5670_mono_dmic_l_mux, !651, !"rt5670_mono_dmic_l_mux", i1 false, i1 false}
!651 = !{!"../sound/soc/codecs/rt5670.c", i32 1303, i32 38}
!652 = !{ptr @rt5670_mono_dmic_l_enum, !653, !"rt5670_mono_dmic_l_enum", i1 false, i1 false}
!653 = !{!"../sound/soc/codecs/rt5670.c", i32 1300, i32 8}
!654 = !{ptr @rt5670_mono_dmic_src, !655, !"rt5670_mono_dmic_src", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/rt5670.c", i32 1296, i32 27}
!656 = !{ptr @.str.311, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/soc/codecs/rt5670.c", i32 1310, i32 2}
!658 = !{ptr @rt5670_mono_dmic_r_mux, !659, !"rt5670_mono_dmic_r_mux", i1 false, i1 false}
!659 = !{!"../sound/soc/codecs/rt5670.c", i32 1309, i32 38}
!660 = !{ptr @rt5670_mono_dmic_r_enum, !661, !"rt5670_mono_dmic_r_enum", i1 false, i1 false}
!661 = !{!"../sound/soc/codecs/rt5670.c", i32 1306, i32 8}
!662 = !{ptr @.str.312, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/soc/codecs/rt5670.c", i32 1293, i32 2}
!664 = !{ptr @rt5670_mono_adc_l2_mux, !665, !"rt5670_mono_adc_l2_mux", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/rt5670.c", i32 1292, i32 38}
!666 = !{ptr @rt5670_mono_adc_l2_enum, !667, !"rt5670_mono_adc_l2_enum", i1 false, i1 false}
!667 = !{!"../sound/soc/codecs/rt5670.c", i32 1289, i32 8}
!668 = !{ptr @rt5670_mono_adc_l2_src, !669, !"rt5670_mono_adc_l2_src", i1 false, i1 false}
!669 = !{!"../sound/soc/codecs/rt5670.c", i32 1285, i32 27}
!670 = !{ptr @.str.313, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../sound/soc/codecs/rt5670.c", i32 1283, i32 2}
!672 = !{ptr @rt5670_mono_adc_l1_mux, !673, !"rt5670_mono_adc_l1_mux", i1 false, i1 false}
!673 = !{!"../sound/soc/codecs/rt5670.c", i32 1282, i32 38}
!674 = !{ptr @rt5670_mono_adc_l1_enum, !675, !"rt5670_mono_adc_l1_enum", i1 false, i1 false}
!675 = !{!"../sound/soc/codecs/rt5670.c", i32 1279, i32 8}
!676 = !{ptr @.str.314, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/codecs/rt5670.c", i32 1276, i32 19}
!678 = !{ptr @rt5670_mono_adc_l1_src, !679, !"rt5670_mono_adc_l1_src", i1 false, i1 false}
!679 = !{!"../sound/soc/codecs/rt5670.c", i32 1275, i32 27}
!680 = !{ptr @.str.315, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../sound/soc/codecs/rt5670.c", i32 1320, i32 2}
!682 = !{ptr @rt5670_mono_adc_r1_mux, !683, !"rt5670_mono_adc_r1_mux", i1 false, i1 false}
!683 = !{!"../sound/soc/codecs/rt5670.c", i32 1319, i32 38}
!684 = !{ptr @rt5670_mono_adc_r1_enum, !685, !"rt5670_mono_adc_r1_enum", i1 false, i1 false}
!685 = !{!"../sound/soc/codecs/rt5670.c", i32 1316, i32 8}
!686 = !{ptr @.str.316, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../sound/soc/codecs/rt5670.c", i32 1313, i32 19}
!688 = !{ptr @rt5670_mono_adc_r1_src, !689, !"rt5670_mono_adc_r1_src", i1 false, i1 false}
!689 = !{!"../sound/soc/codecs/rt5670.c", i32 1312, i32 27}
!690 = !{ptr @.str.317, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../sound/soc/codecs/rt5670.c", i32 1330, i32 2}
!692 = !{ptr @rt5670_mono_adc_r2_mux, !693, !"rt5670_mono_adc_r2_mux", i1 false, i1 false}
!693 = !{!"../sound/soc/codecs/rt5670.c", i32 1329, i32 38}
!694 = !{ptr @rt5670_mono_adc_r2_enum, !695, !"rt5670_mono_adc_r2_enum", i1 false, i1 false}
!695 = !{!"../sound/soc/codecs/rt5670.c", i32 1326, i32 8}
!696 = !{ptr @rt5670_mono_adc_r2_src, !697, !"rt5670_mono_adc_r2_src", i1 false, i1 false}
!697 = !{!"../sound/soc/codecs/rt5670.c", i32 1322, i32 27}
!698 = !{ptr @.str.318, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../sound/soc/codecs/rt5670.c", i32 923, i32 2}
!700 = !{ptr @.str.320, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../sound/soc/codecs/rt5670.c", i32 925, i32 2}
!702 = !{ptr @rt5670_sto1_adc_l_mix, !703, !"rt5670_sto1_adc_l_mix", i1 false, i1 false}
!703 = !{!"../sound/soc/codecs/rt5670.c", i32 922, i32 38}
!704 = !{ptr @rt5670_sto1_adc_r_mix, !705, !"rt5670_sto1_adc_r_mix", i1 false, i1 false}
!705 = !{!"../sound/soc/codecs/rt5670.c", i32 929, i32 38}
!706 = !{ptr @rt5670_sto2_adc_l_mix, !707, !"rt5670_sto2_adc_l_mix", i1 false, i1 false}
!707 = !{!"../sound/soc/codecs/rt5670.c", i32 936, i32 38}
!708 = !{ptr @rt5670_sto2_adc_r_mix, !709, !"rt5670_sto2_adc_r_mix", i1 false, i1 false}
!709 = !{!"../sound/soc/codecs/rt5670.c", i32 943, i32 38}
!710 = !{ptr @rt5670_mono_adc_l_mix, !711, !"rt5670_mono_adc_l_mix", i1 false, i1 false}
!711 = !{!"../sound/soc/codecs/rt5670.c", i32 950, i32 38}
!712 = !{ptr @rt5670_mono_adc_r_mix, !713, !"rt5670_mono_adc_r_mix", i1 false, i1 false}
!713 = !{!"../sound/soc/codecs/rt5670.c", i32 957, i32 38}
!714 = !{ptr @.str.332, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../sound/soc/codecs/rt5670.c", i32 1341, i32 2}
!716 = !{ptr @rt5670_txdp_slot_mux, !717, !"rt5670_txdp_slot_mux", i1 false, i1 false}
!717 = !{!"../sound/soc/codecs/rt5670.c", i32 1340, i32 38}
!718 = !{ptr @rt5670_txdp_slot_enum, !719, !"rt5670_txdp_slot_enum", i1 false, i1 false}
!719 = !{!"../sound/soc/codecs/rt5670.c", i32 1337, i32 8}
!720 = !{ptr @.str.333, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../sound/soc/codecs/rt5670.c", i32 1334, i32 2}
!722 = !{ptr @.str.334, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../sound/soc/codecs/rt5670.c", i32 1334, i32 14}
!724 = !{ptr @.str.335, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../sound/soc/codecs/rt5670.c", i32 1334, i32 26}
!726 = !{ptr @.str.336, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../sound/soc/codecs/rt5670.c", i32 1334, i32 38}
!728 = !{ptr @rt5670_txdp_slot_src, !729, !"rt5670_txdp_slot_src", i1 false, i1 false}
!729 = !{!"../sound/soc/codecs/rt5670.c", i32 1333, i32 27}
!730 = !{ptr @.str.337, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../sound/soc/codecs/rt5670.c", i32 1200, i32 2}
!732 = !{ptr @rt5670_dsp_ul_mux, !733, !"rt5670_dsp_ul_mux", i1 false, i1 false}
!733 = !{!"../sound/soc/codecs/rt5670.c", i32 1199, i32 38}
!734 = !{ptr @rt5670_dsp_ul_enum, !735, !"rt5670_dsp_ul_enum", i1 false, i1 false}
!735 = !{!"../sound/soc/codecs/rt5670.c", i32 1196, i32 8}
!736 = !{ptr @.str.338, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../sound/soc/codecs/rt5670.c", i32 1193, i32 2}
!738 = !{ptr @.str.339, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../sound/soc/codecs/rt5670.c", i32 1193, i32 9}
!740 = !{ptr @rt5670_dsp_bypass_src, !741, !"rt5670_dsp_bypass_src", i1 false, i1 false}
!741 = !{!"../sound/soc/codecs/rt5670.c", i32 1192, i32 27}
!742 = !{ptr @.str.340, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../sound/soc/codecs/rt5670.c", i32 1206, i32 2}
!744 = !{ptr @rt5670_dsp_dl_mux, !745, !"rt5670_dsp_dl_mux", i1 false, i1 false}
!745 = !{!"../sound/soc/codecs/rt5670.c", i32 1205, i32 38}
!746 = !{ptr @rt5670_dsp_dl_enum, !747, !"rt5670_dsp_dl_enum", i1 false, i1 false}
!747 = !{!"../sound/soc/codecs/rt5670.c", i32 1202, i32 8}
!748 = !{ptr @.str.341, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../sound/soc/codecs/rt5670.c", i32 1189, i32 2}
!750 = !{ptr @rt5670_rxdp_mux, !751, !"rt5670_rxdp_mux", i1 false, i1 false}
!751 = !{!"../sound/soc/codecs/rt5670.c", i32 1188, i32 38}
!752 = !{ptr @rt5670_rxdp_enum, !753, !"rt5670_rxdp_enum", i1 false, i1 false}
!753 = !{!"../sound/soc/codecs/rt5670.c", i32 1185, i32 8}
!754 = !{ptr @.str.342, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../sound/soc/codecs/rt5670.c", i32 1181, i32 13}
!756 = !{ptr @.str.343, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../sound/soc/codecs/rt5670.c", i32 1181, i32 24}
!758 = !{ptr @.str.344, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../sound/soc/codecs/rt5670.c", i32 1181, i32 42}
!760 = !{ptr @.str.345, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../sound/soc/codecs/rt5670.c", i32 1182, i32 2}
!762 = !{ptr @.str.346, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../sound/soc/codecs/rt5670.c", i32 1182, i32 22}
!764 = !{ptr @.str.347, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../sound/soc/codecs/rt5670.c", i32 1182, i32 42}
!766 = !{ptr @rt5670_rxdp_src, !767, !"rt5670_rxdp_src", i1 false, i1 false}
!767 = !{!"../sound/soc/codecs/rt5670.c", i32 1180, i32 27}
!768 = !{ptr @.str.348, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../sound/soc/codecs/rt5670.c", i32 1363, i32 2}
!770 = !{ptr @rt5670_if2_adc_in_mux, !771, !"rt5670_if2_adc_in_mux", i1 false, i1 false}
!771 = !{!"../sound/soc/codecs/rt5670.c", i32 1362, i32 38}
!772 = !{ptr @rt5670_if2_adc_in_enum, !773, !"rt5670_if2_adc_in_enum", i1 false, i1 false}
!773 = !{!"../sound/soc/codecs/rt5670.c", i32 1359, i32 8}
!774 = !{ptr @rt5670_if2_adc_in_src, !775, !"rt5670_if2_adc_in_src", i1 false, i1 false}
!775 = !{!"../sound/soc/codecs/rt5670.c", i32 1355, i32 27}
!776 = !{ptr @.str.349, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../sound/soc/codecs/rt5670.c", i32 1403, i32 2}
!778 = !{ptr @rt5670_if1_adc1_in1_mux, !779, !"rt5670_if1_adc1_in1_mux", i1 false, i1 false}
!779 = !{!"../sound/soc/codecs/rt5670.c", i32 1402, i32 38}
!780 = !{ptr @rt5670_if1_adc1_in1_enum, !781, !"rt5670_if1_adc1_in1_enum", i1 false, i1 false}
!781 = !{!"../sound/soc/codecs/rt5670.c", i32 1399, i32 8}
!782 = !{ptr @rt5670_if1_adc1_in1_src, !783, !"rt5670_if1_adc1_in1_src", i1 false, i1 false}
!783 = !{!"../sound/soc/codecs/rt5670.c", i32 1395, i32 27}
!784 = !{ptr @.str.350, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../sound/soc/codecs/rt5670.c", i32 1414, i32 2}
!786 = !{ptr @rt5670_if1_adc1_in2_mux, !787, !"rt5670_if1_adc1_in2_mux", i1 false, i1 false}
!787 = !{!"../sound/soc/codecs/rt5670.c", i32 1413, i32 38}
!788 = !{ptr @rt5670_if1_adc1_in2_enum, !789, !"rt5670_if1_adc1_in2_enum", i1 false, i1 false}
!789 = !{!"../sound/soc/codecs/rt5670.c", i32 1410, i32 8}
!790 = !{ptr @.str.351, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../sound/soc/codecs/rt5670.c", i32 1407, i32 2}
!792 = !{ptr @.str.352, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../sound/soc/codecs/rt5670.c", i32 1407, i32 18}
!794 = !{ptr @rt5670_if1_adc1_in2_src, !795, !"rt5670_if1_adc1_in2_src", i1 false, i1 false}
!795 = !{!"../sound/soc/codecs/rt5670.c", i32 1406, i32 27}
!796 = !{ptr @.str.353, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../sound/soc/codecs/rt5670.c", i32 1352, i32 2}
!798 = !{ptr @rt5670_if1_adc2_in_mux, !799, !"rt5670_if1_adc2_in_mux", i1 false, i1 false}
!799 = !{!"../sound/soc/codecs/rt5670.c", i32 1351, i32 38}
!800 = !{ptr @rt5670_if1_adc2_in_enum, !801, !"rt5670_if1_adc2_in_enum", i1 false, i1 false}
!801 = !{!"../sound/soc/codecs/rt5670.c", i32 1348, i32 8}
!802 = !{ptr @rt5670_if1_adc2_in_src, !803, !"rt5670_if1_adc2_in_src", i1 false, i1 false}
!803 = !{!"../sound/soc/codecs/rt5670.c", i32 1344, i32 27}
!804 = !{ptr @.str.354, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../sound/soc/codecs/rt5670.c", i32 1425, i32 2}
!806 = !{ptr @rt5670_if1_adc2_in1_mux, !807, !"rt5670_if1_adc2_in1_mux", i1 false, i1 false}
!807 = !{!"../sound/soc/codecs/rt5670.c", i32 1424, i32 38}
!808 = !{ptr @rt5670_if1_adc2_in1_enum, !809, !"rt5670_if1_adc2_in1_enum", i1 false, i1 false}
!809 = !{!"../sound/soc/codecs/rt5670.c", i32 1421, i32 8}
!810 = !{ptr @.str.355, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../sound/soc/codecs/rt5670.c", i32 1418, i32 2}
!812 = !{ptr @rt5670_if1_adc2_in1_src, !813, !"rt5670_if1_adc2_in1_src", i1 false, i1 false}
!813 = !{!"../sound/soc/codecs/rt5670.c", i32 1417, i32 27}
!814 = !{ptr @.str.356, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../sound/soc/codecs/rt5670.c", i32 1436, i32 2}
!816 = !{ptr @rt5670_vad_adc_mux, !817, !"rt5670_vad_adc_mux", i1 false, i1 false}
!817 = !{!"../sound/soc/codecs/rt5670.c", i32 1435, i32 38}
!818 = !{ptr @rt5670_vad_adc_enum, !819, !"rt5670_vad_adc_enum", i1 false, i1 false}
!819 = !{!"../sound/soc/codecs/rt5670.c", i32 1432, i32 8}
!820 = !{ptr @.str.357, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../sound/soc/codecs/rt5670.c", i32 1429, i32 2}
!822 = !{ptr @.str.358, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../sound/soc/codecs/rt5670.c", i32 1429, i32 16}
!824 = !{ptr @.str.359, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../sound/soc/codecs/rt5670.c", i32 1429, i32 30}
!826 = !{ptr @.str.360, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../sound/soc/codecs/rt5670.c", i32 1429, i32 44}
!828 = !{ptr @rt5670_vad_adc_src, !829, !"rt5670_vad_adc_src", i1 false, i1 false}
!829 = !{!"../sound/soc/codecs/rt5670.c", i32 1428, i32 27}
!830 = !{ptr @.str.361, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../sound/soc/codecs/rt5670.c", i32 993, i32 2}
!832 = !{ptr @.str.363, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../sound/soc/codecs/rt5670.c", i32 995, i32 2}
!834 = !{ptr @rt5670_dac_l_mix, !835, !"rt5670_dac_l_mix", i1 false, i1 false}
!835 = !{!"../sound/soc/codecs/rt5670.c", i32 992, i32 38}
!836 = !{ptr @rt5670_dac_r_mix, !837, !"rt5670_dac_r_mix", i1 false, i1 false}
!837 = !{!"../sound/soc/codecs/rt5670.c", i32 998, i32 38}
!838 = !{ptr @rt5670_dac_l2_mux, !839, !"rt5670_dac_l2_mux", i1 false, i1 false}
!839 = !{!"../sound/soc/codecs/rt5670.c", i32 1166, i32 38}
!840 = !{ptr @rt5670_dac2l_enum, !841, !"rt5670_dac2l_enum", i1 false, i1 false}
!841 = !{!"../sound/soc/codecs/rt5670.c", i32 1163, i32 8}
!842 = !{ptr @.str.367, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../sound/soc/codecs/rt5670.c", i32 1159, i32 24}
!844 = !{ptr @.str.368, !845, !"<string literal>", i1 false, i1 false}
!845 = !{!"../sound/soc/codecs/rt5670.c", i32 1159, i32 35}
!846 = !{ptr @.str.369, !847, !"<string literal>", i1 false, i1 false}
!847 = !{!"../sound/soc/codecs/rt5670.c", i32 1160, i32 2}
!848 = !{ptr @.str.370, !849, !"<string literal>", i1 false, i1 false}
!849 = !{!"../sound/soc/codecs/rt5670.c", i32 1160, i32 21}
!850 = !{ptr @rt5670_dac12_src, !851, !"rt5670_dac12_src", i1 false, i1 false}
!851 = !{!"../sound/soc/codecs/rt5670.c", i32 1158, i32 27}
!852 = !{ptr @.str.371, !853, !"<string literal>", i1 false, i1 false}
!853 = !{!"../sound/soc/codecs/rt5670.c", i32 1177, i32 2}
!854 = !{ptr @rt5670_dac_r2_mux, !855, !"rt5670_dac_r2_mux", i1 false, i1 false}
!855 = !{!"../sound/soc/codecs/rt5670.c", i32 1176, i32 38}
!856 = !{ptr @rt5670_dac2r_enum, !857, !"rt5670_dac2r_enum", i1 false, i1 false}
!857 = !{!"../sound/soc/codecs/rt5670.c", i32 1173, i32 8}
!858 = !{ptr @.str.372, !859, !"<string literal>", i1 false, i1 false}
!859 = !{!"../sound/soc/codecs/rt5670.c", i32 1170, i32 47}
!860 = !{ptr @rt5670_dacr2_src, !861, !"rt5670_dacr2_src", i1 false, i1 false}
!861 = !{!"../sound/soc/codecs/rt5670.c", i32 1169, i32 27}
!862 = !{ptr @.str.373, !863, !"<string literal>", i1 false, i1 false}
!863 = !{!"../sound/soc/codecs/rt5670.c", i32 1148, i32 2}
!864 = !{ptr @rt5670_dac1l_mux, !865, !"rt5670_dac1l_mux", i1 false, i1 false}
!865 = !{!"../sound/soc/codecs/rt5670.c", i32 1147, i32 38}
!866 = !{ptr @rt5670_dac1l_enum, !867, !"rt5670_dac1l_enum", i1 false, i1 false}
!867 = !{!"../sound/soc/codecs/rt5670.c", i32 1144, i32 8}
!868 = !{ptr @rt5670_dac1_src, !869, !"rt5670_dac1_src", i1 false, i1 false}
!869 = !{!"../sound/soc/codecs/rt5670.c", i32 1140, i32 27}
!870 = !{ptr @.str.374, !871, !"<string literal>", i1 false, i1 false}
!871 = !{!"../sound/soc/codecs/rt5670.c", i32 1154, i32 2}
!872 = !{ptr @rt5670_dac1r_mux, !873, !"rt5670_dac1r_mux", i1 false, i1 false}
!873 = !{!"../sound/soc/codecs/rt5670.c", i32 1153, i32 38}
!874 = !{ptr @rt5670_dac1r_enum, !875, !"rt5670_dac1r_enum", i1 false, i1 false}
!875 = !{!"../sound/soc/codecs/rt5670.c", i32 1150, i32 8}
!876 = !{ptr @.str.375, !877, !"<string literal>", i1 false, i1 false}
!877 = !{!"../sound/soc/codecs/rt5670.c", i32 1005, i32 2}
!878 = !{ptr @.str.377, !879, !"<string literal>", i1 false, i1 false}
!879 = !{!"../sound/soc/codecs/rt5670.c", i32 1007, i32 2}
!880 = !{ptr @.str.379, !881, !"<string literal>", i1 false, i1 false}
!881 = !{!"../sound/soc/codecs/rt5670.c", i32 1009, i32 2}
!882 = !{ptr @rt5670_sto_dac_l_mix, !883, !"rt5670_sto_dac_l_mix", i1 false, i1 false}
!883 = !{!"../sound/soc/codecs/rt5670.c", i32 1004, i32 38}
!884 = !{ptr @.str.382, !885, !"<string literal>", i1 false, i1 false}
!885 = !{!"../sound/soc/codecs/rt5670.c", i32 1016, i32 2}
!886 = !{ptr @rt5670_sto_dac_r_mix, !887, !"rt5670_sto_dac_r_mix", i1 false, i1 false}
!887 = !{!"../sound/soc/codecs/rt5670.c", i32 1013, i32 38}
!888 = !{ptr @rt5670_mono_dac_l_mix, !889, !"rt5670_mono_dac_l_mix", i1 false, i1 false}
!889 = !{!"../sound/soc/codecs/rt5670.c", i32 1022, i32 38}
!890 = !{ptr @rt5670_mono_dac_r_mix, !891, !"rt5670_mono_dac_r_mix", i1 false, i1 false}
!891 = !{!"../sound/soc/codecs/rt5670.c", i32 1031, i32 38}
!892 = !{ptr @.str.391, !893, !"<string literal>", i1 false, i1 false}
!893 = !{!"../sound/soc/codecs/rt5670.c", i32 1041, i32 2}
!894 = !{ptr @rt5670_dig_l_mix, !895, !"rt5670_dig_l_mix", i1 false, i1 false}
!895 = !{!"../sound/soc/codecs/rt5670.c", i32 1040, i32 38}
!896 = !{ptr @.str.395, !897, !"<string literal>", i1 false, i1 false}
!897 = !{!"../sound/soc/codecs/rt5670.c", i32 1050, i32 2}
!898 = !{ptr @rt5670_dig_r_mix, !899, !"rt5670_dig_r_mix", i1 false, i1 false}
!899 = !{!"../sound/soc/codecs/rt5670.c", i32 1049, i32 38}
!900 = !{ptr @rt5670_out_l_mix, !901, !"rt5670_out_l_mix", i1 false, i1 false}
!901 = !{!"../sound/soc/codecs/rt5670.c", i32 1077, i32 38}
!902 = !{ptr @rt5670_out_r_mix, !903, !"rt5670_out_r_mix", i1 false, i1 false}
!903 = !{!"../sound/soc/codecs/rt5670.c", i32 1088, i32 38}
!904 = !{ptr @rt5670_hpvoll_mix, !905, !"rt5670_hpvoll_mix", i1 false, i1 false}
!905 = !{!"../sound/soc/codecs/rt5670.c", i32 1106, i32 38}
!906 = !{ptr @rt5670_hpvolr_mix, !907, !"rt5670_hpvolr_mix", i1 false, i1 false}
!907 = !{!"../sound/soc/codecs/rt5670.c", i32 1113, i32 38}
!908 = !{ptr @.str.412, !909, !"<string literal>", i1 false, i1 false}
!909 = !{!"../sound/soc/codecs/rt5670.c", i32 1102, i32 2}
!910 = !{ptr @rt5670_hpo_mix, !911, !"rt5670_hpo_mix", i1 false, i1 false}
!911 = !{!"../sound/soc/codecs/rt5670.c", i32 1099, i32 38}
!912 = !{ptr @.str.416, !913, !"<string literal>", i1 false, i1 false}
!913 = !{!"../sound/soc/codecs/rt5670.c", i32 1125, i32 2}
!914 = !{ptr @.str.418, !915, !"<string literal>", i1 false, i1 false}
!915 = !{!"../sound/soc/codecs/rt5670.c", i32 1127, i32 2}
!916 = !{ptr @rt5670_lout_mix, !917, !"rt5670_lout_mix", i1 false, i1 false}
!917 = !{!"../sound/soc/codecs/rt5670.c", i32 1120, i32 38}
!918 = !{ptr @.str.420, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../sound/soc/codecs/rt5670.c", i32 1132, i32 2}
!920 = !{ptr @lout_l_enable_control, !921, !"lout_l_enable_control", i1 false, i1 false}
!921 = !{!"../sound/soc/codecs/rt5670.c", i32 1131, i32 38}
!922 = !{ptr @lout_r_enable_control, !923, !"lout_r_enable_control", i1 false, i1 false}
!923 = !{!"../sound/soc/codecs/rt5670.c", i32 1135, i32 38}
!924 = !{ptr @.str.423, !925, !"<string literal>", i1 false, i1 false}
!925 = !{!"../sound/soc/codecs/rt5670.c", i32 1374, i32 2}
!926 = !{ptr @rt5670_pdm1_l_mux, !927, !"rt5670_pdm1_l_mux", i1 false, i1 false}
!927 = !{!"../sound/soc/codecs/rt5670.c", i32 1373, i32 38}
!928 = !{ptr @rt5670_pdm1_l_enum, !929, !"rt5670_pdm1_l_enum", i1 false, i1 false}
!929 = !{!"../sound/soc/codecs/rt5670.c", i32 1370, i32 8}
!930 = !{ptr @.str.424, !931, !"<string literal>", i1 false, i1 false}
!931 = !{!"../sound/soc/codecs/rt5670.c", i32 1367, i32 2}
!932 = !{ptr @.str.425, !933, !"<string literal>", i1 false, i1 false}
!933 = !{!"../sound/soc/codecs/rt5670.c", i32 1367, i32 14}
!934 = !{ptr @rt5670_pdm_src, !935, !"rt5670_pdm_src", i1 false, i1 false}
!935 = !{!"../sound/soc/codecs/rt5670.c", i32 1366, i32 27}
!936 = !{ptr @.str.426, !937, !"<string literal>", i1 false, i1 false}
!937 = !{!"../sound/soc/codecs/rt5670.c", i32 1380, i32 2}
!938 = !{ptr @rt5670_pdm1_r_mux, !939, !"rt5670_pdm1_r_mux", i1 false, i1 false}
!939 = !{!"../sound/soc/codecs/rt5670.c", i32 1379, i32 38}
!940 = !{ptr @rt5670_pdm1_r_enum, !941, !"rt5670_pdm1_r_enum", i1 false, i1 false}
!941 = !{!"../sound/soc/codecs/rt5670.c", i32 1376, i32 8}
!942 = !{ptr @rt5670_dapm_routes, !943, !"rt5670_dapm_routes", i1 false, i1 false}
!943 = !{!"../sound/soc/codecs/rt5670.c", i32 1971, i32 40}
!944 = !{ptr @.str.427, !945, !"<string literal>", i1 false, i1 false}
!945 = !{!"../sound/soc/codecs/rt5670.c", i32 2744, i32 3}
!946 = !{ptr @.str.428, !945, !"<string literal>", i1 false, i1 false}
!947 = !{ptr @rt5670_probe._entry, !945, !"_entry", i1 false, i1 false}
!948 = !{ptr @rt5670_probe._entry_ptr, !945, !"_entry_ptr", i1 false, i1 false}
!949 = !{ptr @.str.429, !950, !"<string literal>", i1 false, i1 false}
!950 = !{!"../sound/soc/codecs/rt5670.c", i32 1949, i32 2}
!951 = !{ptr @.str.430, !952, !"<string literal>", i1 false, i1 false}
!952 = !{!"../sound/soc/codecs/rt5670.c", i32 1951, i32 2}
!953 = !{ptr @.str.431, !954, !"<string literal>", i1 false, i1 false}
!954 = !{!"../sound/soc/codecs/rt5670.c", i32 1953, i32 2}
!955 = !{ptr @.str.432, !956, !"<string literal>", i1 false, i1 false}
!956 = !{!"../sound/soc/codecs/rt5670.c", i32 1955, i32 2}
!957 = !{ptr @.str.433, !958, !"<string literal>", i1 false, i1 false}
!958 = !{!"../sound/soc/codecs/rt5670.c", i32 1956, i32 2}
!959 = !{ptr @.str.434, !960, !"<string literal>", i1 false, i1 false}
!960 = !{!"../sound/soc/codecs/rt5670.c", i32 1957, i32 2}
!961 = !{ptr @.str.435, !962, !"<string literal>", i1 false, i1 false}
!962 = !{!"../sound/soc/codecs/rt5670.c", i32 1958, i32 2}
!963 = !{ptr @rt5670_specific_dapm_widgets, !964, !"rt5670_specific_dapm_widgets", i1 false, i1 false}
!964 = !{!"../sound/soc/codecs/rt5670.c", i32 1948, i32 41}
!965 = !{ptr @.str.437, !966, !"<string literal>", i1 false, i1 false}
!966 = !{!"../sound/soc/codecs/rt5670.c", i32 1386, i32 2}
!967 = !{ptr @rt5670_pdm2_l_mux, !968, !"rt5670_pdm2_l_mux", i1 false, i1 false}
!968 = !{!"../sound/soc/codecs/rt5670.c", i32 1385, i32 38}
!969 = !{ptr @rt5670_pdm2_l_enum, !970, !"rt5670_pdm2_l_enum", i1 false, i1 false}
!970 = !{!"../sound/soc/codecs/rt5670.c", i32 1382, i32 8}
!971 = !{ptr @.str.438, !972, !"<string literal>", i1 false, i1 false}
!972 = !{!"../sound/soc/codecs/rt5670.c", i32 1392, i32 2}
!973 = !{ptr @rt5670_pdm2_r_mux, !974, !"rt5670_pdm2_r_mux", i1 false, i1 false}
!974 = !{!"../sound/soc/codecs/rt5670.c", i32 1391, i32 38}
!975 = !{ptr @rt5670_pdm2_r_enum, !976, !"rt5670_pdm2_r_enum", i1 false, i1 false}
!976 = !{!"../sound/soc/codecs/rt5670.c", i32 1388, i32 8}
!977 = !{ptr @rt5670_specific_dapm_routes, !978, !"rt5670_specific_dapm_routes", i1 false, i1 false}
!978 = !{!"../sound/soc/codecs/rt5670.c", i32 2344, i32 40}
!979 = !{ptr @.str.439, !980, !"<string literal>", i1 false, i1 false}
!980 = !{!"../sound/soc/codecs/rt5670.c", i32 1962, i32 2}
!981 = !{ptr @.str.440, !982, !"<string literal>", i1 false, i1 false}
!982 = !{!"../sound/soc/codecs/rt5670.c", i32 1965, i32 2}
!983 = !{ptr @.str.441, !984, !"<string literal>", i1 false, i1 false}
!984 = !{!"../sound/soc/codecs/rt5670.c", i32 1966, i32 2}
!985 = !{ptr @.str.442, !986, !"<string literal>", i1 false, i1 false}
!986 = !{!"../sound/soc/codecs/rt5670.c", i32 1967, i32 2}
!987 = !{ptr @.str.443, !988, !"<string literal>", i1 false, i1 false}
!988 = !{!"../sound/soc/codecs/rt5670.c", i32 1968, i32 2}
!989 = !{ptr @rt5672_specific_dapm_widgets, !990, !"rt5672_specific_dapm_widgets", i1 false, i1 false}
!990 = !{!"../sound/soc/codecs/rt5670.c", i32 1961, i32 41}
!991 = !{ptr @rt5672_specific_dapm_routes, !992, !"rt5672_specific_dapm_routes", i1 false, i1 false}
!992 = !{!"../sound/soc/codecs/rt5670.c", i32 2357, i32 40}
!993 = !{ptr @.str.445, !994, !"<string literal>", i1 false, i1 false}
!994 = !{!"../sound/soc/codecs/rt5670.c", i32 2514, i32 3}
!995 = !{ptr @.str.446, !994, !"<string literal>", i1 false, i1 false}
!996 = !{ptr @rt5670_set_codec_sysclk._entry, !994, !"_entry", i1 false, i1 false}
!997 = !{ptr @rt5670_set_codec_sysclk._entry_ptr, !994, !"_entry_ptr", i1 false, i1 false}
!998 = !{ptr @.str.447, !999, !"<string literal>", i1 false, i1 false}
!999 = !{!"../sound/soc/codecs/rt5670.c", i32 2523, i32 2}
!1000 = !{ptr @.str.448, !999, !"<string literal>", i1 false, i1 false}
!1001 = !{ptr @rt5670_set_codec_sysclk.__UNIQUE_ID_ddebug301, !999, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!1002 = !{ptr @.str.449, !1003, !"<string literal>", i1 false, i1 false}
!1003 = !{!"../sound/soc/codecs/rt5670.c", i32 2799, i32 11}
!1004 = !{ptr @.str.450, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../sound/soc/codecs/rt5670.c", i32 2819, i32 11}
!1006 = !{ptr @rt5670_dai, !1007, !"rt5670_dai", i1 false, i1 false}
!1007 = !{!"../sound/soc/codecs/rt5670.c", i32 2797, i32 34}
!1008 = !{ptr @rt5670_aif_dai_ops, !1009, !"rt5670_aif_dai_ops", i1 false, i1 false}
!1009 = !{!"../sound/soc/codecs/rt5670.c", i32 2789, i32 37}
!1010 = !{ptr @.str.451, !1011, !"<string literal>", i1 false, i1 false}
!1011 = !{!"../sound/soc/codecs/rt5670.c", i32 2541, i32 3}
!1012 = !{ptr @.str.452, !1011, !"<string literal>", i1 false, i1 false}
!1013 = !{ptr @rt5670_set_dai_pll.__UNIQUE_ID_ddebug302, !1011, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!1014 = !{ptr @.str.453, !1015, !"<string literal>", i1 false, i1 false}
!1015 = !{!"../sound/soc/codecs/rt5670.c", i32 2569, i32 4}
!1016 = !{ptr @rt5670_set_dai_pll._entry, !1015, !"_entry", i1 false, i1 false}
!1017 = !{ptr @rt5670_set_dai_pll._entry_ptr, !1015, !"_entry_ptr", i1 false, i1 false}
!1018 = !{ptr @.str.455, !1019, !"<string literal>", i1 false, i1 false}
!1019 = !{!"../sound/soc/codecs/rt5670.c", i32 2574, i32 3}
!1020 = !{ptr @rt5670_set_dai_pll._entry.454, !1019, !"_entry", i1 false, i1 false}
!1021 = !{ptr @rt5670_set_dai_pll._entry_ptr.456, !1019, !"_entry_ptr", i1 false, i1 false}
!1022 = !{ptr @.str.458, !1023, !"<string literal>", i1 false, i1 false}
!1023 = !{!"../sound/soc/codecs/rt5670.c", i32 2580, i32 3}
!1024 = !{ptr @rt5670_set_dai_pll._entry.457, !1023, !"_entry", i1 false, i1 false}
!1025 = !{ptr @rt5670_set_dai_pll._entry_ptr.459, !1023, !"_entry_ptr", i1 false, i1 false}
!1026 = !{ptr @.str.460, !1027, !"<string literal>", i1 false, i1 false}
!1027 = !{!"../sound/soc/codecs/rt5670.c", i32 2584, i32 2}
!1028 = !{ptr @rt5670_set_dai_pll.__UNIQUE_ID_ddebug303, !1027, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!1029 = !{ptr @.str.461, !1030, !"<string literal>", i1 false, i1 false}
!1030 = !{!"../sound/soc/codecs/rt5670.c", i32 2651, i32 2}
!1031 = !{ptr @.str.462, !1030, !"<string literal>", i1 false, i1 false}
!1032 = !{ptr @rt5670_set_bclk_ratio.__UNIQUE_ID_ddebug304, !1030, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!1033 = !{ptr @.str.463, !1034, !"<string literal>", i1 false, i1 false}
!1034 = !{!"../sound/soc/codecs/rt5670.c", i32 2491, i32 3}
!1035 = !{ptr @rt5670_set_dai_fmt._entry, !1034, !"_entry", i1 false, i1 false}
!1036 = !{ptr @rt5670_set_dai_fmt._entry_ptr, !1034, !"_entry_ptr", i1 false, i1 false}
!1037 = !{ptr @.str.464, !1038, !"<string literal>", i1 false, i1 false}
!1038 = !{!"../sound/soc/codecs/rt5670.c", i32 2377, i32 3}
!1039 = !{ptr @.str.465, !1038, !"<string literal>", i1 false, i1 false}
!1040 = !{ptr @rt5670_hw_params._entry, !1038, !"_entry", i1 false, i1 false}
!1041 = !{ptr @rt5670_hw_params._entry_ptr, !1038, !"_entry_ptr", i1 false, i1 false}
!1042 = !{ptr @.str.467, !1043, !"<string literal>", i1 false, i1 false}
!1043 = !{!"../sound/soc/codecs/rt5670.c", i32 2383, i32 3}
!1044 = !{ptr @rt5670_hw_params._entry.466, !1043, !"_entry", i1 false, i1 false}
!1045 = !{ptr @rt5670_hw_params._entry_ptr.468, !1043, !"_entry_ptr", i1 false, i1 false}
!1046 = !{ptr @.str.469, !1047, !"<string literal>", i1 false, i1 false}
!1047 = !{!"../sound/soc/codecs/rt5670.c", i32 2389, i32 2}
!1048 = !{ptr @rt5670_hw_params.__UNIQUE_ID_ddebug299, !1047, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!1049 = !{ptr @.str.470, !1050, !"<string literal>", i1 false, i1 false}
!1050 = !{!"../sound/soc/codecs/rt5670.c", i32 2391, i32 2}
!1051 = !{ptr @rt5670_hw_params.__UNIQUE_ID_ddebug300, !1050, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!1052 = !{ptr @rt5670_hw_params._entry.471, !1053, !"_entry", i1 false, i1 false}
!1053 = !{!"../sound/soc/codecs/rt5670.c", i32 2428, i32 3}
!1054 = !{ptr @rt5670_hw_params._entry_ptr.472, !1053, !"_entry_ptr", i1 false, i1 false}
!1055 = !{ptr @rt5670_i2c_id, !1056, !"rt5670_i2c_id", i1 false, i1 false}
!1056 = !{!"../sound/soc/codecs/rt5670.c", i32 2874, i32 35}
!1057 = !{i32 1, !"wchar_size", i32 2}
!1058 = !{i32 1, !"min_enum_size", i32 4}
!1059 = !{i32 8, !"branch-target-enforcement", i32 0}
!1060 = !{i32 8, !"sign-return-address", i32 0}
!1061 = !{i32 8, !"sign-return-address-all", i32 0}
!1062 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1063 = !{i32 7, !"uwtable", i32 1}
!1064 = !{i32 7, !"frame-pointer", i32 2}
!1065 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1066 = !{!"auto-init"}
!1067 = !{i8 0, i8 2}
!1068 = !{i64 2149055278, i64 2149055283, i64 2149055296, i64 2149055340, i64 2149055374, i64 2149055395}
!1069 = !{i32 0, i32 33}
