; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs42l51.c_pt.bc'
source_filename = "../sound/soc/codecs/cs42l51.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cs42l51_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cs42l51_regmap\09\09\09\09"
module asm "\09.long\09__crc_cs42l51_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs42l51_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_cs42l51_probe\09\09\09\09"
module asm "\09.long\09__crc_cs42l51_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_probe\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs42l51_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_cs42l51_remove\09\09\09\09"
module asm "\09.long\09__crc_cs42l51_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_remove\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs42l51_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_cs42l51_suspend\09\09\09\09"
module asm "\09.long\09__crc_cs42l51_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs42l51_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_cs42l51_resume\09\09\09\09"
module asm "\09.long\09__crc_cs42l51_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs42l51_of_match\22, \22a\22\09"
module asm "\09.weak\09__crc_cs42l51_of_match\09\09\09\09"
module asm "\09.long\09__crc_cs42l51_of_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_of_match\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.105, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.105 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.97, i32 }
%union.anon.97 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cs42l51_ratios = type { i32, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cs42l51_private = type { i32, ptr, i32, i32, [4 x %struct.regulator_bulk_data], ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.91, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.91 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.86, [128 x i8] }
%union.anon.86 = type { %union.anon.88 }
%union.anon.88 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@cs42l51_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr @cs42l51_writeable_reg, ptr @cs42l51_readable_reg, ptr @cs42l51_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_cs42l51_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_regmap to i32), ptr @__kstrtab_cs42l51_regmap, ptr @__kstrtabns_cs42l51_regmap }, section "___ksymtab_gpl+cs42l51_regmap", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCLK\00", [27 x i8] zeroinitializer }, align 32
@cs42l51_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 744, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs42l51_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs42l51.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs42l51_probe._entry_ptr = internal global ptr @cs42l51_probe._entry, section ".printk_index", align 4
@cs42l51_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 751, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cs42l51_probe._entry_ptr.8 = internal global ptr @cs42l51_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs42l51_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs42l51\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Release reset gpio\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cs42l51_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to read I2C\0A\00", [44 x i8] zeroinitializer }, align 32
@cs42l51_probe._entry_ptr.14 = internal global ptr @cs42l51_probe._entry.12, section ".printk_index", align 4
@cs42l51_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid chip id: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@cs42l51_probe._entry_ptr.17 = internal global ptr @cs42l51_probe._entry.15, section ".printk_index", align 4
@cs42l51_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 780, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cirrus Logic CS42L51, Revision: %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs42l51_probe._entry_ptr.21 = internal global ptr @cs42l51_probe._entry.18, section ".printk_index", align 4
@soc_component_device_cs42l51 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs42l51_snd_controls, i32 16, ptr @cs42l51_dapm_widgets, i32 20, ptr @cs42l51_routes, i32 20, ptr @cs42l51_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l51_of_xlate_dai_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs42l51_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.96, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs42l51_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.97, i64 3504693313740, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.94, i64 3504693313740, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_cs42l51_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_probe to i32), ptr @__kstrtab_cs42l51_probe, ptr @__kstrtabns_cs42l51_probe }, section "___ksymtab_gpl+cs42l51_probe", align 4
@__kstrtab_cs42l51_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_remove to i32), ptr @__kstrtab_cs42l51_remove, ptr @__kstrtabns_cs42l51_remove }, section "___ksymtab_gpl+cs42l51_remove", align 4
@__kstrtab_cs42l51_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_suspend to i32), ptr @__kstrtab_cs42l51_suspend, ptr @__kstrtabns_cs42l51_suspend }, section "___ksymtab_gpl+cs42l51_suspend", align 4
@__kstrtab_cs42l51_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_resume to i32), ptr @__kstrtab_cs42l51_resume, ptr @__kstrtabns_cs42l51_resume }, section "___ksymtab_gpl+cs42l51_resume", align 4
@cs42l51_of_match = dso_local constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs42l51\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__kstrtab_cs42l51_of_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_of_match = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_of_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_of_match to i32), ptr @__kstrtab_cs42l51_of_match, ptr @__kstrtabns_cs42l51_of_match }, section "___ksymtab_gpl+cs42l51_of_match", align 4
@__UNIQUE_ID_author295 = internal constant [65 x i8] c"snd_soc_cs42l51.author=Arnaud Patard <arnaud.patard@rtp-net.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [71 x i8] c"snd_soc_cs42l51.description=Cirrus Logic CS42L51 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [54 x i8] c"snd_soc_cs42l51.file=sound/soc/codecs/snd-soc-cs42l51\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"snd_soc_cs42l51.license=GPL\00", section ".modinfo", align 1
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VL\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VD\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VAHP\00", [27 x i8] zeroinitializer }, align 32
@cs42l51_snd_controls = internal constant { [16 x %struct.snd_kcontrol_new], [192 x i8] } { [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.97 { ptr @adc_pcm_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.97 { ptr @aout_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.97 { ptr @adc_pcm_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.97 { ptr @adc_att_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.97 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @adc_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cs42l51_get_chan_mix, ptr @cs42l51_set_chan_mix, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @cs42l51_chan_mix to i32) }], [192 x i8] zeroinitializer }, align 32
@cs42l51_routes = internal constant { [20 x %struct.snd_soc_dapm_route], [272 x i8] } { [20 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.83, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.84, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.86, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.87, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.88, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.89, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.90, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.91, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.92, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.93, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }], [272 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@adc_pcm_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5150, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 25, i32 127, i32 0, i32 16, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 17, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@aout_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 22, i32 23, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Mixer Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 25, i32 127, i32 0, i32 14, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Mixer Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 15, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Attenuator Volume\00", [42 x i8] zeroinitializer }, align 32
@adc_att_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 160, i32 96, i32 0, i32 12, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PGA Volume\00", [21 x i8] zeroinitializer }, align 32
@pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -300, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 26, i32 30, i32 0, i32 10, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Playback Deemphasis Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Auto-Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Soft Ramp Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Zero Cross Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 0, i32 0, i32 9, i32 9, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 1600, i32 1600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@adc_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 2000, i32 2000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 5, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bass Volume\00", [20 x i8] zeroinitializer }, align 32
@tone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 21, i32 21, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Treble Volume\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 21, i32 21, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCM channel mixer\00", [46 x i8] zeroinitializer }, align 32
@cs42l51_chan_mix = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @chan_mix, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@chan_mix = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58], [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L R\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L+R\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R L\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left HiFi Capture\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right HiFi Capture\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1L\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1R\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2L\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2R\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICL\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICR\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Preamp Left\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Preamp Right\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC Mux\00", [24 x i8] zeroinitializer }, align 32
@cs42l51_dac_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @cs42l51_dac_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA-ADC Mux Left\00", [47 x i8] zeroinitializer }, align 32
@cs42l51_adcl_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @cs42l51_adcl_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PGA-ADC Mux Right\00", [46 x i8] zeroinitializer }, align 32
@cs42l51_adcr_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @cs42l51_adcr_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@cs42l51_dapm_widgets = internal constant { [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [912 x i8] } { [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.62, ptr @.str.63, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.64, ptr @.str.65, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs42l51_dac_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs42l51_adcl_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs42l51_adcr_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [912 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@cs42l51_dac_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 6, i8 6, i32 3, i32 3, ptr @cs42l51_dac_names, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l51_dac_names = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85], [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Direct PCM\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP PCM\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@cs42l51_adcl_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 4, i8 4, i32 4, i32 3, ptr @cs42l51_adcl_names, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l51_adcl_names = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1 Left\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2 Left\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MIC+preamp Left\00", [16 x i8] zeroinitializer }, align 32
@cs42l51_adcr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 6, i8 6, i32 4, i32 3, ptr @cs42l51_adcr_names, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs42l51_adcr_names = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIN1 Right\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIN2 Right\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MIC+preamp Right\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@cs42l51_dapm_mclk_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs42l51-hifi\00", [19 x i8] zeroinitializer }, align 32
@cs42l51_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs42l51_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @cs42l51_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l51_dai_mute, ptr null, ptr null, ptr @cs42l51_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@cs42l51_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid DAI format\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs42l51_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@cs42l51_set_dai_fmt._entry_ptr = internal global ptr @cs42l51_set_dai_fmt._entry, section ".printk_index", align 4
@cs42l51_set_dai_fmt._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown master/slave configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@cs42l51_set_dai_fmt._entry_ptr.102 = internal global ptr @cs42l51_set_dai_fmt._entry.100, section ".printk_index", align 4
@master_ratios = internal constant { [2 x %struct.cs42l51_ratios], [16 x i8] } { [2 x %struct.cs42l51_ratios] [%struct.cs42l51_ratios { i32 128, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 1, i8 1 }], [16 x i8] zeroinitializer }, align 32
@slave_ratios = internal constant { [22 x %struct.cs42l51_ratios], [48 x i8] } { [22 x %struct.cs42l51_ratios] [%struct.cs42l51_ratios { i32 512, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 1024, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 1536, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 2048, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 3072, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 512, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 1024, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 1536, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 128, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 192, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 512, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 128, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 192, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@slave_auto_ratios = internal constant { [16 x %struct.cs42l51_ratios], [32 x i8] } { [16 x %struct.cs42l51_ratios] [%struct.cs42l51_ratios { i32 1024, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 1536, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 2048, i8 3, i8 1 }, %struct.cs42l51_ratios { i32 3072, i8 3, i8 1 }, %struct.cs42l51_ratios { i32 512, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 1024, i8 2, i8 1 }, %struct.cs42l51_ratios { i32 1536, i8 2, i8 1 }, %struct.cs42l51_ratios { i32 256, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 512, i8 1, i8 1 }, %struct.cs42l51_ratios { i32 768, i8 1, i8 1 }, %struct.cs42l51_ratios { i32 128, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 192, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 0, i8 1 }, %struct.cs42l51_ratios { i32 384, i8 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@cs42l51_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not find matching ratio\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs42l51_hw_params\00", [46 x i8] zeroinitializer }, align 32
@cs42l51_hw_params._entry_ptr = internal global ptr @cs42l51_hw_params._entry, section ".printk_index", align 4
@cs42l51_hw_params._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown format\0A\00", [16 x i8] zeroinitializer }, align 32
@cs42l51_hw_params._entry_ptr.107 = internal global ptr @cs42l51_hw_params._entry.105, section ".printk_index", align 4
@cs42l51_hw_params._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cs42l51_hw_params._entry_ptr.109 = internal global ptr @cs42l51_hw_params._entry.108, section ".printk_index", align 4
@switch.table.cs42l51_get_chan_mix = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.cs42l51_hw_params = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @slave_ratios, ptr @slave_auto_ratios, ptr @master_ratios], [20 x i8] zeroinitializer }, align 32
@switch.table.cs42l51_hw_params.110 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 22, i32 16, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.cs42l51_hw_params.111 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 40, i32 40, i32 32, i32 40, i32 24, i32 40, i32 40, i32 40, i32 16], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"cs42l51_regmap\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 701, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 731, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 744, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 751, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 755, i32 53 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 761, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 769, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 775, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 779, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [29 x i8] c"soc_component_device_cs42l51\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 594, i32 46 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"cs42l51_dai\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 547, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"cs42l51_of_match\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 828, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 38, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 39, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 40, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 41, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"cs42l51_snd_controls\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 130, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"cs42l51_routes\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 281, i32 40 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 131, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"adc_pcm_tlv\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 112, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 134, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 136, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [9 x i8] c"aout_tlv\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 115, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 139, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 142, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 144, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"adc_att_tlv\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 126, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 147, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [8 x i8] c"pga_tlv\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 125, i32 14 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 150, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 151, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 152, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 153, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 154, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [10 x i8] c"boost_tlv\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 117, i32 14 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 156, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [14 x i8] c"adc_boost_tlv\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 118, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 158, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [9 x i8] c"tone_tlv\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 113, i32 14 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 159, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 160, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"cs42l51_chan_mix\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 128, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"chan_mix\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 119, i32 20 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 120, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 121, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 122, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 214, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 216, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 218, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 220, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 223, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 226, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 228, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 232, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 233, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 234, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 235, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 236, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 237, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 239, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 241, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 245, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 246, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 249, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [25 x i8] c"cs42l51_dac_mux_controls\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 196, i32 38 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 251, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [26 x i8] c"cs42l51_adcl_mux_controls\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 203, i32 38 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 253, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [26 x i8] c"cs42l51_adcr_mux_controls\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 210, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"cs42l51_dapm_widgets\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 213, i32 41 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 197, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [21 x i8] c"cs42l51_dac_mux_enum\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 194, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant [18 x i8] c"cs42l51_dac_names\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 192, i32 20 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 192, i32 43 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 193, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 193, i32 13 }
@___asan_gen_.397 = private unnamed_addr constant [22 x i8] c"cs42l51_adcl_mux_enum\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 201, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant [19 x i8] c"cs42l51_adcl_names\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 199, i32 20 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 199, i32 44 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 199, i32 57 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 200, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 200, i32 14 }
@___asan_gen_.415 = private unnamed_addr constant [22 x i8] c"cs42l51_adcr_mux_enum\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 208, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant [19 x i8] c"cs42l51_adcr_names\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 206, i32 20 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 206, i32 44 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 206, i32 58 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 207, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 207, i32 15 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 288, i32 28 }
@___asan_gen_.436 = private unnamed_addr constant [26 x i8] c"cs42l51_dapm_mclk_widgets\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 276, i32 41 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 548, i32 10 }
@___asan_gen_.442 = private unnamed_addr constant [16 x i8] c"cs42l51_dai_ops\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 539, i32 37 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 557, i32 18 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 323, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 335, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [14 x i8] c"master_ratios\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 382, i32 30 }
@___asan_gen_.466 = private unnamed_addr constant [13 x i8] c"slave_ratios\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 348, i32 30 }
@___asan_gen_.469 = private unnamed_addr constant [18 x i8] c"slave_auto_ratios\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 362, i32 30 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 435, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 492, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.488 = private constant [30 x i8] c"../sound/soc/codecs/cs42l51.c\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 498, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [34 x i8] c"switch.table.cs42l51_get_chan_mix\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [31 x i8] c"switch.table.cs42l51_hw_params\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [35 x i8] c"switch.table.cs42l51_hw_params.110\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [35 x i8] c"switch.table.cs42l51_hw_params.111\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_cs42l51_of_match, ptr @__ksymtab_cs42l51_probe, ptr @__ksymtab_cs42l51_regmap, ptr @__ksymtab_cs42l51_remove, ptr @__ksymtab_cs42l51_resume, ptr @__ksymtab_cs42l51_suspend, ptr @cs42l51_hw_params._entry, ptr @cs42l51_hw_params._entry.105, ptr @cs42l51_hw_params._entry.108, ptr @cs42l51_hw_params._entry_ptr, ptr @cs42l51_hw_params._entry_ptr.107, ptr @cs42l51_hw_params._entry_ptr.109, ptr @cs42l51_probe._entry, ptr @cs42l51_probe._entry.12, ptr @cs42l51_probe._entry.15, ptr @cs42l51_probe._entry.18, ptr @cs42l51_probe._entry.6, ptr @cs42l51_probe._entry_ptr, ptr @cs42l51_probe._entry_ptr.14, ptr @cs42l51_probe._entry_ptr.17, ptr @cs42l51_probe._entry_ptr.21, ptr @cs42l51_probe._entry_ptr.8, ptr @cs42l51_set_dai_fmt._entry, ptr @cs42l51_set_dai_fmt._entry.100, ptr @cs42l51_set_dai_fmt._entry_ptr, ptr @cs42l51_set_dai_fmt._entry_ptr.102, ptr @cs42l51_regmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @soc_component_device_cs42l51, ptr @cs42l51_dai, ptr @cs42l51_of_match, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cs42l51_snd_controls, ptr @cs42l51_routes, ptr @.str.26, ptr @adc_pcm_tlv, ptr @.compoundliteral, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @aout_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @adc_att_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @pga_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @boost_tlv, ptr @.compoundliteral.48, ptr @.str.49, ptr @adc_boost_tlv, ptr @.compoundliteral.50, ptr @.str.51, ptr @tone_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @cs42l51_chan_mix, ptr @chan_mix, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @cs42l51_dac_mux_controls, ptr @.str.79, ptr @cs42l51_adcl_mux_controls, ptr @.str.80, ptr @cs42l51_adcr_mux_controls, ptr @cs42l51_dapm_widgets, ptr @.str.82, ptr @cs42l51_dac_mux_enum, ptr @cs42l51_dac_names, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @cs42l51_adcl_mux_enum, ptr @cs42l51_adcl_names, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @cs42l51_adcr_mux_enum, ptr @cs42l51_adcr_names, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @cs42l51_dapm_mclk_widgets, ptr @.str.96, ptr @cs42l51_dai_ops, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @master_ratios, ptr @slave_ratios, ptr @slave_auto_ratios, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @switch.table.cs42l51_get_chan_mix, ptr @switch.table.cs42l51_hw_params, ptr @switch.table.cs42l51_hw_params.110, ptr @switch.table.cs42l51_hw_params.111], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_device_cs42l51 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_snd_controls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_routes to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_pcm_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aout_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_att_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_chan_mix to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_mix to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dac_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_adcl_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_adcr_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dapm_widgets to i32), i32 3600, i32 4512, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dac_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dac_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_adcl_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_adcl_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_adcr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_adcr_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dapm_mclk_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_set_dai_fmt._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_ratios to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_ratios to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_auto_ratios to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_hw_params._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l51_hw_params._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs42l51_get_chan_mix to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs42l51_hw_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs42l51_hw_params.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs42l51_hw_params.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l51_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 32
  %switch.downshift = lshr i32 -1073741825, %switch.tableidx
  %1 = and i32 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.masked = icmp ne i32 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l51_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 33
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l51_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cond = icmp eq i32 %reg, 32
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs42l51_probe(ptr noundef %dev, ptr noundef %regmap) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !262
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %regmap5 = getelementptr inbounds %struct.cs42l51_private, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %regmap5, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str) #7
  %mclk_handle = getelementptr inbounds %struct.cs42l51_private, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mclk_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %mclk_handle, align 4
  %cmp.i123 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then9, label %if.end4.if.end17_crit_edge

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then9:                                         ; preds = %if.end4
  %5 = ptrtoint ptr %call6 to i32
  %cmp.not = icmp eq ptr %call6, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.end15, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mclk_handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mclk_handle, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end4.if.end17_crit_edge
  %arrayidx19 = getelementptr %struct.cs42l51_private, ptr %call.i, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.22, ptr %arrayidx19, align 4
  %arrayidx19.1 = getelementptr %struct.cs42l51_private, ptr %call.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.23, ptr %arrayidx19.1, align 4
  %arrayidx19.2 = getelementptr %struct.cs42l51_private, ptr %call.i, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.24, ptr %arrayidx19.2, align 4
  %arrayidx19.3 = getelementptr %struct.cs42l51_private, ptr %call.i, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.25, ptr %arrayidx19.3, align 4
  %call21 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 4, ptr noundef %arrayidx19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call21) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call27 = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %arrayidx19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call27) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %call34 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.cs42l51_private, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34, ptr %reset_gpio, align 4
  %cmp.i124 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %tobool42.not = icmp eq ptr %call34, null
  br i1 %tobool42.not, label %if.end40.if.end54_crit_edge, label %do.body44

if.end40.if.end54_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body44:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l51_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l51_probe, %if.then49)) #7
          to label %do.end52 [label %if.then49], !srcloc !263

if.then49:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l51_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body44
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496000) #7
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end40.if.end54_crit_edge
  %call55 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 1, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %if.end61

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %error

if.end61:                                         ; preds = %if.end54
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 216, i32 %18)
  %switch = icmp eq i32 %18, 216
  br i1 %switch, label %do.end71, label %do.end67

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %17) #10
  br label %error

do.end71:                                         ; preds = %if.end61
  %and = and i32 %17, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %and) #10
  %call72 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_device_cs42l51, ptr noundef nonnull @cs42l51_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end71.error_crit_edge, label %do.end71.cleanup_crit_edge

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end71.error_crit_edge:                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %do.end71.error_crit_edge, %do.end67, %do.end60
  %ret.0 = phi i32 [ %call55, %do.end60 ], [ -19, %do.end67 ], [ %call72, %do.end71.error_crit_edge ]
  %call78 = call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %arrayidx19) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end71.cleanup_crit_edge, %if.then37, %do.end32, %do.end, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call21, %do.end ], [ %call27, %do.end32 ], [ %12, %if.then37 ], [ %ret.0, %error ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end71.cleanup_crit_edge ], [ %5, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs42l51_remove(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset_gpio = getelementptr inbounds %struct.cs42l51_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %supplies = getelementptr inbounds %struct.cs42l51_private, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs42l51_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.cs42l51_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs42l51_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.cs42l51_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_component_probe(ptr noundef %component) #1 align 64 {
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
  %mclk_handle = getelementptr inbounds %struct.cs42l51_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mclk_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk_handle, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call2 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @cs42l51_dapm_mclk_widgets, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 9, i32 noundef 68) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %call3, i32 0)
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cs42l51_of_xlate_dai_id(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %endpoint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_get_chan_mix(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 24) #7
  %and = and i32 %call1, 3
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cs42l51_get_chan_mix, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %value7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_set_chan_mix(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 85, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp4 = icmp eq i32 %3, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 255, i32 %switch.select
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 24, i32 noundef %switch.select5) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_pdn_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cond = icmp eq i32 %event, 4
  %. = zext i1 %cond to i32
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 1, i32 noundef %.) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #1 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mclk_handle = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %mclk_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk_handle, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  %mclk_handle4 = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %mclk_handle4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk_handle4, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %10, %sw.bb3 ], [ %8, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %sw.bb3 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cs42l51_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %format) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %and = and i32 %format, 15
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.off)
  %switch = icmp ult i32 %and.off, 3
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %audio_mode = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %audio_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %audio_mode, align 4
  %7 = trunc i32 %format to i16
  %trunc = and i16 %7, -4096
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.112)
  switch i16 %trunc, label %do.end10 [
    i16 4096, label %sw.bb4
    i16 16384, label %sw.bb5
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.98) #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %func = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %func, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %func6 = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %func6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %func6, align 4
  br label %cleanup

do.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.101) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %sw.bb5, %sw.bb4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_dai_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %and = and i32 %call, -4
  %masksel = select i1 %tobool.not, i32 0, i32 3
  %reg.0 = or i32 %and, %masksel
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 8, i32 noundef %reg.0) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l51_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #1 align 64 {
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
  %func = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cs42l51_hw_params, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep142 = getelementptr inbounds [3 x i32], ptr @switch.table.cs42l51_hw_params.110, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep142 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load143 = load i32, ptr %switch.gep142, align 4
  %arrayidx.i.i127 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i127 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i127, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %div128 = udiv i32 %14, %12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup
  %i.0122 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup ]
  %arrayidx = getelementptr %struct.cs42l51_ratios, ptr %switch.load, i32 %i.0122
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div128)
  %cmp6 = icmp eq i32 %16, %div128
  br i1 %cmp6, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load143
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0122, i32 %switch.load143)
  %cmp7 = icmp eq i32 %i.0122, %switch.load143
  br i1 %cmp7, label %for.end.do.end_crit_edge, label %if.end9

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.103) #10
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #7
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 3) #7
  %and = and i32 %call10, -125
  %and12 = and i32 %call11, -98
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %func, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %18, label %if.end9.sw.epilog32_crit_edge [
    i32 2, label %sw.bb14
    i32 0, label %sw.bb23
    i32 1, label %sw.bb30
  ]

if.end9.sw.epilog32_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 64
  %speed_mode = getelementptr %struct.cs42l51_ratios, ptr %switch.load, i32 %i.0122, i32 1
  %20 = ptrtoint ptr %speed_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %speed_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %12)
  %cmp16 = icmp ugt i32 %12, 50000
  %22 = shl i8 %21, 5
  %conv.op.op = zext i8 %22 to i32
  %shl = select i1 %cmp16, i32 0, i32 %conv.op.op
  %or21 = or i32 %shl, %and12
  %and22 = and i32 %or21, -130
  br label %sw.epilog32

sw.bb23:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %speed_mode25 = getelementptr %struct.cs42l51_ratios, ptr %switch.load, i32 %i.0122, i32 1
  %23 = ptrtoint ptr %speed_mode25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %speed_mode25, align 4
  %25 = shl i8 %24, 5
  %26 = and i8 %25, 96
  %shl28 = zext i8 %26 to i32
  %or29 = or i32 %and12, %shl28
  br label %sw.epilog32

sw.bb30:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %or31 = or i32 %and12, 128
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb30, %sw.bb23, %sw.bb14, %if.end9.sw.epilog32_crit_edge
  %intf_ctl.0 = phi i32 [ %and, %if.end9.sw.epilog32_crit_edge ], [ %and, %sw.bb30 ], [ %and, %sw.bb23 ], [ %or, %sw.bb14 ]
  %power_ctl.0 = phi i32 [ %and12, %if.end9.sw.epilog32_crit_edge ], [ %or31, %sw.bb30 ], [ %or29, %sw.bb23 ], [ %and22, %sw.bb14 ]
  %audio_mode = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %audio_mode, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %28, label %do.end55 [
    i32 1, label %sw.bb33
    i32 3, label %sw.epilog32.sw.epilog57_crit_edge
    i32 2, label %sw.bb38
  ]

sw.epilog32.sw.epilog57_crit_edge:                ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog57

sw.bb33:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %or35 = or i32 %intf_ctl.0, 12
  br label %sw.epilog57

sw.bb38:                                          ; preds = %sw.epilog32
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.bb38.if.then.i.i.i_crit_edge

sw.bb38.if.then.i.i.i_crit_edge:                  ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.bb38.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.bb38.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %31, %sw.bb38.if.then.i.i.i_crit_edge ], [ %34, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !264
  %add.i.i.i = or i32 %32, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %sw.bb38
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.1.i.i.i = icmp eq i32 %34, 0
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
  %switch.tableidx = add i32 %call1.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 9
  br i1 %35, label %switch.hole_check, label %params_width.exit.do.end46_crit_edge

params_width.exit.do.end46_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.end46:                                         ; preds = %switch.hole_check.do.end46_crit_edge, %params_width.exit.do.end46_crit_edge
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.106) #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %38 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %switch.lobit.not = icmp eq i16 %38, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end46_crit_edge, label %switch.lookup145

switch.hole_check.do.end46_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

switch.lookup145:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep146 = getelementptr inbounds [9 x i32], ptr @switch.table.cs42l51_hw_params.111, i32 0, i32 %switch.tableidx
  %39 = ptrtoint ptr %switch.gep146 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load147 = load i32, ptr %switch.gep146, align 4
  %or51 = or i32 %switch.load147, %intf_ctl.0
  br label %sw.epilog57

do.end55:                                         ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.106) #10
  br label %cleanup

sw.epilog57:                                      ; preds = %switch.lookup145, %sw.bb33, %sw.epilog32.sw.epilog57_crit_edge
  %intf_ctl.1 = phi i32 [ %or51, %switch.lookup145 ], [ %or35, %sw.bb33 ], [ %intf_ctl.0, %sw.epilog32.sw.epilog57_crit_edge ]
  %mclk59 = getelementptr %struct.cs42l51_ratios, ptr %switch.load, i32 %i.0122, i32 2
  %42 = ptrtoint ptr %mclk59 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mclk59, align 1
  %call63 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %intf_ctl.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %sw.epilog57.cleanup_crit_edge, label %if.end67

sw.epilog57.cleanup_crit_edge:                    ; preds = %sw.epilog57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %sw.epilog57
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp ne i8 %43, 0
  %or61 = zext i1 %tobool.not to i32
  %spec.select = or i32 %power_ctl.0, %or61
  %call68 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %spec.select) #7
  %44 = tail call i32 @llvm.smin.i32(i32 %call68, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %sw.epilog57.cleanup_crit_edge, %do.end55, %do.end46, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end55 ], [ -22, %do.end46 ], [ %call63, %sw.epilog57.cleanup_crit_edge ], [ %44, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !249, !251}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @cs42l51_regmap, !1, !"cs42l51_regmap", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs42l51.c", i32 701, i32 28}
!2 = !{ptr @__ksymtab_cs42l51_regmap, !3, !"__ksymtab_cs42l51_regmap", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/cs42l51.c", i32 712, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/cs42l51.c", i32 731, i32 43}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/cs42l51.c", i32 744, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cs42l51_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @cs42l51_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs42l51.c", i32 751, i32 3}
!16 = !{ptr @cs42l51_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cs42l51_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/cs42l51.c", i32 755, i32 53}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/cs42l51.c", i32 761, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cs42l51_probe.__UNIQUE_ID_ddebug294, !21, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/cs42l51.c", i32 769, i32 3}
!26 = !{ptr @cs42l51_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cs42l51_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/cs42l51.c", i32 775, i32 3}
!30 = !{ptr @cs42l51_probe._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cs42l51_probe._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/cs42l51.c", i32 779, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cs42l51_probe._entry.18, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cs42l51_probe._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_cs42l51_probe, !38, !"__ksymtab_cs42l51_probe", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/cs42l51.c", i32 794, i32 1}
!39 = !{ptr @__ksymtab_cs42l51_remove, !40, !"__ksymtab_cs42l51_remove", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs42l51.c", i32 805, i32 1}
!41 = !{ptr @__ksymtab_cs42l51_suspend, !42, !"__ksymtab_cs42l51_suspend", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/cs42l51.c", i32 816, i32 1}
!43 = !{ptr @__ksymtab_cs42l51_resume, !44, !"__ksymtab_cs42l51_resume", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cs42l51.c", i32 826, i32 1}
!45 = !{ptr @cs42l51_of_match, !46, !"cs42l51_of_match", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/cs42l51.c", i32 828, i32 27}
!47 = !{ptr @__ksymtab_cs42l51_of_match, !48, !"__ksymtab_cs42l51_of_match", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/cs42l51.c", i32 833, i32 1}
!49 = !{ptr @__UNIQUE_ID_author295, !50, !"__UNIQUE_ID_author295", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/cs42l51.c", i32 835, i32 1}
!51 = !{ptr @__UNIQUE_ID_description296, !52, !"__UNIQUE_ID_description296", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/cs42l51.c", i32 836, i32 1}
!53 = !{ptr @__UNIQUE_ID_file297, !54, !"__UNIQUE_ID_file297", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/cs42l51.c", i32 837, i32 1}
!55 = !{ptr @__UNIQUE_ID_license298, !54, !"__UNIQUE_ID_license298", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cs42l51.c", i32 38, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/cs42l51.c", i32 39, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cs42l51.c", i32 40, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/cs42l51.c", i32 41, i32 2}
!64 = distinct !{null, !65, !"cs42l51_supply_names", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/cs42l51.c", i32 37, i32 27}
!66 = !{ptr @soc_component_device_cs42l51, !67, !"soc_component_device_cs42l51", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/cs42l51.c", i32 594, i32 46}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cs42l51.c", i32 131, i32 2}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/cs42l51.c", i32 134, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/cs42l51.c", i32 136, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cs42l51.c", i32 139, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs42l51.c", i32 142, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cs42l51.c", i32 144, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs42l51.c", i32 147, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/cs42l51.c", i32 150, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs42l51.c", i32 151, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/cs42l51.c", i32 152, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cs42l51.c", i32 153, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/cs42l51.c", i32 154, i32 2}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/cs42l51.c", i32 156, i32 2}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/cs42l51.c", i32 158, i32 2}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/cs42l51.c", i32 159, i32 2}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/cs42l51.c", i32 160, i32 2}
!100 = !{ptr @cs42l51_snd_controls, !101, !"cs42l51_snd_controls", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cs42l51.c", i32 130, i32 38}
!102 = !{ptr @adc_pcm_tlv, !103, !"adc_pcm_tlv", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cs42l51.c", i32 112, i32 14}
!104 = !{ptr @aout_tlv, !105, !"aout_tlv", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cs42l51.c", i32 115, i32 14}
!106 = !{ptr @adc_att_tlv, !107, !"adc_att_tlv", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cs42l51.c", i32 126, i32 14}
!108 = !{ptr @pga_tlv, !109, !"pga_tlv", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/cs42l51.c", i32 125, i32 14}
!110 = !{ptr @boost_tlv, !111, !"boost_tlv", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/cs42l51.c", i32 117, i32 14}
!112 = !{ptr @adc_boost_tlv, !113, !"adc_boost_tlv", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/cs42l51.c", i32 118, i32 14}
!114 = !{ptr @tone_tlv, !115, !"tone_tlv", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/cs42l51.c", i32 113, i32 14}
!116 = !{ptr @cs42l51_chan_mix, !117, !"cs42l51_chan_mix", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/cs42l51.c", i32 128, i32 8}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/cs42l51.c", i32 120, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/cs42l51.c", i32 121, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/cs42l51.c", i32 122, i32 2}
!124 = !{ptr @chan_mix, !125, !"chan_mix", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/cs42l51.c", i32 119, i32 20}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/cs42l51.c", i32 214, i32 2}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/cs42l51.c", i32 216, i32 2}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/cs42l51.c", i32 218, i32 2}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/cs42l51.c", i32 220, i32 2}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs42l51.c", i32 223, i32 2}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/cs42l51.c", i32 226, i32 2}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/cs42l51.c", i32 228, i32 2}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/cs42l51.c", i32 232, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/cs42l51.c", i32 233, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/cs42l51.c", i32 234, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/cs42l51.c", i32 235, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/cs42l51.c", i32 236, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/cs42l51.c", i32 237, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/cs42l51.c", i32 239, i32 2}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/cs42l51.c", i32 241, i32 2}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/cs42l51.c", i32 245, i32 2}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/cs42l51.c", i32 246, i32 2}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/cs42l51.c", i32 249, i32 2}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/cs42l51.c", i32 251, i32 2}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/cs42l51.c", i32 253, i32 2}
!168 = !{ptr @cs42l51_dapm_widgets, !169, !"cs42l51_dapm_widgets", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/cs42l51.c", i32 213, i32 41}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/cs42l51.c", i32 197, i32 2}
!172 = !{ptr @cs42l51_dac_mux_controls, !173, !"cs42l51_dac_mux_controls", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/cs42l51.c", i32 196, i32 38}
!174 = !{ptr @cs42l51_dac_mux_enum, !175, !"cs42l51_dac_mux_enum", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/cs42l51.c", i32 194, i32 8}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/cs42l51.c", i32 192, i32 43}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/cs42l51.c", i32 193, i32 2}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/cs42l51.c", i32 193, i32 13}
!182 = !{ptr @cs42l51_dac_names, !183, !"cs42l51_dac_names", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/cs42l51.c", i32 192, i32 20}
!184 = !{ptr @cs42l51_adcl_mux_controls, !185, !"cs42l51_adcl_mux_controls", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/cs42l51.c", i32 203, i32 38}
!186 = !{ptr @cs42l51_adcl_mux_enum, !187, !"cs42l51_adcl_mux_enum", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/cs42l51.c", i32 201, i32 8}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/cs42l51.c", i32 199, i32 44}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/cs42l51.c", i32 199, i32 57}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/cs42l51.c", i32 200, i32 2}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/cs42l51.c", i32 200, i32 14}
!196 = !{ptr @cs42l51_adcl_names, !197, !"cs42l51_adcl_names", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/cs42l51.c", i32 199, i32 20}
!198 = !{ptr @cs42l51_adcr_mux_controls, !199, !"cs42l51_adcr_mux_controls", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/cs42l51.c", i32 210, i32 38}
!200 = !{ptr @cs42l51_adcr_mux_enum, !201, !"cs42l51_adcr_mux_enum", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/cs42l51.c", i32 208, i32 8}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/cs42l51.c", i32 206, i32 44}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/cs42l51.c", i32 206, i32 58}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cs42l51.c", i32 207, i32 2}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/cs42l51.c", i32 207, i32 15}
!210 = !{ptr @cs42l51_adcr_names, !211, !"cs42l51_adcr_names", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/cs42l51.c", i32 206, i32 20}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/cs42l51.c", i32 288, i32 28}
!214 = !{ptr @cs42l51_routes, !215, !"cs42l51_routes", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/cs42l51.c", i32 281, i32 40}
!216 = !{ptr @cs42l51_dapm_mclk_widgets, !217, !"cs42l51_dapm_mclk_widgets", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/cs42l51.c", i32 276, i32 41}
!218 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/cs42l51.c", i32 548, i32 10}
!220 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/cs42l51.c", i32 557, i32 18}
!222 = !{ptr @cs42l51_dai, !223, !"cs42l51_dai", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/cs42l51.c", i32 547, i32 34}
!224 = !{ptr @cs42l51_dai_ops, !225, !"cs42l51_dai_ops", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/cs42l51.c", i32 539, i32 37}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/cs42l51.c", i32 323, i32 3}
!228 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @cs42l51_set_dai_fmt._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @cs42l51_set_dai_fmt._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs42l51.c", i32 335, i32 3}
!233 = !{ptr @cs42l51_set_dai_fmt._entry.100, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @cs42l51_set_dai_fmt._entry_ptr.102, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs42l51.c", i32 435, i32 3}
!237 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @cs42l51_hw_params._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @cs42l51_hw_params._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/cs42l51.c", i32 492, i32 4}
!242 = !{ptr @cs42l51_hw_params._entry.105, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @cs42l51_hw_params._entry_ptr.107, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @cs42l51_hw_params._entry.108, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/cs42l51.c", i32 498, i32 3}
!246 = !{ptr @cs42l51_hw_params._entry_ptr.109, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @master_ratios, !248, !"master_ratios", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs42l51.c", i32 382, i32 30}
!249 = !{ptr @slave_ratios, !250, !"slave_ratios", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs42l51.c", i32 348, i32 30}
!251 = !{ptr @slave_auto_ratios, !252, !"slave_auto_ratios", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs42l51.c", i32 362, i32 30}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"auto-init"}
!263 = !{i64 2148743436, i64 2148743441, i64 2148743454, i64 2148743498, i64 2148743532, i64 2148743553}
!264 = !{i32 0, i32 33}
