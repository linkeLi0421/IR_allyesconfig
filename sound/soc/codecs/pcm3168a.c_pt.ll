; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/pcm3168a.c_pt.bc'
source_filename = "../sound/soc/codecs/pcm3168a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcm3168a_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm3168a_regmap\09\09\09\09"
module asm "\09.long\09__crc_pcm3168a_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm3168a_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm3168a_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_pcm3168a_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcm3168a_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm3168a_probe\09\09\09\09"
module asm "\09.long\09__crc_pcm3168a_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm3168a_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm3168a_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pcm3168a_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcm3168a_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm3168a_remove\09\09\09\09"
module asm "\09.long\09__crc_pcm3168a_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm3168a_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm3168a_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pcm3168a_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcm3168a_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm3168a_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_pcm3168a_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm3168a_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm3168a_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pcm3168a_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pcm3168a_priv = type { [6 x %struct.regulator_bulk_data], ptr, ptr, ptr, i32, [2 x %struct.pcm3168a_io_params], [2 x %struct.snd_soc_dai_driver] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.pcm3168a_io_params = type { i8, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@pcm3168a_reg_default = internal constant { [31 x %struct.reg_default], [40 x i8] } { [31 x %struct.reg_default] [%struct.reg_default { i32 64, i32 192 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 255 }, %struct.reg_default { i32 72, i32 255 }, %struct.reg_default { i32 73, i32 255 }, %struct.reg_default { i32 74, i32 255 }, %struct.reg_default { i32 75, i32 255 }, %struct.reg_default { i32 76, i32 255 }, %struct.reg_default { i32 77, i32 255 }, %struct.reg_default { i32 78, i32 255 }, %struct.reg_default { i32 79, i32 255 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 211 }, %struct.reg_default { i32 89, i32 211 }, %struct.reg_default { i32 90, i32 211 }, %struct.reg_default { i32 91, i32 211 }, %struct.reg_default { i32 92, i32 211 }, %struct.reg_default { i32 93, i32 211 }, %struct.reg_default { i32 94, i32 211 }], [40 x i8] zeroinitializer }, align 32
@pcm3168a_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @pcm3168a_writeable_register, ptr @pcm3168a_readable_register, ptr @pcm3168a_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 94, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm3168a_reg_default, i32 31, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_pcm3168a_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm3168a_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm3168a_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm3168a_regmap to i32), ptr @__kstrtab_pcm3168a_regmap, ptr @__kstrtabns_pcm3168a_regmap }, section "___ksymtab_gpl+pcm3168a_regmap", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to acquire RST gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scki\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to acquire clock 'scki'\0A\00", [32 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 765, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable mclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcm3168a_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/pcm3168a.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry_ptr = internal global ptr @pcm3168a_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request supplies\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 784, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry_ptr.12 = internal global ptr @pcm3168a_probe._entry.10, section ".printk_index", align 4
@pcm3168a_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 791, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry_ptr.15 = internal global ptr @pcm3168a_probe._entry.13, section ".printk_index", align 4
@pcm3168a_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 804, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry_ptr.18 = internal global ptr @pcm3168a_probe._entry.16, section ".printk_index", align 4
@pcm3168a_dais = internal constant { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.28, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pcm3168a_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 4294967364, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.30, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pcm3168a_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 4294967364, i32 2046, i32 0, i32 0, i32 1, i32 6, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@pcm3168a_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @pcm3168a_snd_controls, i32 38, ptr @pcm3168a_dapm_widgets, i32 21, ptr @pcm3168a_dapm_routes, i32 14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 818, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm3168a_probe._entry_ptr.21 = internal global ptr @pcm3168a_probe._entry.19, section ".printk_index", align 4
@__kstrtab_pcm3168a_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm3168a_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm3168a_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm3168a_probe to i32), ptr @__kstrtab_pcm3168a_probe, ptr @__kstrtabns_pcm3168a_probe }, section "___ksymtab_gpl+pcm3168a_probe", align 4
@__kstrtab_pcm3168a_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm3168a_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm3168a_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm3168a_remove to i32), ptr @__kstrtab_pcm3168a_remove, ptr @__kstrtabns_pcm3168a_remove }, section "___ksymtab_gpl+pcm3168a_remove", align 4
@pcm3168a_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm3168a_rt_suspend, ptr @pcm3168a_rt_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pcm3168a_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm3168a_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm3168a_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm3168a_pm_ops to i32), ptr @__kstrtab_pcm3168a_pm_ops, ptr @__kstrtabns_pcm3168a_pm_ops }, section "___ksymtab_gpl+pcm3168a_pm_ops", align 4
@__UNIQUE_ID_description295 = internal constant [51 x i8] c"snd_soc_pcm3168a.description=PCM3168A codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [67 x i8] c"snd_soc_pcm3168a.author=Damien Horsley <Damien.Horsley@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [56 x i8] c"snd_soc_pcm3168a.file=sound/soc/codecs/snd-soc-pcm3168a\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [32 x i8] c"snd_soc_pcm3168a.license=GPL v2\00", section ".modinfo", align 1
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCCAD1\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCCAD2\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCCDA1\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCCDA2\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcm3168a-dac\00", [19 x i8] zeroinitializer }, align 32
@pcm3168a_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @pcm3168a_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @pcm3168a_set_dai_fmt, ptr null, ptr @pcm3168a_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm3168a_mute, ptr null, ptr null, ptr @pcm3168a_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm3168a_dai_formats, i32 2, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcm3168a-adc\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@pcm3168a_dai_formats = internal global { [2 x i64], [16 x i8] } { [2 x i64] [i64 10, i64 52], [16 x i8] zeroinitializer }, align 32
@pcm3168a_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 380, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported dai format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcm3168a_set_dai_fmt\00", [43 x i8] zeroinitializer }, align 32
@pcm3168a_set_dai_fmt._entry_ptr = internal global ptr @pcm3168a_set_dai_fmt._entry, section ".printk_index", align 4
@pcm3168a_set_dai_fmt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 392, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported master/slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm3168a_set_dai_fmt._entry_ptr.36 = internal global ptr @pcm3168a_set_dai_fmt._entry.34, section ".printk_index", align 4
@pcm3168a_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 434, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bad tdm mask tx: 0x%08x rx: 0x%08x slots %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcm3168a_set_tdm_slot\00", [42 x i8] zeroinitializer }, align 32
@pcm3168a_set_tdm_slot._entry_ptr = internal global ptr @pcm3168a_set_tdm_slot._entry, section ".printk_index", align 4
@pcm3168a_set_tdm_slot._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.6, i32 441, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported slot_width %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm3168a_set_tdm_slot._entry_ptr.41 = internal global ptr @pcm3168a_set_tdm_slot._entry.39, section ".printk_index", align 4
@pcm3168a_scki_ratios = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 768, i32 512, i32 384, i32 256, i32 192, i32 128], [40 x i8] zeroinitializer }, align 32
@pcm3168a_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 496, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported sysclk ratio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcm3168a_hw_params\00", [45 x i8] zeroinitializer }, align 32
@pcm3168a_hw_params._entry_ptr = internal global ptr @pcm3168a_hw_params._entry, section ".printk_index", align 4
@pcm3168a_hw_params._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 508, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"16-bit slots are supported only for slave mode using right justified\0A\00", [58 x i8] zeroinitializer }, align 32
@pcm3168a_hw_params._entry_ptr.46 = internal global ptr @pcm3168a_hw_params._entry.44, section ".printk_index", align 4
@pcm3168a_hw_params._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.6, i32 515, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"24-bit slots not supported in master mode, or slave mode using DSP\0A\00", [60 x i8] zeroinitializer }, align 32
@pcm3168a_hw_params._entry_ptr.49 = internal global ptr @pcm3168a_hw_params._entry.47, section ".printk_index", align 4
@pcm3168a_hw_params._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.6, i32 522, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm3168a_hw_params._entry_ptr.52 = internal global ptr @pcm3168a_hw_params._entry.50, section ".printk_index", align 4
@pcm3168a_hw_params._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.6, i32 551, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TDM is supported under DSP/I2S/Left_J only\0A\00", [52 x i8] zeroinitializer }, align 32
@pcm3168a_hw_params._entry_ptr.55 = internal global ptr @pcm3168a_hw_params._entry.53, section ".printk_index", align 4
@pcm3168a_snd_controls = internal constant { [38 x %struct.snd_kcontrol_new], [448 x i8] } { [38 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_d1_roll_off to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_d2_roll_off to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_d3_roll_off to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_d4_roll_off to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_dac_volume_type to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_dac_att_mult to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_dac_demp to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_dac_zf_func to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_dac_zf_pol to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_adc1_con to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_adc2_con to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_adc3_con to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_adc_volume_type to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_adc_att_mult to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm3168a_adc_ov_pol to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.96 { ptr @pcm3168a_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }], [448 x i8] zeroinitializer }, align 32
@pcm3168a_dapm_routes = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Power-Save Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC1 Digital Filter roll-off\00", [35 x i8] zeroinitializer }, align 32
@pcm3168a_d1_roll_off = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 0, i8 0, i32 2, i32 1, ptr @pcm3168a_roll_off, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC2 Digital Filter roll-off\00", [35 x i8] zeroinitializer }, align 32
@pcm3168a_d2_roll_off = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 1, i8 1, i32 2, i32 1, ptr @pcm3168a_roll_off, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC3 Digital Filter roll-off\00", [35 x i8] zeroinitializer }, align 32
@pcm3168a_d3_roll_off = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 2, i8 2, i32 2, i32 1, ptr @pcm3168a_roll_off, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC4 Digital Filter roll-off\00", [35 x i8] zeroinitializer }, align 32
@pcm3168a_d4_roll_off = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 3, i8 3, i32 2, i32 1, ptr @pcm3168a_roll_off, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC1 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC2 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC3 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC4 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 6, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC Volume Control Type\00", [40 x i8] zeroinitializer }, align 32
@pcm3168a_dac_volume_type = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 7, i8 7, i32 2, i32 1, ptr @pcm3168a_volume_type, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAC Volume Rate Multiplier\00", [37 x i8] zeroinitializer }, align 32
@pcm3168a_dac_att_mult = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 6, i8 6, i32 2, i32 1, ptr @pcm3168a_att_speed_mult, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC De-Emphasis\00", [16 x i8] zeroinitializer }, align 32
@pcm3168a_dac_demp = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 4, i8 4, i32 4, i32 3, ptr @pcm3168a_demp, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC Zero Flag Function\00", [41 x i8] zeroinitializer }, align 32
@pcm3168a_dac_zf_func = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 1, i8 1, i32 6, i32 7, ptr @pcm3168a_zf_func, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC Zero Flag Polarity\00", [41 x i8] zeroinitializer }, align 32
@pcm3168a_dac_zf_pol = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 6, i8 6, i32 2, i32 1, ptr @pcm3168a_pol, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@pcm3168a_dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10050, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 54, i32 255, i32 255, i32 71, i32 71, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 54, i32 255, i32 255, i32 72, i32 73, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 54, i32 255, i32 255, i32 74, i32 75, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC3 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 54, i32 255, i32 255, i32 76, i32 77, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC4 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 54, i32 255, i32 255, i32 78, i32 79, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ADC1 High-Pass Filter Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ADC2 High-Pass Filter Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ADC3 High-Pass Filter Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC1 Connection Type\00", [43 x i8] zeroinitializer }, align 32
@pcm3168a_adc1_con = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 83, i8 0, i8 1, i32 2, i32 1, ptr @pcm3168a_con, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC2 Connection Type\00", [43 x i8] zeroinitializer }, align 32
@pcm3168a_adc2_con = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 83, i8 2, i8 3, i32 2, i32 1, ptr @pcm3168a_con, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC3 Connection Type\00", [43 x i8] zeroinitializer }, align 32
@pcm3168a_adc3_con = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 83, i8 4, i8 5, i32 2, i32 1, ptr @pcm3168a_con, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC1 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC2 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC3 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC1 Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 85, i32 85, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC2 Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 85, i32 85, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC3 Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 85, i32 85, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC Volume Control Type\00", [40 x i8] zeroinitializer }, align 32
@pcm3168a_adc_volume_type = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 87, i8 7, i8 7, i32 2, i32 1, ptr @pcm3168a_volume_type, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC Volume Rate Multiplier\00", [37 x i8] zeroinitializer }, align 32
@pcm3168a_adc_att_mult = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 87, i8 6, i8 6, i32 2, i32 1, ptr @pcm3168a_att_speed_mult, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC Overflow Flag Polarity\00", [37 x i8] zeroinitializer }, align 32
@pcm3168a_adc_ov_pol = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 87, i8 0, i8 0, i32 2, i32 1, ptr @pcm3168a_pol, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@pcm3168a_adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10050, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 14, i32 255, i32 255, i32 88, i32 88, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 14, i32 255, i32 255, i32 89, i32 90, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 14, i32 255, i32 255, i32 91, i32 92, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC3 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 14, i32 255, i32 255, i32 93, i32 94, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@pcm3168a_roll_off = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.116, ptr @.str.117], [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Sharp\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Slow\00", [27 x i8] zeroinitializer }, align 32
@pcm3168a_volume_type = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.118, ptr @.str.119], [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Individual\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Master + Individual\00", [44 x i8] zeroinitializer }, align 32
@pcm3168a_att_speed_mult = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.120, ptr @.str.121], [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2048\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4096\00", [27 x i8] zeroinitializer }, align 32
@pcm3168a_demp = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48khz\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1khz\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32khz\00", [26 x i8] zeroinitializer }, align 32
@pcm3168a_zf_func = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131], [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC 1/2/3/4 AND\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC 1/2/3/4 OR\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC 1/2/3 AND\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC 1/2/3 OR\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC 4 AND\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC 4 OR\00", [23 x i8] zeroinitializer }, align 32
@pcm3168a_pol = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.132, ptr @.str.133], [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Active High\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Active Low\00", [21 x i8] zeroinitializer }, align 32
@pcm3168a_con = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.134, ptr @.str.135], [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Differential\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Single-Ended\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC2\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC3\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC4\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT1L\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT1R\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT2L\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT2R\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT3L\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT3R\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT4L\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AOUT4R\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1L\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1R\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2L\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2R\00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN3L\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN3R\00", [26 x i8] zeroinitializer }, align 32
@pcm3168a_dapm_widgets = internal constant { [21 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [956 x i8] } { [21 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.136, ptr @.str.29, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 66, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.137, ptr @.str.29, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 66, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.138, ptr @.str.29, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 66, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.139, ptr @.str.29, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 66, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.148, ptr @.str.31, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.149, ptr @.str.31, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.150, ptr @.str.31, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [956 x i8] zeroinitializer }, align 32
@pcm3168a_rt_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.158, ptr @.str.6, i32 869, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcm3168a_rt_resume\00", [45 x i8] zeroinitializer }, align 32
@pcm3168a_rt_resume._entry_ptr = internal global ptr @pcm3168a_rt_resume._entry, section ".printk_index", align 4
@pcm3168a_rt_resume._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.6, i32 876, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm3168a_rt_resume._entry_ptr.161 = internal global ptr @pcm3168a_rt_resume._entry.159, section ".printk_index", align 4
@pcm3168a_rt_resume._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.158, ptr @.str.6, i32 882, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@pcm3168a_rt_resume._entry_ptr.163 = internal global ptr @pcm3168a_rt_resume._entry.162, section ".printk_index", align 4
@pcm3168a_rt_resume._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.158, ptr @.str.6, i32 892, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to sync regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm3168a_rt_resume._entry_ptr.166 = internal global ptr @pcm3168a_rt_resume._entry.164, section ".printk_index", align 4
@switch.table.pcm3168a_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.pcm3168a_hw_params = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6, i32 7, i32 6, i32 6, i32 6, i32 7], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.167 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 192]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"pcm3168a_reg_default\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 638, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"pcm3168a_regmap\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 706, i32 28 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 751, i32 52 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 756, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 758, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 761, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 765, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 777, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 784, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 791, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 804, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"pcm3168a_dais\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 611, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"pcm3168a_driver\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 720, i32 46 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 818, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"pcm3168a_pm_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 919, i32 25 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 40, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 41, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 42, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 43, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 44, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 45, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 613, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"pcm3168a_dai_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 600, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 616, i32 19 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 625, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 628, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant [21 x i8] c"pcm3168a_dai_formats\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 576, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 380, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 392, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 432, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 440, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"pcm3168a_scki_ratios\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 264, i32 21 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 496, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 508, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 515, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 522, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 550, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant [22 x i8] c"pcm3168a_snd_controls\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 135, i32 38 }
@___asan_gen_.348 = private unnamed_addr constant [21 x i8] c"pcm3168a_dapm_routes\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 239, i32 40 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 136, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 138, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [21 x i8] c"pcm3168a_d1_roll_off\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 73, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 139, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"pcm3168a_d2_roll_off\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 75, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 140, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [21 x i8] c"pcm3168a_d3_roll_off\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 77, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 141, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"pcm3168a_d4_roll_off\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 79, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 142, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 143, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 144, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 145, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 146, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [25 x i8] c"pcm3168a_dac_volume_type\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 85, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 147, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [22 x i8] c"pcm3168a_dac_att_mult\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 90, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 148, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [18 x i8] c"pcm3168a_dac_demp\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 96, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 149, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [21 x i8] c"pcm3168a_dac_zf_func\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 103, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 150, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c"pcm3168a_dac_zf_pol\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 108, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 151, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"pcm3168a_dac_tlv\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 130, i32 14 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 154, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 158, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 162, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 166, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 170, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 172, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 174, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 176, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [18 x i8] c"pcm3168a_adc1_con\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 113, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 177, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [18 x i8] c"pcm3168a_adc2_con\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 115, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 178, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [18 x i8] c"pcm3168a_adc3_con\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 117, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 179, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 180, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 181, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 182, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 183, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 184, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 185, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [25 x i8] c"pcm3168a_adc_volume_type\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 120, i32 8 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 186, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [22 x i8] c"pcm3168a_adc_att_mult\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 123, i32 8 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 187, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c"pcm3168a_adc_ov_pol\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 126, i32 8 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 188, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"pcm3168a_adc_tlv\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 133, i32 14 }
@___asan_gen_.526 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 191, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 195, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 199, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [18 x i8] c"pcm3168a_roll_off\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 71, i32 26 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 71, i32 50 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 71, i32 59 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c"pcm3168a_volume_type\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 82, i32 26 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 83, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 83, i32 17 }
@___asan_gen_.557 = private unnamed_addr constant [24 x i8] c"pcm3168a_att_speed_mult\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 88, i32 26 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 88, i32 56 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 88, i32 64 }
@___asan_gen_.566 = private unnamed_addr constant [14 x i8] c"pcm3168a_demp\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 93, i32 26 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 94, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 94, i32 15 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 94, i32 24 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 94, i32 35 }
@___asan_gen_.581 = private unnamed_addr constant [17 x i8] c"pcm3168a_zf_func\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 99, i32 26 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 100, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 100, i32 22 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 100, i32 40 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 101, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 101, i32 19 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 101, i32 32 }
@___asan_gen_.602 = private unnamed_addr constant [13 x i8] c"pcm3168a_pol\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 106, i32 26 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 106, i32 45 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 106, i32 60 }
@___asan_gen_.611 = private unnamed_addr constant [13 x i8] c"pcm3168a_con\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 111, i32 26 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 111, i32 45 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 111, i32 61 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 206, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 208, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 210, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 212, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 215, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 216, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 217, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 218, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 219, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 220, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 221, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 222, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 224, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 226, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 228, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 231, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 232, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 233, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 234, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 235, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 236, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [22 x i8] c"pcm3168a_dapm_widgets\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 205, i32 41 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 869, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 876, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 882, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.705 = private constant [31 x i8] c"../sound/soc/codecs/pcm3168a.c\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 892, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant [34 x i8] c"switch.table.pcm3168a_set_dai_fmt\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [32 x i8] c"switch.table.pcm3168a_hw_params\00", align 1
@llvm.compiler.used = appending global [222 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_pcm3168a_pm_ops, ptr @__ksymtab_pcm3168a_probe, ptr @__ksymtab_pcm3168a_regmap, ptr @__ksymtab_pcm3168a_remove, ptr @pcm3168a_hw_params._entry, ptr @pcm3168a_hw_params._entry.44, ptr @pcm3168a_hw_params._entry.47, ptr @pcm3168a_hw_params._entry.50, ptr @pcm3168a_hw_params._entry.53, ptr @pcm3168a_hw_params._entry_ptr, ptr @pcm3168a_hw_params._entry_ptr.46, ptr @pcm3168a_hw_params._entry_ptr.49, ptr @pcm3168a_hw_params._entry_ptr.52, ptr @pcm3168a_hw_params._entry_ptr.55, ptr @pcm3168a_probe._entry, ptr @pcm3168a_probe._entry.10, ptr @pcm3168a_probe._entry.13, ptr @pcm3168a_probe._entry.16, ptr @pcm3168a_probe._entry.19, ptr @pcm3168a_probe._entry_ptr, ptr @pcm3168a_probe._entry_ptr.12, ptr @pcm3168a_probe._entry_ptr.15, ptr @pcm3168a_probe._entry_ptr.18, ptr @pcm3168a_probe._entry_ptr.21, ptr @pcm3168a_rt_resume._entry, ptr @pcm3168a_rt_resume._entry.159, ptr @pcm3168a_rt_resume._entry.162, ptr @pcm3168a_rt_resume._entry.164, ptr @pcm3168a_rt_resume._entry_ptr, ptr @pcm3168a_rt_resume._entry_ptr.161, ptr @pcm3168a_rt_resume._entry_ptr.163, ptr @pcm3168a_rt_resume._entry_ptr.166, ptr @pcm3168a_set_dai_fmt._entry, ptr @pcm3168a_set_dai_fmt._entry.34, ptr @pcm3168a_set_dai_fmt._entry_ptr, ptr @pcm3168a_set_dai_fmt._entry_ptr.36, ptr @pcm3168a_set_tdm_slot._entry, ptr @pcm3168a_set_tdm_slot._entry.39, ptr @pcm3168a_set_tdm_slot._entry_ptr, ptr @pcm3168a_set_tdm_slot._entry_ptr.41, ptr @pcm3168a_reg_default, ptr @pcm3168a_regmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @pcm3168a_dais, ptr @pcm3168a_driver, ptr @.str.20, ptr @pcm3168a_pm_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @pcm3168a_dai_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @pcm3168a_dai_formats, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @pcm3168a_scki_ratios, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @pcm3168a_snd_controls, ptr @pcm3168a_dapm_routes, ptr @.str.56, ptr @.compoundliteral, ptr @.str.57, ptr @pcm3168a_d1_roll_off, ptr @.str.58, ptr @pcm3168a_d2_roll_off, ptr @.str.59, ptr @pcm3168a_d3_roll_off, ptr @.str.60, ptr @pcm3168a_d4_roll_off, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @pcm3168a_dac_volume_type, ptr @.str.70, ptr @pcm3168a_dac_att_mult, ptr @.str.71, ptr @pcm3168a_dac_demp, ptr @.str.72, ptr @pcm3168a_dac_zf_func, ptr @.str.73, ptr @pcm3168a_dac_zf_pol, ptr @.str.74, ptr @pcm3168a_dac_tlv, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @pcm3168a_adc1_con, ptr @.str.91, ptr @pcm3168a_adc2_con, ptr @.str.92, ptr @pcm3168a_adc3_con, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @pcm3168a_adc_volume_type, ptr @.str.106, ptr @pcm3168a_adc_att_mult, ptr @.str.107, ptr @pcm3168a_adc_ov_pol, ptr @.str.108, ptr @pcm3168a_adc_tlv, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @pcm3168a_roll_off, ptr @.str.116, ptr @.str.117, ptr @pcm3168a_volume_type, ptr @.str.118, ptr @.str.119, ptr @pcm3168a_att_speed_mult, ptr @.str.120, ptr @.str.121, ptr @pcm3168a_demp, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @pcm3168a_zf_func, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @pcm3168a_pol, ptr @.str.132, ptr @.str.133, ptr @pcm3168a_con, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @pcm3168a_dapm_widgets, ptr @.str.158, ptr @.str.160, ptr @.str.165, ptr @switch.table.pcm3168a_set_dai_fmt, ptr @switch.table.pcm3168a_hw_params], section "llvm.metadata"
@0 = internal global [196 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_reg_default to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dais to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dai_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_set_dai_fmt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_set_tdm_slot._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_scki_ratios to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_hw_params._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_hw_params._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_hw_params._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_hw_params._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_snd_controls to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dapm_routes to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_d1_roll_off to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_d2_roll_off to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_d3_roll_off to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_d4_roll_off to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dac_volume_type to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dac_att_mult to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dac_demp to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dac_zf_func to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dac_zf_pol to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc1_con to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc2_con to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc3_con to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc_volume_type to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc_att_mult to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc_ov_pol to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_roll_off to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_volume_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_att_speed_mult to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_demp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_zf_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_pol to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_con to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_dapm_widgets to i32), i32 3780, i32 4736, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_rt_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_rt_resume._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_rt_resume._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm3168a_rt_resume._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcm3168a_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcm3168a_hw_params to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pcm3168a_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %reg)
  %cmp = icmp ult i32 %reg, 64
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %reg)
  %switch.selectcmp.case1 = icmp ne i32 %reg, 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %reg)
  %switch.selectcmp.case2 = icmp ne i32 %reg, 86
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %not.switch.selectcmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pcm3168a_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %reg)
  %cmp = icmp ugt i32 %reg, 63
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pcm3168a_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 23
  %switch.cast = trunc i32 %switch.tableidx to i23
  %switch.downshift = lshr i23 -4194271, %switch.cast
  %1 = and i23 %switch.downshift, 1
  %switch.masked = icmp ne i23 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcm3168a_probe(ptr noundef %dev, ptr noundef %regmap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 464, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call1 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 19) #5
  %gpio_rst = getelementptr inbounds %struct.pcm3168a_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %gpio_rst, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %2, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %scki = getelementptr inbounds %struct.pcm3168a_priv, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %scki to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %scki, align 4
  %cmp.i136 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call9 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call.i137 = tail call i32 @clk_prepare(ptr noundef %call9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.do.end_crit_edge

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call9) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end16.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i137, %if.end16.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %5 = ptrtoint ptr %scki to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scki, align 4
  %call22 = tail call i32 @clk_get_rate(ptr noundef %6) #5
  %sysclk = getelementptr inbounds %struct.pcm3168a_priv, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call22, ptr %sysclk, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.22, ptr %call.i, align 4
  %arrayidx24.1 = getelementptr [6 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.23, ptr %arrayidx24.1, align 4
  %arrayidx24.2 = getelementptr [6 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.24, ptr %arrayidx24.2, align 4
  %arrayidx24.3 = getelementptr [6 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.25, ptr %arrayidx24.3, align 4
  %arrayidx24.4 = getelementptr [6 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.26, ptr %arrayidx24.4, align 4
  %arrayidx24.5 = getelementptr [6 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.27, ptr %arrayidx24.5, align 4
  %call26 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call26, ptr noundef nonnull @.str.9) #5
  br label %err_clk

if.end30:                                         ; preds = %if.end20
  %call33 = tail call i32 @regulator_bulk_enable(i32 noundef 6, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call33) #8
  br label %err_clk

if.end39:                                         ; preds = %if.end30
  %regmap40 = getelementptr inbounds %struct.pcm3168a_priv, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %regmap40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %regmap, ptr %regmap40, align 8
  %cmp.i138 = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %regmap to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %15) #8
  br label %err_regulator

if.end49:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_rst, align 8
  %tobool51.not = icmp eq ptr %17, null
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysclk, align 4
  %sub = add i32 %19, 3845999
  %div = udiv i32 %sub, %19
  tail call void @msleep(i32 noundef %div) #5
  br label %if.end62

if.else:                                          ; preds = %if.end49
  %call55 = tail call fastcc i32 @pcm3168a_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else.if.end62_crit_edge, label %do.end60

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end60:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call55) #8
  br label %err_regulator

if.end62:                                         ; preds = %if.else.if.end62_crit_edge, %if.then52
  %call.i139 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %call.i140 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #5
  %dai_drv = getelementptr inbounds %struct.pcm3168a_priv, ptr %call.i, i32 0, i32 6
  %20 = call ptr @memcpy(ptr %dai_drv, ptr @pcm3168a_dais, i32 336)
  %call68 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @pcm3168a_driver, ptr noundef %dai_drv, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end62.cleanup_crit_edge, label %do.end73

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end73:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call68) #8
  br label %err_regulator

err_regulator:                                    ; preds = %do.end73, %do.end60, %if.then43
  %ret.0 = phi i32 [ %15, %if.then43 ], [ %call68, %do.end73 ], [ %call55, %do.end60 ]
  %call77 = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef nonnull %call.i) #5
  br label %err_clk

err_clk:                                          ; preds = %err_regulator, %do.end38, %if.then28
  %ret.1 = phi i32 [ %call26, %if.then28 ], [ %call33, %do.end38 ], [ %ret.0, %err_regulator ]
  %21 = ptrtoint ptr %scki to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scki, align 4
  tail call void @clk_disable(ptr noundef %22) #5
  tail call void @clk_unprepare(ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end62.cleanup_crit_edge, %do.end, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ %call15, %if.then12 ], [ %retval.0.i.ph, %do.end ], [ %ret.1, %err_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcm3168a_reset(ptr nocapture noundef readonly %pcm3168a) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.pcm3168a_priv, ptr %pcm3168a, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 64, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sysclk = getelementptr inbounds %struct.pcm3168a_priv, ptr %pcm3168a, i32 0, i32 4
  %2 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysclk, align 4
  %sub = add i32 %3, 3845999
  %div = udiv i32 %sub, %3
  tail call void @msleep(i32 noundef %div) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 64, i32 noundef 192) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcm3168a_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio_rst = getelementptr inbounds %struct.pcm3168a_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_rst, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_rt_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.pcm3168a_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #5
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %5) #5
  %scki.i = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %scki.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scki.i, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_rt_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %scki = getelementptr inbounds %struct.pcm3168a_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scki to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scki, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 6, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.160, i32 noundef %call2) #8
  br label %err_clk

if.end8:                                          ; preds = %if.end
  %regmap.i = getelementptr inbounds %struct.pcm3168a_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call.i50 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 64, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %pcm3168a_reset.exit, label %if.end8.do.end14_crit_edge

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

pcm3168a_reset.exit:                              ; preds = %if.end8
  %sysclk.i = getelementptr inbounds %struct.pcm3168a_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk.i, align 4
  %sub.i = add i32 %7, 3845999
  %div.i = udiv i32 %sub.i, %7
  tail call void @msleep(i32 noundef %div.i) #5
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 64, i32 noundef 192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool10.not = icmp eq i32 %call3.i, 0
  br i1 %tobool10.not, label %if.end15, label %pcm3168a_reset.exit.do.end14_crit_edge

pcm3168a_reset.exit.do.end14_crit_edge:           ; preds = %pcm3168a_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end14:                                         ; preds = %pcm3168a_reset.exit.do.end14_crit_edge, %if.end8.do.end14_crit_edge
  %retval.0.i5359 = phi i32 [ %call3.i, %pcm3168a_reset.exit.do.end14_crit_edge ], [ %call.i50, %if.end8.do.end14_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i5359) #8
  br label %err_regulator

if.end15:                                         ; preds = %pcm3168a_reset.exit
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext false) #5
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  tail call void @regcache_mark_dirty(ptr noundef %13) #5
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %call18 = tail call i32 @regcache_sync(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %do.end23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef %call18) #8
  br label %err_regulator

err_regulator:                                    ; preds = %do.end23, %do.end14
  %ret.0 = phi i32 [ %retval.0.i5359, %do.end14 ], [ %call18, %do.end23 ]
  %call27 = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %1) #5
  br label %err_clk

err_clk:                                          ; preds = %err_regulator, %do.end7
  %ret.1 = phi i32 [ %call2, %do.end7 ], [ %ret.0, %err_regulator ]
  %16 = ptrtoint ptr %scki to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scki, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %err_clk ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp = icmp eq i32 %freq, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %freq)
  %cmp1 = icmp ugt i32 %freq, 36864000
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %scki = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %scki to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scki, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %freq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %sysclk = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %format) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and = and i32 %format, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.pcm3168a_set_dai_fmt, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %8 = trunc i32 %format to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end12 [
    i16 16384, label %switch.lookup.sw.epilog14_crit_edge
    i16 4096, label %sw.bb8
  ]

switch.lookup.sw.epilog14_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14

do.end12:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #8
  br label %cleanup

sw.epilog14:                                      ; preds = %sw.bb8, %switch.lookup.sw.epilog14_crit_edge
  %master_mode.0.off0 = phi i1 [ true, %sw.bb8 ], [ false, %switch.lookup.sw.epilog14_crit_edge ]
  %and15 = and i32 %format, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cond = icmp eq i32 %and15, 0
  br i1 %cond, label %sw.epilog17, label %sw.epilog14.cleanup_crit_edge

sw.epilog14.cleanup_crit_edge:                    ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog17:                                      ; preds = %sw.epilog14
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %. = select i1 %cmp, i32 65, i32 81
  %.42 = select i1 %cmp, i32 15, i32 7
  %arrayidx = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %11
  %frombool = zext i1 %master_mode.0.off0 to i8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %fmt23 = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %14, i32 1
  %15 = ptrtoint ptr %fmt23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %fmt23, align 4
  %regmap = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %., i32 noundef %.42, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %18 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %component1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %cond.i = select i1 %cmp.i, i32 8, i32 6
  %fmt.i = getelementptr %struct.pcm3168a_priv, ptr %23, i32 0, i32 5, i32 %25, i32 1
  %26 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp3.i = icmp eq i32 %27, 2
  br i1 %cmp3.i, label %if.then.i, label %sw.epilog17.if.end9.i_crit_edge

sw.epilog17.if.end9.i_crit_edge:                  ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i:                                        ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #7
  %tdm_slots.i = getelementptr %struct.pcm3168a_priv, ptr %23, i32 0, i32 5, i32 %25, i32 2
  %28 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tdm_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp7.not.i = icmp eq i32 %29, 2
  %spec.select.i = select i1 %cmp7.not.i, i32 %cond.i, i32 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %sw.epilog17.if.end9.i_crit_edge
  %formats.0.i = phi i64 [ 4294967360, %sw.epilog17.if.end9.i_crit_edge ], [ 4294967364, %if.then.i ]
  %channel_max.0.i = phi i32 [ %cond.i, %sw.epilog17.if.end9.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %driver.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %30 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver.i, align 4
  br i1 %cmp.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %channels_max.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %31, i32 0, i32 11, i32 6
  %32 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %channel_max.0.i, ptr %channels_max.i, align 8
  %33 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver.i, align 4
  %formats15.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %34, i32 0, i32 11, i32 1
  br label %pcm3168a_update_fixup_pcm_stream.exit

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %channels_max17.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %31, i32 0, i32 10, i32 6
  %35 = ptrtoint ptr %channels_max17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %channel_max.0.i, ptr %channels_max17.i, align 8
  %36 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver.i, align 4
  %formats20.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %37, i32 0, i32 10, i32 1
  br label %pcm3168a_update_fixup_pcm_stream.exit

pcm3168a_update_fixup_pcm_stream.exit:            ; preds = %if.else.i, %if.then12.i
  %formats20.sink.i = phi ptr [ %formats20.i, %if.else.i ], [ %formats15.i, %if.then12.i ]
  %38 = ptrtoint ptr %formats20.sink.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %formats.0.i, ptr %formats20.sink.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %pcm3168a_update_fixup_pcm_stream.exit, %sw.epilog14.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %pcm3168a_update_fixup_pcm_stream.exit ], [ -22, %sw.epilog14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %shl = shl nuw i32 1, %slots
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %tx_mask)
  %cmp.not = icmp ugt i32 %shl, %tx_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %rx_mask)
  %cmp4.not = icmp ugt i32 %shl, %rx_mask
  %or.cond = and i1 %cmp.not, %cmp4.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.fshl.i32(i32 %slot_width, i32 %slot_width, i32 29)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %8, label %do.end13 [
    i32 0, label %if.end.if.end15_crit_edge
    i32 2, label %if.end.if.end15_crit_edge44
    i32 3, label %if.end.if.end15_crit_edge45
    i32 4, label %if.end.if.end15_crit_edge46
  ]

if.end.if.end15_crit_edge46:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.if.end15_crit_edge45:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.if.end15_crit_edge44:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %slot_width) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %if.end.if.end15_crit_edge44, %if.end.if.end15_crit_edge45, %if.end.if.end15_crit_edge46
  %tdm_slots = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7, i32 2
  %10 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %slots, ptr %tdm_slots, align 4
  %slot_width16 = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7, i32 4
  %11 = ptrtoint ptr %slot_width16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %slot_width, ptr %slot_width16, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18 = icmp eq i32 %13, 0
  %spec.select = select i1 %cmp18, i32 %tx_mask, i32 %rx_mask
  %14 = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %16 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %component1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %cond.i = select i1 %cmp.i, i32 8, i32 6
  %fmt.i = getelementptr %struct.pcm3168a_priv, ptr %21, i32 0, i32 5, i32 %23, i32 1
  %24 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp3.i = icmp eq i32 %25, 2
  br i1 %cmp3.i, label %if.then.i, label %if.end15.if.end9.i_crit_edge

if.end15.if.end9.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %tdm_slots.i = getelementptr %struct.pcm3168a_priv, ptr %21, i32 0, i32 5, i32 %23, i32 2
  %26 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tdm_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp7.not.i = icmp eq i32 %27, 2
  %spec.select.i = select i1 %cmp7.not.i, i32 %cond.i, i32 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %if.end15.if.end9.i_crit_edge
  %formats.0.i = phi i64 [ 4294967360, %if.end15.if.end9.i_crit_edge ], [ 4294967364, %if.then.i ]
  %channel_max.0.i = phi i32 [ %cond.i, %if.end15.if.end9.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %driver.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %28 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver.i, align 4
  br i1 %cmp.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %channels_max.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %29, i32 0, i32 11, i32 6
  %30 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %channel_max.0.i, ptr %channels_max.i, align 8
  %31 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver.i, align 4
  %formats15.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %32, i32 0, i32 11, i32 1
  br label %pcm3168a_update_fixup_pcm_stream.exit

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %channels_max17.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %29, i32 0, i32 10, i32 6
  %33 = ptrtoint ptr %channels_max17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %channel_max.0.i, ptr %channels_max17.i, align 8
  %34 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i, align 4
  %formats20.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %35, i32 0, i32 10, i32 1
  br label %pcm3168a_update_fixup_pcm_stream.exit

pcm3168a_update_fixup_pcm_stream.exit:            ; preds = %if.else.i, %if.then12.i
  %formats20.sink.i = phi ptr [ %formats20.i, %if.else.i ], [ %formats15.i, %if.then12.i ]
  %36 = ptrtoint ptr %formats20.sink.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %formats.0.i, ptr %formats20.sink.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %pcm3168a_update_fixup_pcm_stream.exit, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ 0, %pcm3168a_update_fixup_pcm_stream.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %regmap = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 68, i32 noundef %cond) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm3168a_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %arrayidx = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %sysclk = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysclk, align 4
  %div = udiv i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %. = select i1 %cmp, i32 65, i32 81
  %.122 = select i1 %cmp, i32 6, i32 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 4, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %fmt6 = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7, i32 1
  %14 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt6, align 4
  %16 = sub i32 %div, 256
  %17 = lshr i32 %16, 7
  %18 = shl i32 %16, 25
  %19 = or i32 %17, %18
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %19, label %for.inc.3 [
    i32 4, label %entry.for.end_crit_edge
    i32 2, label %for.end.fold.split
    i32 1, label %for.end.fold.split132
    i32 0, label %for.end.fold.split133
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.3:                                        ; preds = %entry
  br i1 %cmp, label %for.body.4, label %for.inc.3.do.end_crit_edge

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.4:                                       ; preds = %for.inc.3
  %21 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %div, label %for.body.4.do.end_crit_edge [
    i32 192, label %for.body.4.for.end_crit_edge
    i32 128, label %for.end.fold.split134
  ]

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.4.do.end_crit_edge:                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end.fold.split132:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end.fold.split133:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end.fold.split134:                            ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split134, %for.end.fold.split133, %for.end.fold.split132, %for.end.fold.split, %for.body.4.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0126.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 4, %for.body.4.for.end_crit_edge ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split132 ], [ 3, %for.end.fold.split133 ], [ 5, %for.end.fold.split134 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0126.lcssa, i32 %.122)
  %cmp12 = icmp eq i32 %i.0126.lcssa, %.122
  br i1 %cmp12, label %for.end.do.end_crit_edge, label %if.end14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.body.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42) #8
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %slot_width15 = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7, i32 4
  %22 = ptrtoint ptr %slot_width15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot_width15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not = icmp eq i32 %23, 0
  br i1 %tobool16.not, label %if.else19, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else19:                                        ; preds = %if.end14
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.else19.if.then.i.i.i_crit_edge

if.else19.if.then.i.i.i_crit_edge:                ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.else19.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.else19.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %25, %if.else19.if.then.i.i.i_crit_edge ], [ %28, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !363
  %add.i.i.i = or i32 %26, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.else19
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #5
  br label %if.end21

if.end21:                                         ; preds = %params_width.exit, %if.end14.if.end21_crit_edge
  %slot_width.0 = phi i32 [ %call1.i, %params_width.exit ], [ %23, %if.end14.if.end21_crit_edge ]
  %29 = zext i32 %slot_width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %slot_width.0, label %do.end42 [
    i32 16, label %sw.bb
    i32 24, label %sw.bb30
    i32 32, label %if.end21.sw.epilog_crit_edge
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp23.not = icmp eq i32 %15, 2
  %or.cond = select i1 %tobool.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %do.end27

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end27:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.45) #8
  br label %cleanup

sw.bb30:                                          ; preds = %if.end21
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %or.cond123 = select i1 %tobool.not, i1 %tobool33.not, i1 false
  br i1 %or.cond123, label %sw.bb30.sw.epilog_crit_edge, label %do.end37

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end37:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.48) #8
  br label %cleanup

do.end42:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef %slot_width.0) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb30.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge
  %fmt.0 = phi i32 [ %15, %if.end21.sw.epilog_crit_edge ], [ 3, %sw.bb.sw.epilog_crit_edge ], [ %15, %sw.bb30.sw.epilog_crit_edge ]
  %tdm_slots44 = getelementptr %struct.pcm3168a_priv, ptr %5, i32 0, i32 5, i32 %7, i32 2
  %36 = ptrtoint ptr %tdm_slots44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tdm_slots44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool45.not = icmp eq i32 %37, 0
  br i1 %tobool45.not, label %if.else48, label %sw.epilog.if.end50_crit_edge

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.else48:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i124 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i124, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %sw.epilog.if.end50_crit_edge
  %tdm_slots.0 = phi i32 [ %39, %if.else48 ], [ %37, %sw.epilog.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tdm_slots.0)
  %cmp51 = icmp ugt i32 %tdm_slots.0, 2
  br i1 %cmp51, label %if.then52, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %fmt.0)
  %40 = icmp ult i32 %fmt.0, 6
  br i1 %40, label %switch.hole_check, label %if.then52.do.end58_crit_edge

if.then52.do.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

do.end58:                                         ; preds = %switch.hole_check.do.end58_crit_edge, %if.then52.do.end58_crit_edge
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.54) #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.then52
  %switch.maskindex = trunc i32 %fmt.0 to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %43 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %switch.lobit.not = icmp eq i8 %43, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end58_crit_edge, label %switch.lookup

switch.hole_check.do.end58_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.pcm3168a_hw_params, i32 0, i32 %fmt.0
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end61

if.end61:                                         ; preds = %switch.lookup, %if.end50.if.end61_crit_edge
  %fmt.1 = phi i32 [ %fmt.0, %if.end50.if.end61_crit_edge ], [ %switch.load, %switch.lookup ]
  %add = shl nuw nsw i32 %i.0126.lcssa, 4
  %shl = add nuw nsw i32 %add, 16
  %val.0 = select i1 %tobool.not, i32 0, i32 %shl
  %regmap = getelementptr inbounds %struct.pcm3168a_priv, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %., i32 noundef 112, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp68 = icmp eq i32 %48, 0
  %mask.1 = select i1 %cmp68, i32 15, i32 7
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 8
  %call.i125 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %., i32 noundef %mask.1, i32 noundef %fmt.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end58, %do.end42, %do.end37, %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ -22, %do.end58 ], [ 0, %if.end61 ], [ -22, %do.end37 ], [ -22, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !342, !344, !345, !346, !348, !349, !351, !352}
!llvm.module.flags = !{!353, !354, !355, !356, !357, !358, !359, !360}
!llvm.ident = !{!361}

!0 = !{ptr @pcm3168a_regmap, !1, !"pcm3168a_regmap", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/pcm3168a.c", i32 706, i32 28}
!2 = !{ptr @__ksymtab_pcm3168a_regmap, !3, !"__ksymtab_pcm3168a_regmap", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/pcm3168a.c", i32 718, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/pcm3168a.c", i32 751, i32 52}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/pcm3168a.c", i32 756, i32 10}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/pcm3168a.c", i32 758, i32 37}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/pcm3168a.c", i32 761, i32 10}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/pcm3168a.c", i32 765, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pcm3168a_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @pcm3168a_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/pcm3168a.c", i32 777, i32 27}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/pcm3168a.c", i32 784, i32 3}
!24 = !{ptr @pcm3168a_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pcm3168a_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/pcm3168a.c", i32 791, i32 3}
!28 = !{ptr @pcm3168a_probe._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pcm3168a_probe._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/pcm3168a.c", i32 804, i32 4}
!32 = !{ptr @pcm3168a_probe._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pcm3168a_probe._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/pcm3168a.c", i32 818, i32 3}
!36 = !{ptr @pcm3168a_probe._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pcm3168a_probe._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_pcm3168a_probe, !39, !"__ksymtab_pcm3168a_probe", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/pcm3168a.c", i32 832, i32 1}
!40 = !{ptr @__ksymtab_pcm3168a_remove, !41, !"__ksymtab_pcm3168a_remove", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/pcm3168a.c", i32 859, i32 1}
!42 = !{ptr @pcm3168a_pm_ops, !43, !"pcm3168a_pm_ops", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/pcm3168a.c", i32 919, i32 25}
!44 = !{ptr @__ksymtab_pcm3168a_pm_ops, !45, !"__ksymtab_pcm3168a_pm_ops", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/pcm3168a.c", i32 922, i32 1}
!46 = !{ptr @__UNIQUE_ID_description295, !47, !"__UNIQUE_ID_description295", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/pcm3168a.c", i32 924, i32 1}
!48 = !{ptr @__UNIQUE_ID_author296, !49, !"__UNIQUE_ID_author296", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/pcm3168a.c", i32 925, i32 1}
!50 = !{ptr @__UNIQUE_ID_file297, !51, !"__UNIQUE_ID_file297", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/pcm3168a.c", i32 926, i32 1}
!52 = !{ptr @__UNIQUE_ID_license298, !51, !"__UNIQUE_ID_license298", i1 false, i1 false}
!53 = !{ptr @pcm3168a_reg_default, !54, !"pcm3168a_reg_default", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/pcm3168a.c", i32 638, i32 33}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/pcm3168a.c", i32 40, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/pcm3168a.c", i32 41, i32 2}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/pcm3168a.c", i32 42, i32 2}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/pcm3168a.c", i32 43, i32 2}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/pcm3168a.c", i32 44, i32 2}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/pcm3168a.c", i32 45, i32 2}
!67 = distinct !{null, !68, !"pcm3168a_supply_names", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/pcm3168a.c", i32 39, i32 26}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/pcm3168a.c", i32 613, i32 11}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/pcm3168a.c", i32 616, i32 19}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/pcm3168a.c", i32 625, i32 11}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/pcm3168a.c", i32 628, i32 19}
!77 = !{ptr @pcm3168a_dais, !78, !"pcm3168a_dais", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/pcm3168a.c", i32 611, i32 34}
!79 = !{ptr @pcm3168a_dai_ops, !80, !"pcm3168a_dai_ops", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/pcm3168a.c", i32 600, i32 37}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/pcm3168a.c", i32 380, i32 3}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @pcm3168a_set_dai_fmt._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @pcm3168a_set_dai_fmt._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/pcm3168a.c", i32 392, i32 3}
!88 = !{ptr @pcm3168a_set_dai_fmt._entry.34, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pcm3168a_set_dai_fmt._entry_ptr.36, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/pcm3168a.c", i32 432, i32 3}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pcm3168a_set_tdm_slot._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @pcm3168a_set_tdm_slot._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/pcm3168a.c", i32 440, i32 3}
!97 = !{ptr @pcm3168a_set_tdm_slot._entry.39, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pcm3168a_set_tdm_slot._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/pcm3168a.c", i32 496, i32 3}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pcm3168a_hw_params._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pcm3168a_hw_params._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/pcm3168a.c", i32 508, i32 4}
!106 = !{ptr @pcm3168a_hw_params._entry.44, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pcm3168a_hw_params._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/pcm3168a.c", i32 515, i32 4}
!110 = !{ptr @pcm3168a_hw_params._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pcm3168a_hw_params._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/pcm3168a.c", i32 522, i32 3}
!114 = !{ptr @pcm3168a_hw_params._entry.50, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @pcm3168a_hw_params._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/pcm3168a.c", i32 550, i32 4}
!118 = !{ptr @pcm3168a_hw_params._entry.53, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @pcm3168a_hw_params._entry_ptr.55, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @pcm3168a_scki_ratios, !121, !"pcm3168a_scki_ratios", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/pcm3168a.c", i32 264, i32 21}
!122 = !{ptr @pcm3168a_dai_formats, !123, !"pcm3168a_dai_formats", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/pcm3168a.c", i32 576, i32 12}
!124 = !{ptr @pcm3168a_driver, !125, !"pcm3168a_driver", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/pcm3168a.c", i32 720, i32 46}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/pcm3168a.c", i32 136, i32 2}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/pcm3168a.c", i32 138, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/pcm3168a.c", i32 139, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/pcm3168a.c", i32 140, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/pcm3168a.c", i32 141, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/pcm3168a.c", i32 142, i32 2}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/pcm3168a.c", i32 143, i32 2}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/pcm3168a.c", i32 144, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/pcm3168a.c", i32 145, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/pcm3168a.c", i32 146, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/pcm3168a.c", i32 147, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/pcm3168a.c", i32 148, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/pcm3168a.c", i32 149, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/pcm3168a.c", i32 150, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/pcm3168a.c", i32 151, i32 2}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/pcm3168a.c", i32 154, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/pcm3168a.c", i32 158, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/pcm3168a.c", i32 162, i32 2}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/pcm3168a.c", i32 166, i32 2}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/pcm3168a.c", i32 170, i32 2}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/pcm3168a.c", i32 172, i32 2}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/pcm3168a.c", i32 174, i32 2}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/pcm3168a.c", i32 176, i32 2}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/pcm3168a.c", i32 177, i32 2}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/pcm3168a.c", i32 178, i32 2}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/pcm3168a.c", i32 179, i32 2}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/pcm3168a.c", i32 180, i32 2}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/pcm3168a.c", i32 181, i32 2}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/pcm3168a.c", i32 182, i32 2}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/pcm3168a.c", i32 183, i32 2}
!186 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/pcm3168a.c", i32 184, i32 2}
!188 = !{ptr @.str.105, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/pcm3168a.c", i32 185, i32 2}
!190 = !{ptr @.str.106, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/pcm3168a.c", i32 186, i32 2}
!192 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/pcm3168a.c", i32 187, i32 2}
!194 = !{ptr @.str.108, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/pcm3168a.c", i32 188, i32 2}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/pcm3168a.c", i32 191, i32 2}
!198 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/pcm3168a.c", i32 195, i32 2}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/pcm3168a.c", i32 199, i32 2}
!202 = !{ptr @pcm3168a_snd_controls, !203, !"pcm3168a_snd_controls", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/pcm3168a.c", i32 135, i32 38}
!204 = !{ptr @pcm3168a_d1_roll_off, !205, !"pcm3168a_d1_roll_off", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/pcm3168a.c", i32 73, i32 8}
!206 = !{ptr @.str.116, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/pcm3168a.c", i32 71, i32 50}
!208 = !{ptr @.str.117, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/pcm3168a.c", i32 71, i32 59}
!210 = !{ptr @pcm3168a_roll_off, !211, !"pcm3168a_roll_off", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/pcm3168a.c", i32 71, i32 26}
!212 = !{ptr @pcm3168a_d2_roll_off, !213, !"pcm3168a_d2_roll_off", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/pcm3168a.c", i32 75, i32 8}
!214 = !{ptr @pcm3168a_d3_roll_off, !215, !"pcm3168a_d3_roll_off", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/pcm3168a.c", i32 77, i32 8}
!216 = !{ptr @pcm3168a_d4_roll_off, !217, !"pcm3168a_d4_roll_off", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/pcm3168a.c", i32 79, i32 8}
!218 = !{ptr @pcm3168a_dac_volume_type, !219, !"pcm3168a_dac_volume_type", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/pcm3168a.c", i32 85, i32 8}
!220 = !{ptr @.str.118, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/pcm3168a.c", i32 83, i32 3}
!222 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/pcm3168a.c", i32 83, i32 17}
!224 = !{ptr @pcm3168a_volume_type, !225, !"pcm3168a_volume_type", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/pcm3168a.c", i32 82, i32 26}
!226 = !{ptr @pcm3168a_dac_att_mult, !227, !"pcm3168a_dac_att_mult", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/pcm3168a.c", i32 90, i32 8}
!228 = !{ptr @.str.120, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/pcm3168a.c", i32 88, i32 56}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/pcm3168a.c", i32 88, i32 64}
!232 = !{ptr @pcm3168a_att_speed_mult, !233, !"pcm3168a_att_speed_mult", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/pcm3168a.c", i32 88, i32 26}
!234 = !{ptr @pcm3168a_dac_demp, !235, !"pcm3168a_dac_demp", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/pcm3168a.c", i32 96, i32 8}
!236 = !{ptr @.str.122, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/pcm3168a.c", i32 94, i32 3}
!238 = !{ptr @.str.123, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/pcm3168a.c", i32 94, i32 15}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/pcm3168a.c", i32 94, i32 24}
!242 = !{ptr @.str.125, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/pcm3168a.c", i32 94, i32 35}
!244 = !{ptr @pcm3168a_demp, !245, !"pcm3168a_demp", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/pcm3168a.c", i32 93, i32 26}
!246 = !{ptr @pcm3168a_dac_zf_func, !247, !"pcm3168a_dac_zf_func", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/pcm3168a.c", i32 103, i32 8}
!248 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/pcm3168a.c", i32 100, i32 3}
!250 = !{ptr @.str.127, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/pcm3168a.c", i32 100, i32 22}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/pcm3168a.c", i32 100, i32 40}
!254 = !{ptr @.str.129, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/pcm3168a.c", i32 101, i32 3}
!256 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/pcm3168a.c", i32 101, i32 19}
!258 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/pcm3168a.c", i32 101, i32 32}
!260 = !{ptr @pcm3168a_zf_func, !261, !"pcm3168a_zf_func", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/pcm3168a.c", i32 99, i32 26}
!262 = !{ptr @pcm3168a_dac_zf_pol, !263, !"pcm3168a_dac_zf_pol", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/pcm3168a.c", i32 108, i32 8}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/pcm3168a.c", i32 106, i32 45}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/pcm3168a.c", i32 106, i32 60}
!268 = !{ptr @pcm3168a_pol, !269, !"pcm3168a_pol", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/pcm3168a.c", i32 106, i32 26}
!270 = !{ptr @pcm3168a_dac_tlv, !271, !"pcm3168a_dac_tlv", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/pcm3168a.c", i32 130, i32 14}
!272 = !{ptr @pcm3168a_adc1_con, !273, !"pcm3168a_adc1_con", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/pcm3168a.c", i32 113, i32 8}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/pcm3168a.c", i32 111, i32 45}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/pcm3168a.c", i32 111, i32 61}
!278 = !{ptr @pcm3168a_con, !279, !"pcm3168a_con", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/pcm3168a.c", i32 111, i32 26}
!280 = !{ptr @pcm3168a_adc2_con, !281, !"pcm3168a_adc2_con", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/pcm3168a.c", i32 115, i32 8}
!282 = !{ptr @pcm3168a_adc3_con, !283, !"pcm3168a_adc3_con", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/pcm3168a.c", i32 117, i32 8}
!284 = !{ptr @pcm3168a_adc_volume_type, !285, !"pcm3168a_adc_volume_type", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/pcm3168a.c", i32 120, i32 8}
!286 = !{ptr @pcm3168a_adc_att_mult, !287, !"pcm3168a_adc_att_mult", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/pcm3168a.c", i32 123, i32 8}
!288 = !{ptr @pcm3168a_adc_ov_pol, !289, !"pcm3168a_adc_ov_pol", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/pcm3168a.c", i32 126, i32 8}
!290 = !{ptr @pcm3168a_adc_tlv, !291, !"pcm3168a_adc_tlv", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/pcm3168a.c", i32 133, i32 14}
!292 = !{ptr @.str.136, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/pcm3168a.c", i32 206, i32 2}
!294 = !{ptr @.str.137, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/pcm3168a.c", i32 208, i32 2}
!296 = !{ptr @.str.138, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/pcm3168a.c", i32 210, i32 2}
!298 = !{ptr @.str.139, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/pcm3168a.c", i32 212, i32 2}
!300 = !{ptr @.str.140, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/pcm3168a.c", i32 215, i32 2}
!302 = !{ptr @.str.141, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/pcm3168a.c", i32 216, i32 2}
!304 = !{ptr @.str.142, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/pcm3168a.c", i32 217, i32 2}
!306 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/pcm3168a.c", i32 218, i32 2}
!308 = !{ptr @.str.144, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/pcm3168a.c", i32 219, i32 2}
!310 = !{ptr @.str.145, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/pcm3168a.c", i32 220, i32 2}
!312 = !{ptr @.str.146, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/pcm3168a.c", i32 221, i32 2}
!314 = !{ptr @.str.147, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/pcm3168a.c", i32 222, i32 2}
!316 = !{ptr @.str.148, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/pcm3168a.c", i32 224, i32 2}
!318 = !{ptr @.str.149, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/pcm3168a.c", i32 226, i32 2}
!320 = !{ptr @.str.150, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/pcm3168a.c", i32 228, i32 2}
!322 = !{ptr @.str.151, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/pcm3168a.c", i32 231, i32 2}
!324 = !{ptr @.str.152, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/pcm3168a.c", i32 232, i32 2}
!326 = !{ptr @.str.153, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/pcm3168a.c", i32 233, i32 2}
!328 = !{ptr @.str.154, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/pcm3168a.c", i32 234, i32 2}
!330 = !{ptr @.str.155, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/pcm3168a.c", i32 235, i32 2}
!332 = !{ptr @.str.156, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/pcm3168a.c", i32 236, i32 2}
!334 = !{ptr @pcm3168a_dapm_widgets, !335, !"pcm3168a_dapm_widgets", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/pcm3168a.c", i32 205, i32 41}
!336 = !{ptr @pcm3168a_dapm_routes, !337, !"pcm3168a_dapm_routes", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/pcm3168a.c", i32 239, i32 40}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/pcm3168a.c", i32 869, i32 3}
!340 = !{ptr @pcm3168a_rt_resume._entry, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @pcm3168a_rt_resume._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.160, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/pcm3168a.c", i32 876, i32 3}
!344 = !{ptr @pcm3168a_rt_resume._entry.159, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @pcm3168a_rt_resume._entry_ptr.161, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @pcm3168a_rt_resume._entry.162, !347, !"_entry", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/pcm3168a.c", i32 882, i32 3}
!348 = !{ptr @pcm3168a_rt_resume._entry_ptr.163, !347, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.165, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/pcm3168a.c", i32 892, i32 3}
!351 = !{ptr @pcm3168a_rt_resume._entry.164, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @pcm3168a_rt_resume._entry_ptr.166, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{i32 1, !"wchar_size", i32 2}
!354 = !{i32 1, !"min_enum_size", i32 4}
!355 = !{i32 8, !"branch-target-enforcement", i32 0}
!356 = !{i32 8, !"sign-return-address", i32 0}
!357 = !{i32 8, !"sign-return-address-all", i32 0}
!358 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!359 = !{i32 7, !"uwtable", i32 1}
!360 = !{i32 7, !"frame-pointer", i32 2}
!361 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!362 = !{i8 0, i8 2}
!363 = !{i32 0, i32 33}
