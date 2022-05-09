; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8804.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8804.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8804_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8804_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_wm8804_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8804_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8804_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8804_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8804_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8804_probe\09\09\09\09"
module asm "\09.long\09__crc_wm8804_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8804_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8804_probe\22\09\09\09\09\09"
module asm "__kstrtabns_wm8804_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8804_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8804_remove\09\09\09\09"
module asm "\09.long\09__crc_wm8804_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8804_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8804_remove\22\09\09\09\09\09"
module asm "__kstrtabns_wm8804_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8804_pm\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8804_pm\09\09\09\09"
module asm "\09.long\09__crc_wm8804_pm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8804_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8804_pm\22\09\09\09\09\09"
module asm "__kstrtabns_wm8804_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.105 = type { i32, i32, i32 }
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
%struct.wm8804_priv = type { ptr, ptr, [2 x %struct.regulator_bulk_data], [2 x %struct.notifier_block], i32, ptr, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@wm8804_reg_defaults = internal constant { [20 x %struct.reg_default], [32 x i8] } { [20 x %struct.reg_default] [%struct.reg_default { i32 3, i32 33 }, %struct.reg_default { i32 4, i32 253 }, %struct.reg_default { i32 5, i32 54 }, %struct.reg_default { i32 6, i32 7 }, %struct.reg_default { i32 7, i32 22 }, %struct.reg_default { i32 8, i32 24 }, %struct.reg_default { i32 9, i32 255 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 113 }, %struct.reg_default { i32 22, i32 11 }, %struct.reg_default { i32 23, i32 112 }, %struct.reg_default { i32 24, i32 87 }, %struct.reg_default { i32 26, i32 66 }, %struct.reg_default { i32 27, i32 6 }, %struct.reg_default { i32 28, i32 6 }, %struct.reg_default { i32 29, i32 128 }, %struct.reg_default { i32 30, i32 7 }], [32 x i8] zeroinitializer }, align 32
@wm8804_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @wm8804_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8804_reg_defaults, i32 20, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wm8804_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8804_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8804_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8804_regmap_config to i32), ptr @__kstrtab_wm8804_regmap_config, ptr @__kstrtabns_wm8804_regmap_config }, section "___ksymtab_gpl+wm8804_regmap_config", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wlf,reset\00", [22 x i8] zeroinitializer }, align 32
@wm8804_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset line: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8804_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8804.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr = internal global ptr @wm8804_probe._entry, section ".printk_index", align 4
@wm8804_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.8 = internal global ptr @wm8804_probe._entry.6, section ".printk_index", align 4
@wm8804_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register regulator notifier: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.11 = internal global ptr @wm8804_probe._entry.9, section ".printk_index", align 4
@wm8804_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.14 = internal global ptr @wm8804_probe._entry.12, section ".printk_index", align 4
@wm8804_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 626, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.17 = internal global ptr @wm8804_probe._entry.15, section ".printk_index", align 4
@wm8804_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.19 = internal global ptr @wm8804_probe._entry.18, section ".printk_index", align 4
@wm8804_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid device ID: %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.22 = internal global ptr @wm8804_probe._entry.20, section ".printk_index", align 4
@wm8804_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read device revision: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.25 = internal global ptr @wm8804_probe._entry.23, section ".printk_index", align 4
@wm8804_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 650, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %c\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.29 = internal global ptr @wm8804_probe._entry.26, section ".printk_index", align 4
@wm8804_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to issue reset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.32 = internal global ptr @wm8804_probe._entry.30, section ".printk_index", align 4
@soc_component_dev_wm8804 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @wm8804_dapm_widgets, i32 7, ptr @wm8804_dapm_routes, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8804_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.51, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8804_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.50, i64 68719476804, i32 8160, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.49, i64 68719476804, i32 8160, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8804_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8804_probe._entry_ptr.35 = internal global ptr @wm8804_probe._entry.33, section ".printk_index", align 4
@__kstrtab_wm8804_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8804_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8804_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8804_probe to i32), ptr @__kstrtab_wm8804_probe, ptr @__kstrtabns_wm8804_probe }, section "___ksymtab_gpl+wm8804_probe", align 4
@__kstrtab_wm8804_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8804_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8804_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8804_remove to i32), ptr @__kstrtab_wm8804_remove, ptr @__kstrtabns_wm8804_remove }, section "___ksymtab_gpl+wm8804_remove", align 4
@wm8804_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8804_runtime_suspend, ptr @wm8804_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_wm8804_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8804_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8804_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8804_pm to i32), ptr @__kstrtab_wm8804_pm, ptr @__kstrtabns_wm8804_pm }, section "___ksymtab_gpl+wm8804_pm", align 4
@__UNIQUE_ID_description295 = internal constant [46 x i8] c"snd_soc_wm8804.description=ASoC WM8804 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [75 x i8] c"snd_soc_wm8804.author=Dimitris Papastamos <dp@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_wm8804.file=sound/soc/codecs/snd-soc-wm8804\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"snd_soc_wm8804.license=GPL\00", section ".modinfo", align 1
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@wm8804_dapm_routes = internal constant { [8 x %struct.snd_soc_dapm_route], [96 x i8] } { [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.48, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.47, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIF Out\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPDIF In\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPDIFTX\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPDIFRX\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx Source\00", [22 x i8] zeroinitializer }, align 32
@wm8804_tx_source_mux = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @txsrc_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @txsrc to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFTX\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFRX\00", [26 x i8] zeroinitializer }, align 32
@wm8804_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 30, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 30, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8804_tx_source_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wm8804_aif_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wm8804_aif_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Input Source\00", [19 x i8] zeroinitializer }, align 32
@txsrc = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 21, i8 6, i8 6, i32 2, i32 1, ptr @txsrc_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@txsrc_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S/PDIF RX\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AIF\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8804-spdif\00", [19 x i8] zeroinitializer }, align 32
@wm8804_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8804_set_sysclk, ptr @wm8804_set_pll, ptr @wm8804_set_clkdiv, ptr null, ptr @wm8804_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8804_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@wm8804_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"OSCCLOCK is not within the recommended range: %uHz\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8804_set_sysclk\00", [46 x i8] zeroinitializer }, align 32
@wm8804_set_sysclk._entry_ptr = internal global ptr @wm8804_set_sysclk._entry, section ".printk_index", align 4
@wm8804_set_sysclk._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown clock source: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8804_set_sysclk._entry_ptr.56 = internal global ptr @wm8804_set_sysclk._entry.54, section ".printk_index", align 4
@post_table = internal constant { [8 x %struct.anon.105], [32 x i8] } { [8 x %struct.anon.105] [%struct.anon.105 { i32 2, i32 0, i32 0 }, %struct.anon.105 { i32 4, i32 0, i32 1 }, %struct.anon.105 { i32 4, i32 1, i32 0 }, %struct.anon.105 { i32 8, i32 1, i32 1 }, %struct.anon.105 { i32 8, i32 2, i32 0 }, %struct.anon.105 { i32 16, i32 2, i32 1 }, %struct.anon.105 { i32 12, i32 3, i32 0 }, %struct.anon.105 { i32 24, i32 3, i32 1 }], [32 x i8] zeroinitializer }, align 32
@pll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Unable to scale output frequency: %uHz\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_factors\00", [20 x i8] zeroinitializer }, align 32
@pll_factors._entry_ptr = internal global ptr @pll_factors._entry, section ".printk_index", align 4
@pll_factors._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: WM8804 N value is not within the recommended range: %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@pll_factors._entry_ptr.61 = internal global ptr @pll_factors._entry.59, section ".printk_index", align 4
@wm8804_set_clkdiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown clock divider: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8804_set_clkdiv\00", [46 x i8] zeroinitializer }, align 32
@wm8804_set_clkdiv._entry_ptr = internal global ptr @wm8804_set_clkdiv._entry, section ".printk_index", align 4
@wm8804_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown dai format\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8804_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@wm8804_set_fmt._entry_ptr = internal global ptr @wm8804_set_fmt._entry, section ".printk_index", align 4
@wm8804_set_fmt._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown master/slave configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8804_set_fmt._entry_ptr.68 = internal global ptr @wm8804_set_fmt._entry.66, section ".printk_index", align 4
@wm8804_set_fmt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown polarity configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8804_set_fmt._entry_ptr.71 = internal global ptr @wm8804_set_fmt._entry.69, section ".printk_index", align 4
@wm8804_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported word length: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8804_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8804_hw_params._entry_ptr = internal global ptr @wm8804_hw_params._entry, section ".printk_index", align 4
@wm8804_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.74, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8804_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@wm8804_runtime_resume._entry_ptr = internal global ptr @wm8804_runtime_resume._entry, section ".printk_index", align 4
@switch.table.wm8804_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 0, i32 1, i32 3, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8804_set_fmt.75 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 16, i32 16], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8804_set_fmt.76 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 32, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"wm8804_reg_defaults\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 36, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"wm8804_regmap_config\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 552, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 580, i32 47 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 584, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 594, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 608, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 618, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 626, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 632, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 639, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 646, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 650, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 655, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8804\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 542, i32 46 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"wm8804_dai\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 522, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 663, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [10 x i8] c"wm8804_pm\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 720, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 32, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 33, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"wm8804_dapm_routes\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 120, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 106, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 107, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 109, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 110, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 112, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [21 x i8] c"wm8804_tx_source_mux\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 100, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 114, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 116, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"wm8804_dapm_widgets\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 105, i32 41 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 101, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"txsrc\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 98, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant [11 x i8] c"txsrc_text\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 97, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 97, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 97, i32 50 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 121, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 131, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 523, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant [15 x i8] c"wm8804_dai_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 506, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 461, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 476, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [11 x i8] c"post_table\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 332, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 367, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 381, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 500, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 238, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 254, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 275, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 307, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [29 x i8] c"../sound/soc/codecs/wm8804.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 694, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [28 x i8] c"switch.table.wm8804_set_fmt\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [31 x i8] c"switch.table.wm8804_set_fmt.75\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [31 x i8] c"switch.table.wm8804_set_fmt.76\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_wm8804_pm, ptr @__ksymtab_wm8804_probe, ptr @__ksymtab_wm8804_regmap_config, ptr @__ksymtab_wm8804_remove, ptr @pll_factors._entry, ptr @pll_factors._entry.59, ptr @pll_factors._entry_ptr, ptr @pll_factors._entry_ptr.61, ptr @wm8804_hw_params._entry, ptr @wm8804_hw_params._entry_ptr, ptr @wm8804_probe._entry, ptr @wm8804_probe._entry.12, ptr @wm8804_probe._entry.15, ptr @wm8804_probe._entry.18, ptr @wm8804_probe._entry.20, ptr @wm8804_probe._entry.23, ptr @wm8804_probe._entry.26, ptr @wm8804_probe._entry.30, ptr @wm8804_probe._entry.33, ptr @wm8804_probe._entry.6, ptr @wm8804_probe._entry.9, ptr @wm8804_probe._entry_ptr, ptr @wm8804_probe._entry_ptr.11, ptr @wm8804_probe._entry_ptr.14, ptr @wm8804_probe._entry_ptr.17, ptr @wm8804_probe._entry_ptr.19, ptr @wm8804_probe._entry_ptr.22, ptr @wm8804_probe._entry_ptr.25, ptr @wm8804_probe._entry_ptr.29, ptr @wm8804_probe._entry_ptr.32, ptr @wm8804_probe._entry_ptr.35, ptr @wm8804_probe._entry_ptr.8, ptr @wm8804_runtime_resume._entry, ptr @wm8804_runtime_resume._entry_ptr, ptr @wm8804_set_clkdiv._entry, ptr @wm8804_set_clkdiv._entry_ptr, ptr @wm8804_set_fmt._entry, ptr @wm8804_set_fmt._entry.66, ptr @wm8804_set_fmt._entry.69, ptr @wm8804_set_fmt._entry_ptr, ptr @wm8804_set_fmt._entry_ptr.68, ptr @wm8804_set_fmt._entry_ptr.71, ptr @wm8804_set_sysclk._entry, ptr @wm8804_set_sysclk._entry.54, ptr @wm8804_set_sysclk._entry_ptr, ptr @wm8804_set_sysclk._entry_ptr.56, ptr @wm8804_reg_defaults, ptr @wm8804_regmap_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @soc_component_dev_wm8804, ptr @wm8804_dai, ptr @.str.34, ptr @wm8804_pm, ptr @.str.36, ptr @.str.37, ptr @wm8804_dapm_routes, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @wm8804_tx_source_mux, ptr @.str.43, ptr @.str.44, ptr @wm8804_dapm_widgets, ptr @.str.46, ptr @txsrc, ptr @txsrc_text, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @wm8804_dai_ops, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @post_table, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.wm8804_set_fmt, ptr @switch.table.wm8804_set_fmt.75, ptr @switch.table.wm8804_set_fmt.76], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_reg_defaults to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8804 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_dapm_routes to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_tx_source_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txsrc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txsrc_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_set_sysclk._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_factors._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_set_clkdiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_set_fmt._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_set_fmt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8804_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8804_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8804_set_fmt.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8804_set_fmt.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8804_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %reg)
  %0 = icmp ult i32 %reg, 18
  %switch.cast = trunc i32 %reg to i18
  %switch.downshift = lshr i18 -2041, %switch.cast
  %1 = and i18 %switch.downshift, 1
  %switch.masked = icmp ne i18 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8804_probe(ptr noundef %dev, ptr noundef %regmap) #1 align 64 {
entry:
  %id1 = alloca i32, align 4
  %id2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id1) #6
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id1, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id2) #6
  %1 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id2, align 4, !annotation !175
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %regmap2 = getelementptr inbounds %struct.wm8804_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %regmap2, align 4
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 3) #6
  %reset = getelementptr inbounds %struct.wm8804_priv, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx10 = getelementptr %struct.wm8804_priv, ptr %call.i, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.36, ptr %arrayidx10, align 4
  %arrayidx10.1 = getelementptr %struct.wm8804_priv, ptr %call.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.37, ptr %arrayidx10.1, align 4
  %call12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %8) #9
  br label %cleanup103

do.end17:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call12) #9
  br label %cleanup103

if.end18:                                         ; preds = %for.body.preheader
  %disable_nb = getelementptr %struct.wm8804_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %disable_nb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wm8804_regulator_event_0, ptr %disable_nb, align 4
  %arrayidx21 = getelementptr %struct.wm8804_priv, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wm8804_regulator_event_1, ptr %arrayidx21, align 4
  %consumer = getelementptr %struct.wm8804_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %consumer, align 4
  %call30 = tail call i32 @devm_regulator_register_notifier(ptr noundef %12, ptr noundef %disable_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %for.cond23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond23:                                       ; preds = %if.end18
  %consumer.1 = getelementptr %struct.wm8804_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %consumer.1, align 4
  %call30.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %14, ptr noundef %arrayidx21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.1)
  %cmp31.not.1 = icmp eq i32 %call30.1, 0
  br i1 %cmp31.not.1, label %for.cond23.1, label %for.cond23.cleanup_crit_edge

for.cond23.cleanup_crit_edge:                     ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond23.1:                                     ; preds = %for.cond23
  %call42 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

cleanup:                                          ; preds = %for.cond23.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %call30.lcssa = phi i32 [ %call30, %if.end18.cleanup_crit_edge ], [ %call30.1, %for.cond23.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call30.lcssa) #9
  br label %cleanup103

do.end47:                                         ; preds = %for.cond23.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call42) #9
  br label %cleanup103

if.end48:                                         ; preds = %for.cond23.1
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 1) #6
  %call50 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef nonnull %id1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call50) #9
  br label %err_reg_enable

if.end56:                                         ; preds = %if.end48
  %call57 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 1, ptr noundef nonnull %id2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end63

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call57) #9
  br label %err_reg_enable

if.end63:                                         ; preds = %if.end56
  %17 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id2, align 4
  %shl = shl i32 %18, 8
  %19 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id1, align 4
  %or = or i32 %shl, %20
  store i32 %or, ptr %id2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34821, i32 %or)
  %cmp64.not = icmp eq i32 %or, 34821
  br i1 %cmp64.not, label %if.end69, label %do.end68

do.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %or) #9
  br label %err_reg_enable

if.end69:                                         ; preds = %if.end63
  %call70 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 2, ptr noundef nonnull %id1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %do.end79

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call70) #9
  br label %err_reg_enable

do.end79:                                         ; preds = %if.end69
  %21 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id1, align 4
  %add = add i32 %22, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %add) #9
  %23 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset, align 4
  %tobool81.not = icmp eq ptr %24, null
  br i1 %tobool81.not, label %if.then82, label %do.end79.if.end90_crit_edge

do.end79.if.end90_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then82:                                        ; preds = %do.end79
  %25 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap2, align 4
  %call.i175 = call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp84 = icmp slt i32 %call.i175, 0
  br i1 %cmp84, label %do.end88, label %if.then82.if.end90_crit_edge

if.then82.if.end90_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.end88:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call.i175) #9
  br label %err_reg_enable

if.end90:                                         ; preds = %if.then82.if.end90_crit_edge, %do.end79.if.end90_crit_edge
  %call91 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8804, ptr noundef nonnull @wm8804_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %if.end97

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call91) #9
  br label %err_reg_enable

if.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %call.i176 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i177 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #6
  br label %cleanup103

err_reg_enable:                                   ; preds = %do.end96, %do.end88, %do.end75, %do.end68, %do.end62, %do.end55
  %ret.0 = phi i32 [ %call50, %do.end55 ], [ %call57, %do.end62 ], [ -22, %do.end68 ], [ %call70, %do.end75 ], [ %call91, %do.end96 ], [ %call.i175, %do.end88 ]
  %call102 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx10) #6
  br label %cleanup103

cleanup103:                                       ; preds = %err_reg_enable, %if.end97, %do.end47, %cleanup, %do.end17, %if.then6, %entry.cleanup103_crit_edge
  %retval.2 = phi i32 [ %8, %if.then6 ], [ %call12, %do.end17 ], [ %call30.lcssa, %cleanup ], [ %call42, %do.end47 ], [ %ret.0, %err_reg_enable ], [ 0, %if.end97 ], [ -12, %entry.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id1) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_regulator_event_0(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr i8, ptr %nb, i32 -28
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_regulator_event_1(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr i8, ptr %nb, i32 -40
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm8804_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_runtime_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.wm8804_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 30, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %supplies = getelementptr inbounds %struct.wm8804_priv, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_runtime_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.wm8804_priv, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.wm8804_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %5) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 30, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_aif_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %aif_pwr = getelementptr inbounds %struct.wm8804_priv, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %aif_pwr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aif_pwr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 30, i32 noundef 16, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %9 = ptrtoint ptr %aif_pwr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aif_pwr, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %aif_pwr, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %aif_pwr5 = getelementptr inbounds %struct.wm8804_priv, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %aif_pwr5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aif_pwr5, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %aif_pwr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.then8, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 30, i32 noundef 16, i32 noundef 16) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then8, %sw.bb4.sw.epilog_crit_edge, %if.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txsrc_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #6
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -176
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 8
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %6 to i32
  %shl = shl i32 %4, %conv
  %shl4 = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp.not = icmp eq i32 %shl, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl4)
  %cmp6.not = icmp eq i32 %shl, %shl4
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %card.i = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #6
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %call8 = tail call i32 @snd_soc_component_test_bits(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef %shl4, i32 noundef %shl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i.i, i32 noundef 30) #6
  %and = and i32 %call10, 4
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef 30, i32 noundef 4, i32 noundef 4) #6
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %12, i32 noundef %shl4, i32 noundef %shl) #6
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef 30, i32 noundef 4, i32 noundef %and) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i37 = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_test_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %clk_id, label %do.end14 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %3 = add i32 %freq, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4400001, i32 %3)
  %4 = icmp ult i32 %3, 4400001
  %5 = add i32 %freq, -16280000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10720001, i32 %5)
  %6 = icmp ult i32 %5, 10720001
  %or.cond = or i1 %4, %6
  br i1 %or.cond, label %if.then, label %do.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 128, i32 noundef 128) #6
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef %freq) #9
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 128, i32 noundef 0) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 8, i32 noundef 0) #6
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 8, i32 noundef 8) #6
  br label %cleanup

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.55, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %sw.bb10, %sw.bb8, %sw.bb6, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end14 ], [ -22, %do.end ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_set_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #1 align 64 {
entry:
  %change = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change) #6
  %6 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %change, align 1, !annotation !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool2.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.wm8804_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 30, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %change, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %change, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.then.cleanup47_crit_edge, label %if.then5

if.then.cleanup47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call.i63 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #6
  br label %cleanup47

if.else:                                          ; preds = %entry
  %mclk_div = getelementptr inbounds %struct.wm8804_priv, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %mclk_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mclk_div, align 4
  %mul.i = shl i32 %freq_out, 1
  %15 = add i32 %mul.i, -90000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %15)
  %16 = icmp ult i32 %15, 10000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.i = icmp eq i32 %14, 0
  %or.cond.i = and i1 %16, %cmp5.i
  br i1 %or.cond.i, label %if.else.if.end20.i_crit_edge, label %for.inc.i

if.else.if.end20.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

for.inc.i:                                        ; preds = %if.else
  %mul.1.i = shl i32 %freq_out, 2
  %17 = add i32 %mul.1.i, -90000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %17)
  %18 = icmp ult i32 %17, 10000001
  br i1 %18, label %land.lhs.true3.1.i, label %for.inc.i.for.inc.2.i_crit_edge

for.inc.i.for.inc.2.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

land.lhs.true3.1.i:                               ; preds = %for.inc.i
  %19 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %14, label %land.lhs.true3.1.i.for.inc.2.i_crit_edge [
    i32 1, label %land.lhs.true3.1.i.if.end20.i_crit_edge
    i32 0, label %if.end20.fold.split.i
  ]

land.lhs.true3.1.i.if.end20.i_crit_edge:          ; preds = %land.lhs.true3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

land.lhs.true3.1.i.for.inc.2.i_crit_edge:         ; preds = %land.lhs.true3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true3.1.i.for.inc.2.i_crit_edge, %for.inc.i.for.inc.2.i_crit_edge
  %mul.3.i = shl i32 %freq_out, 3
  %20 = add i32 %mul.3.i, -90000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %20)
  %21 = icmp ult i32 %20, 10000001
  br i1 %21, label %land.lhs.true3.3.i, label %for.inc.4.i

land.lhs.true3.3.i:                               ; preds = %for.inc.2.i
  %22 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %14, label %land.lhs.true3.3.i.for.inc.5.i_crit_edge [
    i32 1, label %land.lhs.true3.3.i.if.end20.i_crit_edge
    i32 0, label %if.end20.fold.split403.i
  ]

land.lhs.true3.3.i.if.end20.i_crit_edge:          ; preds = %land.lhs.true3.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

land.lhs.true3.3.i.for.inc.5.i_crit_edge:         ; preds = %land.lhs.true3.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

for.inc.4.i:                                      ; preds = %for.inc.2.i
  %mul.5.i = shl i32 %freq_out, 4
  %23 = add i32 %mul.5.i, -90000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %23)
  %24 = icmp ult i32 %23, 10000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp5.5.i = icmp eq i32 %14, 1
  %or.cond404.i = and i1 %24, %cmp5.5.i
  br i1 %or.cond404.i, label %for.inc.4.i.if.end20.i_crit_edge, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

for.inc.4.i.if.end20.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

for.inc.5.i:                                      ; preds = %for.inc.4.i.for.inc.5.i_crit_edge, %land.lhs.true3.3.i.for.inc.5.i_crit_edge
  %cmp5.5.i76 = phi i1 [ %cmp5.5.i, %for.inc.4.i.for.inc.5.i_crit_edge ], [ false, %land.lhs.true3.3.i.for.inc.5.i_crit_edge ]
  %mul.6.i = mul i32 %freq_out, 12
  %25 = add i32 %mul.6.i, -90000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %25)
  %26 = icmp ult i32 %25, 10000001
  %or.cond405.i = and i1 %26, %cmp5.i
  br i1 %or.cond405.i, label %for.inc.5.i.if.end20.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end20.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %mul.7.i = mul i32 %freq_out, 24
  %27 = add i32 %mul.7.i, -90000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %27)
  %28 = icmp ult i32 %27, 10000001
  %or.cond406.i = and i1 %28, %cmp5.5.i76
  br i1 %or.cond406.i, label %for.inc.6.i.if.end20.i_crit_edge, label %do.end.i

for.inc.6.i.if.end20.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

do.end.i:                                         ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %freq_out) #9
  br label %cleanup47

if.end20.fold.split.i:                            ; preds = %land.lhs.true3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.fold.split403.i:                         ; preds = %land.lhs.true3.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.fold.split403.i, %if.end20.fold.split.i, %for.inc.6.i.if.end20.i_crit_edge, %for.inc.5.i.if.end20.i_crit_edge, %for.inc.4.i.if.end20.i_crit_edge, %land.lhs.true3.3.i.if.end20.i_crit_edge, %land.lhs.true3.1.i.if.end20.i_crit_edge, %if.else.if.end20.i_crit_edge
  %i.0399.lcssa.i = phi i32 [ %14, %land.lhs.true3.1.i.if.end20.i_crit_edge ], [ 3, %land.lhs.true3.3.i.if.end20.i_crit_edge ], [ 0, %if.else.if.end20.i_crit_edge ], [ 2, %if.end20.fold.split.i ], [ 4, %if.end20.fold.split403.i ], [ 5, %for.inc.4.i.if.end20.i_crit_edge ], [ 6, %for.inc.5.i.if.end20.i_crit_edge ], [ 7, %for.inc.6.i.if.end20.i_crit_edge ]
  %mul.lcssa.i = phi i32 [ %mul.1.i, %land.lhs.true3.1.i.if.end20.i_crit_edge ], [ %mul.3.i, %land.lhs.true3.3.i.if.end20.i_crit_edge ], [ %mul.i, %if.else.if.end20.i_crit_edge ], [ %mul.1.i, %if.end20.fold.split.i ], [ %mul.3.i, %if.end20.fold.split403.i ], [ %mul.5.i, %for.inc.4.i.if.end20.i_crit_edge ], [ %mul.6.i, %for.inc.5.i.if.end20.i_crit_edge ], [ %mul.7.i, %for.inc.6.i.if.end20.i_crit_edge ]
  %.lcssa.i = phi i32 [ -805306369, %land.lhs.true3.1.i.if.end20.i_crit_edge ], [ -805306369, %land.lhs.true3.3.i.if.end20.i_crit_edge ], [ -1879048193, %if.else.if.end20.i_crit_edge ], [ -1879048193, %if.end20.fold.split.i ], [ -1879048193, %if.end20.fold.split403.i ], [ -805306369, %for.inc.4.i.if.end20.i_crit_edge ], [ -1879048193, %for.inc.5.i.if.end20.i_crit_edge ], [ -805306369, %for.inc.6.i.if.end20.i_crit_edge ]
  %freqmode.i = getelementptr [8 x %struct.anon.105], ptr @post_table, i32 0, i32 %i.0399.lcssa.i, i32 1
  %29 = ptrtoint ptr %freqmode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %freqmode.i, align 4
  %bf.value.i = shl i32 %30, 28
  %bf.shl.i = and i32 %bf.value.i, 805306368
  %bf.set13.i = or i32 %.lcssa.i, %bf.shl.i
  %bf.clear22.i = and i32 %bf.set13.i, 2147483647
  %div24.i = udiv i32 %mul.lcssa.i, %freq_in
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div24.i)
  %cmp25.i = icmp ult i32 %div24.i, 5
  br i1 %cmp25.i, label %if.then26.i, label %if.end20.i.if.end31.i_crit_edge

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %freq_in, 1
  %div30.i = udiv i32 %mul.lcssa.i, %shr.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %if.end20.i.if.end31.i_crit_edge
  %pll_div.sroa.0.0 = phi i32 [ %bf.set13.i, %if.then26.i ], [ %bf.clear22.i, %if.end20.i.if.end31.i_crit_edge ]
  %Ndiv.0.i = phi i32 [ %div30.i, %if.then26.i ], [ %div24.i, %if.end20.i.if.end31.i_crit_edge ]
  %source.addr.0.i = phi i32 [ %shr.i, %if.then26.i ], [ %freq_in, %if.end20.i.if.end31.i_crit_edge ]
  %31 = add nsw i32 %Ndiv.0.i, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %31)
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %do.end37.i, label %if.end40.i

do.end37.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %Ndiv.0.i) #9
  br label %cleanup47

if.end40.i:                                       ; preds = %if.end31.i
  %rem.i = urem i32 %mul.lcssa.i, %source.addr.0.i
  %conv.i = zext i32 %rem.i to i64
  %mul46.i = mul nuw nsw i64 %conv.i, 41943040
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul46.i)
  %cmp222.i = icmp ult i64 %mul46.i, 4294967296
  br i1 %cmp222.i, label %if.then226.i, label %if.else232.i, !prof !177

if.then226.i:                                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv227.i = trunc i64 %mul46.i to i32
  %div230.i = udiv i32 %conv227.i, %source.addr.0.i
  br label %if.end10

if.else232.i:                                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %source.addr.0.i, i64 %mul46.i) #10, !srcloc !178
  %asmresult1.i.i = extractvalue { i64, i64 } %33, 1
  %extract.t396.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end10

if.end10:                                         ; preds = %if.else232.i, %if.then226.i
  %Kpart.0.off0.i = phi i32 [ %div230.i, %if.then226.i ], [ %extract.t396.i, %if.else232.i ]
  %rem240.i = urem i32 %Kpart.0.off0.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem240.i)
  %cmp241.i = icmp ugt i32 %rem240.i, 4
  %add244.i = add i32 %Kpart.0.off0.i, 5
  %spec.select.i = select i1 %cmp241.i, i32 %add244.i, i32 %Kpart.0.off0.i
  %div246.i = udiv i32 %spec.select.i, 10
  %regmap11 = getelementptr inbounds %struct.wm8804_priv, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap11, align 4
  %call.i65 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 30, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %change, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %change, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool13.not = icmp eq i8 %37, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %call.i66 = call i32 @__pm_runtime_resume(ptr noundef %39, i32 noundef 4) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  %bf.clear44.i = lshr i32 %pll_div.sroa.0.0, 27
  %shl = and i32 %bf.clear44.i, 16
  %or = or i32 %shl, %Ndiv.0.i
  %call20 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 31, i32 noundef %or) #6
  %bf.lshr22 = lshr i32 %pll_div.sroa.0.0, 28
  %bf.clear23 = and i32 %bf.lshr22, 3
  %shl27 = and i32 %bf.clear44.i, 8
  %or28 = or i32 %shl27, %bf.clear23
  %call29 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 11, i32 noundef %or28) #6
  %and = and i32 %div246.i, 255
  %call33 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %and) #6
  %bf.lshr35 = lshr i32 %div246.i, 8
  %and37 = and i32 %bf.lshr35, 255
  %call38 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %and37) #6
  %bf.shl249.i = lshr i32 %div246.i, 16
  %bf.lshr40 = and i32 %bf.shl249.i, 63
  %call43 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %bf.lshr40) #6
  %call44 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 30, i32 noundef 1, i32 noundef 0) #6
  br label %cleanup47

cleanup47:                                        ; preds = %if.end17, %do.end37.i, %do.end.i, %if.then5, %if.then.cleanup47_crit_edge
  %retval.1 = phi i32 [ 0, %if.end17 ], [ 0, %if.then.cleanup47_crit_edge ], [ 0, %if.then5 ], [ -22, %do.end.i ], [ -22, %do.end37.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_set_clkdiv(ptr nocapture noundef readonly %dai, i32 noundef %div_id, i32 noundef %div) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = zext i32 %div_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %div_id, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = shl i32 %div, 4
  %shl = and i32 %and, 48
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 48, i32 noundef %shl) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %mclk_div = getelementptr inbounds %struct.wm8804_priv, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %mclk_div to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %mclk_div, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.62, i32 noundef %div_id) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.64) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8804_set_fmt, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 3, i32 noundef %switch.load) #6
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 3, i32 noundef %switch.load) #6
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %trunc, label %do.end13 [
    i16 4096, label %switch.lookup.sw.epilog15_crit_edge
    i16 16384, label %sw.bb9
  ]

switch.lookup.sw.epilog15_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

sw.bb9:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog15

do.end13:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.67) #9
  br label %cleanup

sw.epilog15:                                      ; preds = %sw.bb9, %switch.lookup.sw.epilog15_crit_edge
  %master.0 = phi i32 [ 0, %sw.bb9 ], [ 64, %switch.lookup.sw.epilog15_crit_edge ]
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 64, i32 noundef %master.0) #6
  %and18 = lshr i32 %fmt, 8
  %10 = and i32 %and18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %switch.hole_check, label %sw.epilog15.do.end25_crit_edge

sw.epilog15.do.end25_crit_edge:                   ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end25:                                         ; preds = %switch.hole_check.do.end25_crit_edge, %sw.epilog15.do.end25_crit_edge
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.70) #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog15
  %switch.maskindex = trunc i32 %10 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end25_crit_edge, label %switch.lookup56

switch.hole_check.do.end25_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

switch.lookup56:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep57 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8804_set_fmt.75, i32 0, i32 %10
  %15 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %switch.gep59 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8804_set_fmt.76, i32 0, i32 %10
  %16 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %or = or i32 %switch.load60, %switch.load58
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 48, i32 noundef %or) #6
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 48, i32 noundef %or) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup56, %do.end25, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ -22, %do.end25 ], [ 0, %switch.lookup56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8804_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !179
  %add.i.i.i = or i32 %4, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %7 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call1.i, label %do.end [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 20, label %sw.bb2
    i32 24, label %sw.bb3
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %params_width.exit
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i15 = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i15, label %for.inc.i.i.i22, label %do.end.if.then.i.i.i19_crit_edge

do.end.if.then.i.i.i19_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i19

if.then.i.i.i19:                                  ; preds = %for.inc.i.i.i22.if.then.i.i.i19_crit_edge, %do.end.if.then.i.i.i19_crit_edge
  %i.09.lcssa.i.i.i16 = phi i32 [ 0, %do.end.if.then.i.i.i19_crit_edge ], [ 32, %for.inc.i.i.i22.if.then.i.i.i19_crit_edge ]
  %.lcssa.i.i.i17 = phi i32 [ %11, %do.end.if.then.i.i.i19_crit_edge ], [ %14, %for.inc.i.i.i22.if.then.i.i.i19_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i17, i1 true) #6, !range !179
  %add.i.i.i18 = or i32 %12, %i.09.lcssa.i.i.i16
  br label %params_width.exit25

for.inc.i.i.i22:                                  ; preds = %do.end
  %arrayidx.1.i.i.i20 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i.i21 = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i.i21, label %for.inc.i.i.i22.params_width.exit25_crit_edge, label %for.inc.i.i.i22.if.then.i.i.i19_crit_edge

for.inc.i.i.i22.if.then.i.i.i19_crit_edge:        ; preds = %for.inc.i.i.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i19

for.inc.i.i.i22.params_width.exit25_crit_edge:    ; preds = %for.inc.i.i.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit25

params_width.exit25:                              ; preds = %for.inc.i.i.i22.params_width.exit25_crit_edge, %if.then.i.i.i19
  %retval.0.i.i.i23 = phi i32 [ %add.i.i.i18, %if.then.i.i.i19 ], [ 0, %for.inc.i.i.i22.params_width.exit25_crit_edge ]
  %call1.i24 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i23) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.72, i32 noundef %call1.i24) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %params_width.exit.sw.epilog_crit_edge
  %blen.0 = phi i32 [ 8, %sw.bb3 ], [ 4, %sw.bb2 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 12, i32 noundef %blen.0) #6
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 12, i32 noundef %blen.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_width.exit25
  %retval.0 = phi i32 [ -22, %params_width.exit25 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @wm8804_regmap_config, !1, !"wm8804_regmap_config", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8804.c", i32 552, i32 28}
!2 = !{ptr @__ksymtab_wm8804_regmap_config, !3, !"__ksymtab_wm8804_regmap_config", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8804.c", i32 563, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8804.c", i32 580, i32 47}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8804.c", i32 584, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @wm8804_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @wm8804_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8804.c", i32 594, i32 3}
!16 = !{ptr @wm8804_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @wm8804_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wm8804.c", i32 608, i32 4}
!20 = !{ptr @wm8804_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm8804_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm8804.c", i32 618, i32 3}
!24 = !{ptr @wm8804_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wm8804_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/wm8804.c", i32 626, i32 3}
!28 = !{ptr @wm8804_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wm8804_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @wm8804_probe._entry.18, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/wm8804.c", i32 632, i32 3}
!32 = !{ptr @wm8804_probe._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm8804.c", i32 639, i32 3}
!35 = !{ptr @wm8804_probe._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm8804_probe._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm8804.c", i32 646, i32 3}
!39 = !{ptr @wm8804_probe._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wm8804_probe._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8804.c", i32 650, i32 2}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wm8804_probe._entry.26, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @wm8804_probe._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wm8804.c", i32 655, i32 4}
!48 = !{ptr @wm8804_probe._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wm8804_probe._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm8804.c", i32 663, i32 3}
!52 = !{ptr @wm8804_probe._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wm8804_probe._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__ksymtab_wm8804_probe, !55, !"__ksymtab_wm8804_probe", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm8804.c", i32 677, i32 1}
!56 = !{ptr @__ksymtab_wm8804_remove, !57, !"__ksymtab_wm8804_remove", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8804.c", i32 683, i32 1}
!58 = !{ptr @wm8804_pm, !59, !"wm8804_pm", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/wm8804.c", i32 720, i32 25}
!60 = !{ptr @__ksymtab_wm8804_pm, !61, !"__ksymtab_wm8804_pm", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8804.c", i32 723, i32 1}
!62 = !{ptr @__UNIQUE_ID_description295, !63, !"__UNIQUE_ID_description295", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8804.c", i32 725, i32 1}
!64 = !{ptr @__UNIQUE_ID_author296, !65, !"__UNIQUE_ID_author296", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8804.c", i32 726, i32 1}
!66 = !{ptr @__UNIQUE_ID_file297, !67, !"__UNIQUE_ID_file297", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8804.c", i32 727, i32 1}
!68 = !{ptr @__UNIQUE_ID_license298, !67, !"__UNIQUE_ID_license298", i1 false, i1 false}
!69 = !{ptr @wm8804_reg_defaults, !70, !"wm8804_reg_defaults", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm8804.c", i32 36, i32 33}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm8804.c", i32 32, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm8804.c", i32 33, i32 2}
!75 = distinct !{null, !76, !"wm8804_supply_names", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm8804.c", i32 31, i32 20}
!77 = !{ptr @soc_component_dev_wm8804, !78, !"soc_component_dev_wm8804", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm8804.c", i32 542, i32 46}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8804.c", i32 106, i32 1}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm8804.c", i32 107, i32 1}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8804.c", i32 109, i32 1}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8804.c", i32 110, i32 1}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8804.c", i32 112, i32 1}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8804.c", i32 114, i32 1}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8804.c", i32 116, i32 1}
!93 = !{ptr @wm8804_dapm_widgets, !94, !"wm8804_dapm_widgets", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8804.c", i32 105, i32 41}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8804.c", i32 101, i32 2}
!97 = !{ptr @wm8804_tx_source_mux, !98, !"wm8804_tx_source_mux", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8804.c", i32 100, i32 38}
!99 = !{ptr @txsrc, !100, !"txsrc", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8804.c", i32 98, i32 8}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8804.c", i32 97, i32 37}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8804.c", i32 97, i32 50}
!105 = !{ptr @txsrc_text, !106, !"txsrc_text", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8804.c", i32 97, i32 20}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8804.c", i32 121, i32 19}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8804.c", i32 131, i32 4}
!111 = !{ptr @wm8804_dapm_routes, !112, !"wm8804_dapm_routes", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8804.c", i32 120, i32 40}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8804.c", i32 523, i32 10}
!115 = !{ptr @wm8804_dai, !116, !"wm8804_dai", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm8804.c", i32 522, i32 34}
!117 = !{ptr @wm8804_dai_ops, !118, !"wm8804_dai_ops", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm8804.c", i32 506, i32 37}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wm8804.c", i32 461, i32 4}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @wm8804_set_sysclk._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @wm8804_set_sysclk._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8804.c", i32 476, i32 3}
!126 = !{ptr @wm8804_set_sysclk._entry.54, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @wm8804_set_sysclk._entry_ptr.56, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8804.c", i32 367, i32 3}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @pll_factors._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @pll_factors._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8804.c", i32 381, i32 3}
!135 = !{ptr @pll_factors._entry.59, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @pll_factors._entry_ptr.61, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @post_table, !138, !"post_table", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8804.c", i32 332, i32 3}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8804.c", i32 500, i32 3}
!141 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wm8804_set_clkdiv._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @wm8804_set_clkdiv._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8804.c", i32 238, i32 3}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @wm8804_set_fmt._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @wm8804_set_fmt._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm8804.c", i32 254, i32 3}
!151 = !{ptr @wm8804_set_fmt._entry.66, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @wm8804_set_fmt._entry_ptr.68, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm8804.c", i32 275, i32 3}
!155 = !{ptr @wm8804_set_fmt._entry.69, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @wm8804_set_fmt._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/wm8804.c", i32 307, i32 3}
!159 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @wm8804_hw_params._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @wm8804_hw_params._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8804.c", i32 694, i32 3}
!164 = !{ptr @wm8804_runtime_resume._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @wm8804_runtime_resume._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{i8 0, i8 2}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2148202981, i64 2148203261, i64 2148203595, i64 2148203929}
!179 = !{i32 0, i32 33}
