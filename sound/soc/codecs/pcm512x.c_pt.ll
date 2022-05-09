; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/pcm512x.c_pt.bc'
source_filename = "../sound/soc/codecs/pcm512x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcm512x_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm512x_regmap\09\09\09\09"
module asm "\09.long\09__crc_pcm512x_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm512x_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm512x_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_pcm512x_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcm512x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm512x_probe\09\09\09\09"
module asm "\09.long\09__crc_pcm512x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm512x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm512x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pcm512x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcm512x_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm512x_remove\09\09\09\09"
module asm "\09.long\09__crc_pcm512x_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm512x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm512x_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pcm512x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcm512x_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pcm512x_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_pcm512x_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcm512x_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pcm512x_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pcm512x_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pcm512x_priv = type { ptr, ptr, [3 x %struct.regulator_bulk_data], [3 x %struct.notifier_block], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@pcm512x_reg_defaults = internal constant { [45 x %struct.reg_default], [88 x i8] } { [45 x %struct.reg_default] [%struct.reg_default { i32 257, i32 0 }, %struct.reg_default { i32 258, i32 0 }, %struct.reg_default { i32 259, i32 0 }, %struct.reg_default { i32 263, i32 0 }, %struct.reg_default { i32 269, i32 0 }, %struct.reg_default { i32 270, i32 0 }, %struct.reg_default { i32 298, i32 17 }, %struct.reg_default { i32 299, i32 1 }, %struct.reg_default { i32 300, i32 0 }, %struct.reg_default { i32 315, i32 0 }, %struct.reg_default { i32 293, i32 0 }, %struct.reg_default { i32 316, i32 0 }, %struct.reg_default { i32 317, i32 48 }, %struct.reg_default { i32 318, i32 48 }, %struct.reg_default { i32 319, i32 34 }, %struct.reg_default { i32 320, i32 0 }, %struct.reg_default { i32 321, i32 7 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 514, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 518, i32 0 }, %struct.reg_default { i32 519, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 1 }, %struct.reg_default { i32 265, i32 0 }, %struct.reg_default { i32 268, i32 124 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 274, i32 0 }, %struct.reg_default { i32 275, i32 16 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 277, i32 0 }, %struct.reg_default { i32 278, i32 0 }, %struct.reg_default { i32 279, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 283, i32 0 }, %struct.reg_default { i32 284, i32 0 }, %struct.reg_default { i32 285, i32 0 }, %struct.reg_default { i32 286, i32 0 }, %struct.reg_default { i32 288, i32 0 }, %struct.reg_default { i32 289, i32 0 }, %struct.reg_default { i32 290, i32 0 }, %struct.reg_default { i32 291, i32 1 }, %struct.reg_default { i32 292, i32 0 }, %struct.reg_default { i32 296, i32 2 }, %struct.reg_default { i32 297, i32 0 }], [88 x i8] zeroinitializer }, align 32
@pcm512x_range = internal constant { %struct.regmap_range_cfg, [32 x i8] } { %struct.regmap_range_cfg { ptr @.str.40, i32 256, i32 65088, i32 0, i32 255, i32 0, i32 0, i32 256 }, [32 x i8] zeroinitializer }, align 32
@pcm512x_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @pcm512x_readable, ptr @pcm512x_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65088, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm512x_reg_defaults, i32 45, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @pcm512x_range, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_pcm512x_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm512x_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm512x_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm512x_regmap to i32), ptr @__kstrtab_pcm512x_regmap, ptr @__kstrtabns_pcm512x_regmap }, section "___ksymtab_gpl+pcm512x_regmap", align 4
@pcm512x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcm512x->mutex\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get supplies: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcm512x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/pcm512x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr = internal global ptr @pcm512x_probe._entry, section ".printk_index", align 4
@pcm512x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register regulator notifier: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.8 = internal global ptr @pcm512x_probe._entry.6, section ".printk_index", align 4
@pcm512x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.11 = internal global ptr @pcm512x_probe._entry.9, section ".printk_index", align 4
@pcm512x_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.14 = internal global ptr @pcm512x_probe._entry.12, section ".printk_index", align 4
@pcm512x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.16 = internal global ptr @pcm512x_probe._entry.15, section ".printk_index", align 4
@pcm512x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable SCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.19 = internal global ptr @pcm512x_probe._entry.17, section ".printk_index", align 4
@pcm512x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1621, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request standby: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.22 = internal global ptr @pcm512x_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll-in\00", [25 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid pll-in\0A\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.26 = internal global ptr @pcm512x_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll-out\00", [24 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid pll-out\0A\00", [47 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.30 = internal global ptr @pcm512x_probe._entry.28, section ".printk_index", align 4
@pcm512x_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: both pll-in and pll-out, or none\0A\00", [55 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.33 = internal global ptr @pcm512x_probe._entry.31, section ".printk_index", align 4
@pcm512x_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error: pll-in == pll-out\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.36 = internal global ptr @pcm512x_probe._entry.34, section ".printk_index", align 4
@pcm512x_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @pcm512x_controls, i32 20, ptr @pcm512x_dapm_widgets, i32 4, ptr @pcm512x_dapm_routes, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm512x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pcm512x_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.113, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pcm512x_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.108, i64 1092, i32 1073741824, i32 8000, i32 384000, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_probe._entry_ptr.39 = internal global ptr @pcm512x_probe._entry.37, section ".printk_index", align 4
@__kstrtab_pcm512x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm512x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm512x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm512x_probe to i32), ptr @__kstrtab_pcm512x_probe, ptr @__kstrtabns_pcm512x_probe }, section "___ksymtab_gpl+pcm512x_probe", align 4
@__kstrtab_pcm512x_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm512x_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm512x_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm512x_remove to i32), ptr @__kstrtab_pcm512x_remove, ptr @__kstrtabns_pcm512x_remove }, section "___ksymtab_gpl+pcm512x_remove", align 4
@pcm512x_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm512x_suspend, ptr @pcm512x_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pcm512x_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcm512x_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pcm512x_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcm512x_pm_ops to i32), ptr @__kstrtab_pcm512x_pm_ops, ptr @__kstrtabns_pcm512x_pm_ops }, section "___ksymtab_gpl+pcm512x_pm_ops", align 4
@__UNIQUE_ID_description313 = internal constant [54 x i8] c"snd_soc_pcm512x.description=ASoC PCM512x codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [55 x i8] c"snd_soc_pcm512x.author=Mark Brown <broonie@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [54 x i8] c"snd_soc_pcm512x.file=sound/soc/codecs/snd-soc-pcm512x\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [31 x i8] c"snd_soc_pcm512x.license=GPL v2\00", section ".modinfo", align 1
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Pages\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@pcm512x_controls = internal constant { [20 x %struct.snd_kcontrol_new], [224 x i8] } { [20 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @pcm512x_digital_playback_switch_get, ptr @pcm512x_digital_playback_switch_put, %union.anon.96 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_dsp_program to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_clk_missing to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_autom_l to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_autom_r to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_vndf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_vnds to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_vnuf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_vnus to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_vedf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @pcm512x_veds to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @pcm512x_overclock_pll_get, ptr @pcm512x_overclock_pll_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @pcm512x_overclock_dsp_get, ptr @pcm512x_overclock_dsp_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @pcm512x_overclock_dac_get, ptr @pcm512x_overclock_dac_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }], [224 x i8] zeroinitializer }, align 32
@pcm512x_dapm_routes = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 317, i32 318, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analogue Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@analog_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 514, i32 514, i32 4, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Analogue Playback Boost Volume\00", [33 x i8] zeroinitializer }, align 32
@boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 80], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 519, i32 519, i32 4, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Deemphasis Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 263, i32 263, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSP Program\00", [20 x i8] zeroinitializer }, align 32
@pcm512x_dsp_program = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 299, i8 0, i8 0, i32 5, i32 31, ptr @pcm512x_dsp_program_texts, ptr @pcm512x_dsp_program_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Clock Missing Period\00", [43 x i8] zeroinitializer }, align 32
@pcm512x_clk_missing = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 300, i8 0, i8 0, i32 8, i32 7, ptr @pcm512x_clk_missing_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Auto Mute Time Left\00", [44 x i8] zeroinitializer }, align 32
@pcm512x_autom_l = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 315, i8 4, i8 4, i32 8, i32 7, ptr @pcm512x_autom_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Auto Mute Time Right\00", [43 x i8] zeroinitializer }, align 32
@pcm512x_autom_r = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 315, i8 0, i8 0, i32 8, i32 7, ptr @pcm512x_autom_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Auto Mute Mono Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 321, i32 321, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Auto Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 321, i32 321, i32 1, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Volume Ramp Down Rate\00", [42 x i8] zeroinitializer }, align 32
@pcm512x_vndf = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 319, i8 6, i8 6, i32 4, i32 3, ptr @pcm512x_ramp_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Volume Ramp Down Step\00", [42 x i8] zeroinitializer }, align 32
@pcm512x_vnds = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 319, i8 4, i8 4, i32 4, i32 3, ptr @pcm512x_ramp_step_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Volume Ramp Up Rate\00", [44 x i8] zeroinitializer }, align 32
@pcm512x_vnuf = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 319, i8 2, i8 2, i32 4, i32 3, ptr @pcm512x_ramp_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Volume Ramp Up Step\00", [44 x i8] zeroinitializer }, align 32
@pcm512x_vnus = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 319, i8 0, i8 0, i32 4, i32 3, ptr @pcm512x_ramp_step_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Volume Ramp Down Emergency Rate\00", [32 x i8] zeroinitializer }, align 32
@pcm512x_vedf = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 320, i8 6, i8 6, i32 4, i32 3, ptr @pcm512x_ramp_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Volume Ramp Down Emergency Step\00", [32 x i8] zeroinitializer }, align 32
@pcm512x_veds = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 320, i8 4, i8 4, i32 4, i32 3, ptr @pcm512x_ramp_step_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max Overclock PLL\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max Overclock DSP\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 40, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Max Overclock DAC\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 40, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@pcm512x_digital_playback_switch_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to update digital mute: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pcm512x_digital_playback_switch_put\00", [60 x i8] zeroinitializer }, align 32
@pcm512x_digital_playback_switch_put._entry_ptr = internal global ptr @pcm512x_digital_playback_switch_put._entry, section ".printk_index", align 4
@pcm512x_dsp_program_texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [44 x i8] zeroinitializer }, align 32
@pcm512x_dsp_program_values = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FIR interpolation with de-emphasis\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Low latency IIR with de-emphasis\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"High attenuation with de-emphasis\00", [62 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Fixed process flow\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ringing-less low latency FIR\00", [35 x i8] zeroinitializer }, align 32
@pcm512x_clk_missing_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1s\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2s\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3s\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4s\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5s\00", [29 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6s\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7s\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8s\00", [29 x i8] zeroinitializer }, align 32
@pcm512x_autom_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"21ms\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"106ms\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"213ms\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"533ms\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.07s\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.13s\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.33s\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10.66s\00", [25 x i8] zeroinitializer }, align 32
@pcm512x_ramp_rate_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"1 sample/update\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"2 samples/update\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"4 samples/update\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Immediate\00", [22 x i8] zeroinitializer }, align 32
@pcm512x_ramp_step_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"4dB/step\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2dB/step\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1dB/step\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.5dB/step\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUTL\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUTR\00", [27 x i8] zeroinitializer }, align 32
@pcm512x_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@pcm512x_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to remove standby: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcm512x_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@pcm512x_set_bias_level._entry_ptr = internal global ptr @pcm512x_set_bias_level._entry, section ".printk_index", align 4
@pcm512x_set_bias_level._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.110, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pcm512x_set_bias_level._entry_ptr.112 = internal global ptr @pcm512x_set_bias_level._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcm512x-hifi\00", [19 x i8] zeroinitializer }, align 32
@pcm512x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @pcm512x_set_bclk_ratio, ptr @pcm512x_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcm512x_mute, ptr @pcm512x_dai_startup, ptr null, ptr @pcm512x_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@pcm512x_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable clock output: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcm512x_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_set_fmt._entry_ptr = internal global ptr @pcm512x_set_fmt._entry, section ".printk_index", align 4
@pcm512x_set_fmt._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 1375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable master mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_set_fmt._entry_ptr.118 = internal global ptr @pcm512x_set_fmt._entry.116, section ".printk_index", align 4
@pcm512x_set_fmt._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.3, i32 1397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported DAI format: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_set_fmt._entry_ptr.121 = internal global ptr @pcm512x_set_fmt._entry.119, section ".printk_index", align 4
@pcm512x_set_fmt._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.115, ptr @.str.3, i32 1404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set data format: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm512x_set_fmt._entry_ptr.124 = internal global ptr @pcm512x_set_fmt._entry.122, section ".printk_index", align 4
@pcm512x_set_fmt._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.115, ptr @.str.3, i32 1411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set data offset: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm512x_set_fmt._entry_ptr.127 = internal global ptr @pcm512x_set_fmt._entry.125, section ".printk_index", align 4
@pcm512x_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 1449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set digital mute: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcm512x_mute\00", [19 x i8] zeroinitializer }, align 32
@pcm512x_mute._entry_ptr = internal global ptr @pcm512x_mute._entry, section ".printk_index", align 4
@pcm512x_mute._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.129, ptr @.str.3, i32 1462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pcm512x_mute._entry_ptr.131 = internal global ptr @pcm512x_mute._entry.130, section ".printk_index", align 4
@pcm512x_dai_startup_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Need SCLK for master mode: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcm512x_dai_startup_master\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_dai_startup_master._entry_ptr = internal global ptr @pcm512x_dai_startup_master._entry, section ".printk_index", align 4
@pcm512x_dai_startup_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 633, ptr @.str.136, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No SCLK, using BCLK: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcm512x_dai_startup_slave\00", [38 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcm512x_dai_startup_slave._entry_ptr = internal global ptr @pcm512x_dai_startup_slave._entry, section ".printk_index", align 4
@constraints_slave = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @pcm512x_dai_rates, i32 13, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pcm512x_dai_rates = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000, i32 384000], [44 x i8] zeroinitializer }, align 32
@pcm512x_hw_params.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.138, ptr @.str.3, ptr @.str.139, i8 1, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_pcm512x\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcm512x_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hw_params %u Hz, %u channels\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 1194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad frame size: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr = internal global ptr @pcm512x_hw_params._entry, section ".printk_index", align 4
@pcm512x_hw_params._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.138, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set frame size: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.143 = internal global ptr @pcm512x_hw_params._entry.141, section ".printk_index", align 4
@pcm512x_hw_params._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.138, ptr @.str.3, i32 1212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to enable clock divider autoset: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.146 = internal global ptr @pcm512x_hw_params._entry.144, section ".printk_index", align 4
@pcm512x_hw_params._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.138, ptr @.str.3, i32 1221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set FLEX_A: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.149 = internal global ptr @pcm512x_hw_params._entry.147, section ".printk_index", align 4
@pcm512x_hw_params._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.138, ptr @.str.3, i32 1227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set FLEX_B: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.152 = internal global ptr @pcm512x_hw_params._entry.150, section ".printk_index", align 4
@pcm512x_hw_params._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.138, ptr @.str.3, i32 1242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to ignore auto-clock failures: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.155 = internal global ptr @pcm512x_hw_params._entry.153, section ".printk_index", align 4
@pcm512x_hw_params._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.138, ptr @.str.3, i32 1257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.157 = internal global ptr @pcm512x_hw_params._entry.156, section ".printk_index", align 4
@pcm512x_hw_params._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.138, ptr @.str.3, i32 1264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to disable pll: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.160 = internal global ptr @pcm512x_hw_params._entry.158, section ".printk_index", align 4
@pcm512x_hw_params._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.138, ptr @.str.3, i32 1278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set gpio as pllref: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.163 = internal global ptr @pcm512x_hw_params._entry.161, section ".printk_index", align 4
@pcm512x_hw_params._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.138, ptr @.str.3, i32 1288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set gpio %d as pllin: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.166 = internal global ptr @pcm512x_hw_params._entry.164, section ".printk_index", align 4
@pcm512x_hw_params._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.138, ptr @.str.3, i32 1295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable pll: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.169 = internal global ptr @pcm512x_hw_params._entry.167, section ".printk_index", align 4
@pcm512x_hw_params._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.138, ptr @.str.3, i32 1304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable gpio %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.172 = internal global ptr @pcm512x_hw_params._entry.170, section ".printk_index", align 4
@pcm512x_hw_params._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.138, ptr @.str.3, i32 1313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to output pll on %d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.175 = internal global ptr @pcm512x_hw_params._entry.173, section ".printk_index", align 4
@pcm512x_hw_params._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.138, ptr @.str.3, i32 1321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to halt clocks: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.178 = internal global ptr @pcm512x_hw_params._entry.176, section ".printk_index", align 4
@pcm512x_hw_params._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.138, ptr @.str.3, i32 1328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume clocks: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pcm512x_hw_params._entry_ptr.181 = internal global ptr @pcm512x_hw_params._entry.179, section ".printk_index", align 4
@pcm512x_set_dividers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.3, i32 919, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No LRCLK?\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcm512x_set_dividers\00", [43 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr = internal global ptr @pcm512x_set_dividers._entry, section ".printk_index", align 4
@pcm512x_set_dividers._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.3, i32 933, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to find suitable BCLK: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.186 = internal global ptr @pcm512x_set_dividers._entry.184, section ".printk_index", align 4
@pcm512x_set_dividers._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.3, i32 937, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No BCLK?\0A\00", [22 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.189 = internal global ptr @pcm512x_set_dividers._entry.187, section ".printk_index", align 4
@pcm512x_set_dividers._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.183, ptr @.str.3, i32 956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to write PLL P: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.192 = internal global ptr @pcm512x_set_dividers._entry.190, section ".printk_index", align 4
@pcm512x_set_dividers._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.183, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to write PLL J: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.195 = internal global ptr @pcm512x_set_dividers._entry.193, section ".printk_index", align 4
@pcm512x_set_dividers._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.183, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write PLL D msb: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.198 = internal global ptr @pcm512x_set_dividers._entry.196, section ".printk_index", align 4
@pcm512x_set_dividers._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.183, ptr @.str.3, i32 977, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write PLL D lsb: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.201 = internal global ptr @pcm512x_set_dividers._entry.199, section ".printk_index", align 4
@pcm512x_set_dividers._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.183, ptr @.str.3, i32 984, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to write PLL R: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.204 = internal global ptr @pcm512x_set_dividers._entry.202, section ".printk_index", align 4
@pcm512x_set_dividers._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.183, ptr @.str.3, i32 994, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to find BCLK divider\0A\00", [35 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.207 = internal global ptr @pcm512x_set_dividers._entry.205, section ".printk_index", align 4
@pcm512x_set_dividers.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.208, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.208 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using pll input as dac input\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.183, ptr @.str.3, i32 1017, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set gpio as dacref: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.211 = internal global ptr @pcm512x_set_dividers._entry.209, section ".printk_index", align 4
@pcm512x_set_dividers._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.183, ptr @.str.3, i32 1027, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set gpio %d as dacin: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.214 = internal global ptr @pcm512x_set_dividers._entry.212, section ".printk_index", align 4
@pcm512x_set_dividers._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.183, ptr @.str.3, i32 1043, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to find DAC rate\0A\00", [39 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.217 = internal global ptr @pcm512x_set_dividers._entry.215, section ".printk_index", align 4
@pcm512x_set_dividers.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.218, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dac_rate %lu sample_rate %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.183, ptr @.str.3, i32 1055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set sck as dacref: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.221 = internal global ptr @pcm512x_set_dividers._entry.219, section ".printk_index", align 4
@pcm512x_set_dividers._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.183, ptr @.str.3, i32 1064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to find OSR divider\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.224 = internal global ptr @pcm512x_set_dividers._entry.222, section ".printk_index", align 4
@pcm512x_set_dividers._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.183, ptr @.str.3, i32 1070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to find DAC divider\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.227 = internal global ptr @pcm512x_set_dividers._entry.225, section ".printk_index", align 4
@pcm512x_set_dividers._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.183, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to find NCP divider\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.230 = internal global ptr @pcm512x_set_dividers._entry.228, section ".printk_index", align 4
@pcm512x_set_dividers._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.183, ptr @.str.3, i32 1090, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write DSP divider: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.233 = internal global ptr @pcm512x_set_dividers._entry.231, section ".printk_index", align 4
@pcm512x_set_dividers._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.183, ptr @.str.3, i32 1096, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write DAC divider: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.236 = internal global ptr @pcm512x_set_dividers._entry.234, section ".printk_index", align 4
@pcm512x_set_dividers._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.183, ptr @.str.3, i32 1102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write NCP divider: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.239 = internal global ptr @pcm512x_set_dividers._entry.237, section ".printk_index", align 4
@pcm512x_set_dividers._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.183, ptr @.str.3, i32 1108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write OSR divider: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.242 = internal global ptr @pcm512x_set_dividers._entry.240, section ".printk_index", align 4
@pcm512x_set_dividers._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.183, ptr @.str.3, i32 1115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write BCLK divider: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.245 = internal global ptr @pcm512x_set_dividers._entry.243, section ".printk_index", align 4
@pcm512x_set_dividers._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.183, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to write LRCLK divider: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.248 = internal global ptr @pcm512x_set_dividers._entry.246, section ".printk_index", align 4
@pcm512x_set_dividers._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.183, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write IDAC msb divider: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.251 = internal global ptr @pcm512x_set_dividers._entry.249, section ".printk_index", align 4
@pcm512x_set_dividers._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.183, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write IDAC lsb divider: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.254 = internal global ptr @pcm512x_set_dividers._entry.252, section ".printk_index", align 4
@pcm512x_set_dividers._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.183, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set fs speed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers._entry_ptr.257 = internal global ptr @pcm512x_set_dividers._entry.255, section ".printk_index", align 4
@pcm512x_set_dividers.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.258, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.258 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSP divider %d\0A\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.259, i8 1, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC divider %d\0A\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.260, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NCP divider %d\0A\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.261, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.261 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OSR divider %d\0A\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.262, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.262 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCK divider %d\0A\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.263, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.263 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LRCK divider %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.264, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IDAC %d\0A\00", [23 x i8] zeroinitializer }, align 32
@pcm512x_set_dividers.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.183, ptr @.str.3, ptr @.str.265, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1<<FSSP %d\0A\00", [20 x i8] zeroinitializer }, align 32
@pcm512x_find_sck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Impossible to generate a suitable SCK\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcm512x_find_sck\00", [47 x i8] zeroinitializer }, align 32
@pcm512x_find_sck._entry_ptr = internal global ptr @pcm512x_find_sck._entry, section ".printk_index", align 4
@pcm512x_find_sck.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.267, ptr @.str.3, ptr @.str.268, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.268 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sck_rate %lu\0A\00", [18 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.269, ptr @.str.3, ptr @.str.270, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.269 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcm512x_find_pll_coeff\00", [41 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pll %lu pllin %lu common %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.269, ptr @.str.3, ptr @.str.271, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num / den = %lu / %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.269, ptr @.str.3, ptr @.str.272, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.272 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"R * J / P = %d * %d / %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.269, ptr @.str.3, ptr @.str.273, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.273 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"num %lu den %lu common %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.269, ptr @.str.3, ptr @.str.274, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.274 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"J.D / P = %d.%04d / %d\0A\00", [40 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.269, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Need a slower clock as pll-input\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff._entry_ptr = internal global ptr @pcm512x_find_pll_coeff._entry, section ".printk_index", align 4
@pcm512x_find_pll_coeff._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.269, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Need a faster clock as pll-input\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm512x_find_pll_coeff._entry_ptr.278 = internal global ptr @pcm512x_find_pll_coeff._entry.276, section ".printk_index", align 4
@pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.137, ptr @.str.269, ptr @.str.3, ptr @.str.279, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"J.D / P ~ %d.%04d / %d\0A\00", [40 x i8] zeroinitializer }, align 32
@pcm512x_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str.3, i32 1708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request power down: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcm512x_suspend\00", [16 x i8] zeroinitializer }, align 32
@pcm512x_suspend._entry_ptr = internal global ptr @pcm512x_suspend._entry, section ".printk_index", align 4
@pcm512x_suspend._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.281, ptr @.str.3, i32 1715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pcm512x_suspend._entry_ptr.284 = internal global ptr @pcm512x_suspend._entry.282, section ".printk_index", align 4
@pcm512x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.285, ptr @.str.3, i32 1733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcm512x_resume\00", [17 x i8] zeroinitializer }, align 32
@pcm512x_resume._entry_ptr = internal global ptr @pcm512x_resume._entry, section ".printk_index", align 4
@pcm512x_resume._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.285, ptr @.str.3, i32 1741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pcm512x_resume._entry_ptr.287 = internal global ptr @pcm512x_resume._entry.286, section ".printk_index", align 4
@pcm512x_resume._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.285, ptr @.str.3, i32 1748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync cache: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm512x_resume._entry_ptr.290 = internal global ptr @pcm512x_resume._entry.288, section ".printk_index", align 4
@pcm512x_resume._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.285, ptr @.str.3, i32 1755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to remove power down: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pcm512x_resume._entry_ptr.293 = internal global ptr @pcm512x_resume._entry.291, section ".printk_index", align 4
@switch.table.pcm512x_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [71 x i64] [i64 69, i64 32, i64 257, i64 258, i64 259, i64 260, i64 262, i64 263, i64 264, i64 265, i64 266, i64 268, i64 269, i64 270, i64 272, i64 274, i64 275, i64 276, i64 277, i64 278, i64 279, i64 280, i64 283, i64 284, i64 285, i64 286, i64 288, i64 289, i64 290, i64 291, i64 292, i64 293, i64 296, i64 297, i64 298, i64 299, i64 300, i64 315, i64 316, i64 317, i64 318, i64 319, i64 320, i64 321, i64 336, i64 337, i64 338, i64 339, i64 340, i64 341, i64 342, i64 343, i64 346, i64 347, i64 348, i64 349, i64 350, i64 351, i64 364, i64 375, i64 376, i64 513, i64 514, i64 517, i64 518, i64 519, i64 520, i64 521, i64 11521, i64 65087, i64 65088]
@__sancov_gen_cov_switch_values.294 = internal global [13 x i64] [i64 11, i64 32, i64 260, i64 346, i64 347, i64 348, i64 349, i64 350, i64 351, i64 364, i64 375, i64 376, i64 11521]
@__sancov_gen_cov_switch_values.295 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.296 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.297 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.298 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.299 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 48, i64 64]
@___asan_gen_.300 = private unnamed_addr constant [21 x i8] c"pcm512x_reg_defaults\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 75, i32 33 }
@___asan_gen_.303 = private unnamed_addr constant [14 x i8] c"pcm512x_range\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1518, i32 38 }
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"pcm512x_regmap\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1526, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1552, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1563, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1576, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1585, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1593, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1599, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1611, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1620, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1634, i32 32 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1636, i32 5 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1643, i32 32 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1645, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1653, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1659, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant [25 x i8] c"pcm512x_component_driver\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1505, i32 46 }
@___asan_gen_.399 = private unnamed_addr constant [12 x i8] c"pcm512x_dai\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1489, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1669, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [15 x i8] c"pcm512x_pm_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1763, i32 25 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1519, i32 10 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 27, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 28, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 29, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"pcm512x_controls\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 439, i32 38 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c"pcm512x_dapm_routes\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 490, i32 40 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 440, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 307, i32 14 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 442, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant [11 x i8] c"analog_tlv\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 308, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 444, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant [10 x i8] c"boost_tlv\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 309, i32 14 }
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 448, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 456, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 457, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c"pcm512x_dsp_program\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 327, i32 8 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 459, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c"pcm512x_clk_missing\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 336, i32 30 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 460, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant [16 x i8] c"pcm512x_autom_l\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 343, i32 30 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 461, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant [16 x i8] c"pcm512x_autom_r\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 347, i32 30 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 462, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 464, i32 1 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 467, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant [13 x i8] c"pcm512x_vndf\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 356, i32 30 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 468, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant [13 x i8] c"pcm512x_vnds\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 372, i32 30 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 469, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant [13 x i8] c"pcm512x_vnuf\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 360, i32 30 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 470, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant [13 x i8] c"pcm512x_vnus\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 376, i32 30 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 471, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant [13 x i8] c"pcm512x_vedf\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 364, i32 30 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 472, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant [13 x i8] c"pcm512x_veds\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 380, i32 30 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 474, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 476, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 478, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 427, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant [26 x i8] c"pcm512x_dsp_program_texts\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 311, i32 27 }
@___asan_gen_.549 = private unnamed_addr constant [27 x i8] c"pcm512x_dsp_program_values\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 319, i32 27 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 312, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 313, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 314, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 315, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 316, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [25 x i8] c"pcm512x_clk_missing_text\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 332, i32 27 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 8 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 14 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 20 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 26 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 32 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 38 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 333, i32 44 }
@___asan_gen_.594 = private unnamed_addr constant [19 x i8] c"pcm512x_autom_text\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 339, i32 27 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 10 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 19 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 28 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 37 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 46 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 55 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 340, i32 64 }
@___asan_gen_.621 = private unnamed_addr constant [23 x i8] c"pcm512x_ramp_rate_text\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 351, i32 27 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 352, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 352, i32 21 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 352, i32 41 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 353, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [23 x i8] c"pcm512x_ramp_step_text\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 368, i32 27 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 369, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 369, i32 14 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 369, i32 26 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 369, i32 38 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 483, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 484, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 486, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 487, i32 1 }
@___asan_gen_.663 = private unnamed_addr constant [21 x i8] c"pcm512x_dapm_widgets\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 482, i32 41 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 491, i32 18 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 683, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 693, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1490, i32 10 }
@___asan_gen_.684 = private unnamed_addr constant [16 x i8] c"pcm512x_dai_ops\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1480, i32 37 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1367, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1375, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1396, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1404, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1411, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1448, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1461, i32 4 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 591, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 632, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant [18 x i8] c"constraints_slave\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 542, i32 48 }
@___asan_gen_.756 = private unnamed_addr constant [18 x i8] c"pcm512x_dai_rates\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 537, i32 18 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1175, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1193, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1201, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1210, i32 4 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1221, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1227, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1240, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1255, i32 4 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1264, i32 4 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1277, i32 4 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1286, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1295, i32 4 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1303, i32 4 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1312, i32 4 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1321, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1328, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 919, i32 4 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 933, i32 4 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 937, i32 4 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 956, i32 4 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 963, i32 4 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 970, i32 4 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 977, i32 4 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 984, i32 4 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 994, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1012, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1016, i32 4 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1025, i32 4 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1043, i32 4 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1048, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1054, i32 4 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1064, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1070, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1081, i32 4 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1090, i32 3 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1096, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1102, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1108, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1115, i32 3 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1122, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1128, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1134, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1149, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1153, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1154, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1155, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1156, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1157, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1158, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1159, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1160, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 727, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 731, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 762, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 772, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 787, i32 4 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 803, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 817, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 830, i32 3 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 834, i32 3 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 845, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1708, i32 3 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1715, i32 3 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1733, i32 4 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1741, i32 3 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1748, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1117 = private constant [30 x i8] c"../sound/soc/codecs/pcm512x.c\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 1755, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant [31 x i8] c"switch.table.pcm512x_hw_params\00", align 1
@llvm.compiler.used = appending global [361 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__ksymtab_pcm512x_pm_ops, ptr @__ksymtab_pcm512x_probe, ptr @__ksymtab_pcm512x_regmap, ptr @__ksymtab_pcm512x_remove, ptr @pcm512x_dai_startup_master._entry, ptr @pcm512x_dai_startup_master._entry_ptr, ptr @pcm512x_dai_startup_slave._entry, ptr @pcm512x_dai_startup_slave._entry_ptr, ptr @pcm512x_digital_playback_switch_put._entry, ptr @pcm512x_digital_playback_switch_put._entry_ptr, ptr @pcm512x_find_pll_coeff._entry, ptr @pcm512x_find_pll_coeff._entry.276, ptr @pcm512x_find_pll_coeff._entry_ptr, ptr @pcm512x_find_pll_coeff._entry_ptr.278, ptr @pcm512x_find_sck._entry, ptr @pcm512x_find_sck._entry_ptr, ptr @pcm512x_hw_params._entry, ptr @pcm512x_hw_params._entry.141, ptr @pcm512x_hw_params._entry.144, ptr @pcm512x_hw_params._entry.147, ptr @pcm512x_hw_params._entry.150, ptr @pcm512x_hw_params._entry.153, ptr @pcm512x_hw_params._entry.156, ptr @pcm512x_hw_params._entry.158, ptr @pcm512x_hw_params._entry.161, ptr @pcm512x_hw_params._entry.164, ptr @pcm512x_hw_params._entry.167, ptr @pcm512x_hw_params._entry.170, ptr @pcm512x_hw_params._entry.173, ptr @pcm512x_hw_params._entry.176, ptr @pcm512x_hw_params._entry.179, ptr @pcm512x_hw_params._entry_ptr, ptr @pcm512x_hw_params._entry_ptr.143, ptr @pcm512x_hw_params._entry_ptr.146, ptr @pcm512x_hw_params._entry_ptr.149, ptr @pcm512x_hw_params._entry_ptr.152, ptr @pcm512x_hw_params._entry_ptr.155, ptr @pcm512x_hw_params._entry_ptr.157, ptr @pcm512x_hw_params._entry_ptr.160, ptr @pcm512x_hw_params._entry_ptr.163, ptr @pcm512x_hw_params._entry_ptr.166, ptr @pcm512x_hw_params._entry_ptr.169, ptr @pcm512x_hw_params._entry_ptr.172, ptr @pcm512x_hw_params._entry_ptr.175, ptr @pcm512x_hw_params._entry_ptr.178, ptr @pcm512x_hw_params._entry_ptr.181, ptr @pcm512x_mute._entry, ptr @pcm512x_mute._entry.130, ptr @pcm512x_mute._entry_ptr, ptr @pcm512x_mute._entry_ptr.131, ptr @pcm512x_probe._entry, ptr @pcm512x_probe._entry.12, ptr @pcm512x_probe._entry.15, ptr @pcm512x_probe._entry.17, ptr @pcm512x_probe._entry.20, ptr @pcm512x_probe._entry.24, ptr @pcm512x_probe._entry.28, ptr @pcm512x_probe._entry.31, ptr @pcm512x_probe._entry.34, ptr @pcm512x_probe._entry.37, ptr @pcm512x_probe._entry.6, ptr @pcm512x_probe._entry.9, ptr @pcm512x_probe._entry_ptr, ptr @pcm512x_probe._entry_ptr.11, ptr @pcm512x_probe._entry_ptr.14, ptr @pcm512x_probe._entry_ptr.16, ptr @pcm512x_probe._entry_ptr.19, ptr @pcm512x_probe._entry_ptr.22, ptr @pcm512x_probe._entry_ptr.26, ptr @pcm512x_probe._entry_ptr.30, ptr @pcm512x_probe._entry_ptr.33, ptr @pcm512x_probe._entry_ptr.36, ptr @pcm512x_probe._entry_ptr.39, ptr @pcm512x_probe._entry_ptr.8, ptr @pcm512x_resume._entry, ptr @pcm512x_resume._entry.286, ptr @pcm512x_resume._entry.288, ptr @pcm512x_resume._entry.291, ptr @pcm512x_resume._entry_ptr, ptr @pcm512x_resume._entry_ptr.287, ptr @pcm512x_resume._entry_ptr.290, ptr @pcm512x_resume._entry_ptr.293, ptr @pcm512x_set_bias_level._entry, ptr @pcm512x_set_bias_level._entry.111, ptr @pcm512x_set_bias_level._entry_ptr, ptr @pcm512x_set_bias_level._entry_ptr.112, ptr @pcm512x_set_dividers._entry, ptr @pcm512x_set_dividers._entry.184, ptr @pcm512x_set_dividers._entry.187, ptr @pcm512x_set_dividers._entry.190, ptr @pcm512x_set_dividers._entry.193, ptr @pcm512x_set_dividers._entry.196, ptr @pcm512x_set_dividers._entry.199, ptr @pcm512x_set_dividers._entry.202, ptr @pcm512x_set_dividers._entry.205, ptr @pcm512x_set_dividers._entry.209, ptr @pcm512x_set_dividers._entry.212, ptr @pcm512x_set_dividers._entry.215, ptr @pcm512x_set_dividers._entry.219, ptr @pcm512x_set_dividers._entry.222, ptr @pcm512x_set_dividers._entry.225, ptr @pcm512x_set_dividers._entry.228, ptr @pcm512x_set_dividers._entry.231, ptr @pcm512x_set_dividers._entry.234, ptr @pcm512x_set_dividers._entry.237, ptr @pcm512x_set_dividers._entry.240, ptr @pcm512x_set_dividers._entry.243, ptr @pcm512x_set_dividers._entry.246, ptr @pcm512x_set_dividers._entry.249, ptr @pcm512x_set_dividers._entry.252, ptr @pcm512x_set_dividers._entry.255, ptr @pcm512x_set_dividers._entry_ptr, ptr @pcm512x_set_dividers._entry_ptr.186, ptr @pcm512x_set_dividers._entry_ptr.189, ptr @pcm512x_set_dividers._entry_ptr.192, ptr @pcm512x_set_dividers._entry_ptr.195, ptr @pcm512x_set_dividers._entry_ptr.198, ptr @pcm512x_set_dividers._entry_ptr.201, ptr @pcm512x_set_dividers._entry_ptr.204, ptr @pcm512x_set_dividers._entry_ptr.207, ptr @pcm512x_set_dividers._entry_ptr.211, ptr @pcm512x_set_dividers._entry_ptr.214, ptr @pcm512x_set_dividers._entry_ptr.217, ptr @pcm512x_set_dividers._entry_ptr.221, ptr @pcm512x_set_dividers._entry_ptr.224, ptr @pcm512x_set_dividers._entry_ptr.227, ptr @pcm512x_set_dividers._entry_ptr.230, ptr @pcm512x_set_dividers._entry_ptr.233, ptr @pcm512x_set_dividers._entry_ptr.236, ptr @pcm512x_set_dividers._entry_ptr.239, ptr @pcm512x_set_dividers._entry_ptr.242, ptr @pcm512x_set_dividers._entry_ptr.245, ptr @pcm512x_set_dividers._entry_ptr.248, ptr @pcm512x_set_dividers._entry_ptr.251, ptr @pcm512x_set_dividers._entry_ptr.254, ptr @pcm512x_set_dividers._entry_ptr.257, ptr @pcm512x_set_fmt._entry, ptr @pcm512x_set_fmt._entry.116, ptr @pcm512x_set_fmt._entry.119, ptr @pcm512x_set_fmt._entry.122, ptr @pcm512x_set_fmt._entry.125, ptr @pcm512x_set_fmt._entry_ptr, ptr @pcm512x_set_fmt._entry_ptr.118, ptr @pcm512x_set_fmt._entry_ptr.121, ptr @pcm512x_set_fmt._entry_ptr.124, ptr @pcm512x_set_fmt._entry_ptr.127, ptr @pcm512x_suspend._entry, ptr @pcm512x_suspend._entry.282, ptr @pcm512x_suspend._entry_ptr, ptr @pcm512x_suspend._entry_ptr.284, ptr @pcm512x_reg_defaults, ptr @pcm512x_range, ptr @pcm512x_regmap, ptr @pcm512x_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @pcm512x_component_driver, ptr @pcm512x_dai, ptr @.str.38, ptr @pcm512x_pm_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @pcm512x_controls, ptr @pcm512x_dapm_routes, ptr @.str.44, ptr @digital_tlv, ptr @.compoundliteral, ptr @.str.45, ptr @analog_tlv, ptr @.compoundliteral.46, ptr @.str.47, ptr @boost_tlv, ptr @.compoundliteral.48, ptr @.str.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @pcm512x_dsp_program, ptr @.str.53, ptr @pcm512x_clk_missing, ptr @.str.54, ptr @pcm512x_autom_l, ptr @.str.55, ptr @pcm512x_autom_r, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @pcm512x_vndf, ptr @.str.61, ptr @pcm512x_vnds, ptr @.str.62, ptr @pcm512x_vnuf, ptr @.str.63, ptr @pcm512x_vnus, ptr @.str.64, ptr @pcm512x_vedf, ptr @.str.65, ptr @pcm512x_veds, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.str.73, ptr @pcm512x_dsp_program_texts, ptr @pcm512x_dsp_program_values, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @pcm512x_clk_missing_text, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @pcm512x_autom_text, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @pcm512x_ramp_rate_text, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @pcm512x_ramp_step_text, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @pcm512x_dapm_widgets, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.113, ptr @pcm512x_dai_ops, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @constraints_slave, ptr @pcm512x_dai_rates, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.208, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.277, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.283, ptr @.str.285, ptr @.str.289, ptr @.str.292, ptr @switch.table.pcm512x_hw_params], section "llvm.metadata"
@0 = internal global [280 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_reg_defaults to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_controls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dapm_routes to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dsp_program to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_clk_missing to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_autom_l to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_autom_r to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_vndf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_vnds to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_vnuf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_vnus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_vedf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_veds to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_digital_playback_switch_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dsp_program_texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dsp_program_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_clk_missing_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_autom_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_ramp_rate_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_ramp_step_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_bias_level._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_fmt._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_fmt._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_fmt._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_fmt._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_mute._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dai_startup_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dai_startup_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_slave to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_dai_rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_hw_params._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_set_dividers._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_find_sck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_find_pll_coeff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_find_pll_coeff._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_suspend._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_resume._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_resume._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm512x_resume._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcm512x_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pcm512x_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 257, label %entry.return_crit_edge
    i32 258, label %entry.return_crit_edge2
    i32 259, label %entry.return_crit_edge3
    i32 260, label %entry.return_crit_edge4
    i32 262, label %entry.return_crit_edge5
    i32 263, label %entry.return_crit_edge6
    i32 264, label %entry.return_crit_edge7
    i32 265, label %entry.return_crit_edge8
    i32 266, label %entry.return_crit_edge9
    i32 268, label %entry.return_crit_edge10
    i32 269, label %entry.return_crit_edge11
    i32 270, label %entry.return_crit_edge12
    i32 272, label %entry.return_crit_edge13
    i32 274, label %entry.return_crit_edge14
    i32 275, label %entry.return_crit_edge15
    i32 276, label %entry.return_crit_edge16
    i32 277, label %entry.return_crit_edge17
    i32 278, label %entry.return_crit_edge18
    i32 279, label %entry.return_crit_edge19
    i32 280, label %entry.return_crit_edge20
    i32 283, label %entry.return_crit_edge21
    i32 284, label %entry.return_crit_edge22
    i32 285, label %entry.return_crit_edge23
    i32 286, label %entry.return_crit_edge24
    i32 288, label %entry.return_crit_edge25
    i32 289, label %entry.return_crit_edge26
    i32 290, label %entry.return_crit_edge27
    i32 291, label %entry.return_crit_edge28
    i32 292, label %entry.return_crit_edge29
    i32 293, label %entry.return_crit_edge30
    i32 296, label %entry.return_crit_edge31
    i32 297, label %entry.return_crit_edge32
    i32 298, label %entry.return_crit_edge33
    i32 299, label %entry.return_crit_edge34
    i32 300, label %entry.return_crit_edge35
    i32 315, label %entry.return_crit_edge36
    i32 316, label %entry.return_crit_edge37
    i32 317, label %entry.return_crit_edge38
    i32 318, label %entry.return_crit_edge39
    i32 319, label %entry.return_crit_edge40
    i32 320, label %entry.return_crit_edge41
    i32 321, label %entry.return_crit_edge42
    i32 336, label %entry.return_crit_edge43
    i32 337, label %entry.return_crit_edge44
    i32 338, label %entry.return_crit_edge45
    i32 339, label %entry.return_crit_edge46
    i32 340, label %entry.return_crit_edge47
    i32 341, label %entry.return_crit_edge48
    i32 342, label %entry.return_crit_edge49
    i32 343, label %entry.return_crit_edge50
    i32 346, label %entry.return_crit_edge51
    i32 347, label %entry.return_crit_edge52
    i32 348, label %entry.return_crit_edge53
    i32 349, label %entry.return_crit_edge54
    i32 350, label %entry.return_crit_edge55
    i32 351, label %entry.return_crit_edge56
    i32 364, label %entry.return_crit_edge57
    i32 375, label %entry.return_crit_edge58
    i32 376, label %entry.return_crit_edge59
    i32 513, label %entry.return_crit_edge60
    i32 514, label %entry.return_crit_edge61
    i32 517, label %entry.return_crit_edge62
    i32 518, label %entry.return_crit_edge63
    i32 519, label %entry.return_crit_edge64
    i32 520, label %entry.return_crit_edge65
    i32 521, label %entry.return_crit_edge66
    i32 11521, label %entry.return_crit_edge67
    i32 65087, label %entry.return_crit_edge68
    i32 65088, label %entry.return_crit_edge69
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ult i32 %reg, 255
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69
  %retval.0 = phi i1 [ %cmp, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pcm512x_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %reg, label %sw.default [
    i32 260, label %entry.return_crit_edge
    i32 346, label %entry.return_crit_edge2
    i32 347, label %entry.return_crit_edge3
    i32 348, label %entry.return_crit_edge4
    i32 349, label %entry.return_crit_edge5
    i32 350, label %entry.return_crit_edge6
    i32 351, label %entry.return_crit_edge7
    i32 364, label %entry.return_crit_edge8
    i32 375, label %entry.return_crit_edge9
    i32 376, label %entry.return_crit_edge10
    i32 11521, label %entry.return_crit_edge11
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ult i32 %reg, 255
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11
  %retval.0 = phi i1 [ %cmp, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcm512x_probe(ptr noundef %dev, ptr noundef %regmap) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup148_crit_edge, label %do.body

entry.cleanup148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup148

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.pcm512x_priv, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @pcm512x_probe.__key) #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regmap, ptr %call.i, align 4
  %arrayidx2 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.41, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.42, ptr %arrayidx2.1, align 4
  %arrayidx2.2 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.43, ptr %arrayidx2.2, align 4
  %call4 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call4) #11
  br label %cleanup148

if.end10:                                         ; preds = %do.body
  %supply_nb = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %supply_nb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pcm512x_regulator_event_0, ptr %supply_nb, align 4
  %arrayidx13 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pcm512x_regulator_event_1, ptr %arrayidx13, align 4
  %arrayidx16 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pcm512x_regulator_event_2, ptr %arrayidx16, align 4
  %consumer = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer, align 4
  %call25 = tail call i32 @devm_regulator_register_notifier(ptr noundef %9, ptr noundef %supply_nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end10.for.inc32_crit_edge, label %do.end30

if.end10.for.inc32_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32

do.end30:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call25) #11
  br label %for.inc32

for.inc32:                                        ; preds = %do.end30, %if.end10.for.inc32_crit_edge
  %consumer.1 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.1, align 4
  %call25.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %11, ptr noundef %arrayidx13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %cmp26.not.1 = icmp eq i32 %call25.1, 0
  br i1 %cmp26.not.1, label %for.inc32.for.inc32.1_crit_edge, label %do.end30.1

for.inc32.for.inc32.1_crit_edge:                  ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32.1

do.end30.1:                                       ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call25.1) #11
  br label %for.inc32.1

for.inc32.1:                                      ; preds = %do.end30.1, %for.inc32.for.inc32.1_crit_edge
  %consumer.2 = getelementptr %struct.pcm512x_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer.2, align 4
  %call25.2 = tail call i32 @devm_regulator_register_notifier(ptr noundef %13, ptr noundef %arrayidx16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %cmp26.not.2 = icmp eq i32 %call25.2, 0
  br i1 %cmp26.not.2, label %for.inc32.1.for.inc32.2_crit_edge, label %do.end30.2

for.inc32.1.for.inc32.2_crit_edge:                ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32.2

do.end30.2:                                       ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call25.2) #11
  br label %for.inc32.2

for.inc32.2:                                      ; preds = %do.end30.2, %for.inc32.1.for.inc32.2_crit_edge
  %call37 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call37) #11
  br label %cleanup148

if.end43:                                         ; preds = %for.inc32.2
  %call44 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef 257, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call44) #11
  br label %err

if.end50:                                         ; preds = %if.end43
  %call51 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef 257, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call51) #11
  br label %err

if.end57:                                         ; preds = %if.end50
  %call58 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %sclk = getelementptr inbounds %struct.pcm512x_priv, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call58, ptr %sclk, align 4
  %cmp61 = icmp eq ptr %call58, inttoptr (i32 -517 to ptr)
  br i1 %cmp61, label %if.end57.err_crit_edge, label %if.end63

if.end57.err_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end63:                                         ; preds = %if.end57
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end63.if.end75_crit_edge, label %if.then66

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then66:                                        ; preds = %if.end63
  %call.i230 = tail call i32 @clk_prepare(ptr noundef %call58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool.not.i = icmp eq i32 %call.i230, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then66.do.end73_crit_edge

if.then66.do.end73_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

if.end.i:                                         ; preds = %if.then66
  %call1.i = tail call i32 @clk_enable(ptr noundef %call58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end75_crit_edge, label %if.then3.i

if.end.i.if.end75_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call58) #8
  br label %do.end73

do.end73:                                         ; preds = %if.then3.i, %if.then66.do.end73_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i230, %if.then66.do.end73_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #11
  br label %err

if.end75:                                         ; preds = %if.end.i.if.end75_crit_edge, %if.end63.if.end75_crit_edge
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %call.i231 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 258, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %cmp78.not = icmp eq i32 %call.i231, 0
  br i1 %cmp78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i231) #11
  br label %err_clk

if.end83:                                         ; preds = %if.end75
  %call.i232 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i233 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool86.not = icmp eq ptr %18, null
  br i1 %tobool86.not, label %if.end83.if.end132_crit_edge, label %if.then87

if.end83.if.end132_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then87:                                        ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val, align 4, !annotation !571
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.23, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %20 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp90 = icmp sgt i32 %20, -1
  br i1 %cmp90, label %if.then91, label %if.then87.if.end98_crit_edge

if.then87.if.end98_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then91:                                        ; preds = %if.then87
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp92 = icmp ugt i32 %22, 6
  br i1 %cmp92, label %if.then91.cleanup.thread_crit_edge, label %if.end97

if.then91.cleanup.thread_crit_edge:               ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end97:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %pll_in = getelementptr inbounds %struct.pcm512x_priv, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %pll_in to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pll_in, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then87.if.end98_crit_edge
  %call.i.i234 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.27, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %24 = call i32 @llvm.smin.i32(i32 %call.i.i234, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp100 = icmp sgt i32 %24, -1
  br i1 %cmp100, label %if.then101, label %if.end98.if.end108_crit_edge

if.end98.if.end108_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then101:                                       ; preds = %if.end98
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp102 = icmp ugt i32 %26, 6
  br i1 %cmp102, label %if.then101.cleanup.thread_crit_edge, label %if.end107

if.then101.cleanup.thread_crit_edge:              ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end107:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %pll_out = getelementptr inbounds %struct.pcm512x_priv, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %pll_out to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pll_out, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end98.if.end108_crit_edge
  %pll_in109 = getelementptr inbounds %struct.pcm512x_priv, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %pll_in109 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pll_in109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool110.not = icmp eq i32 %29, 0
  %pll_out111 = getelementptr inbounds %struct.pcm512x_priv, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %pll_out111 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pll_out111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool112.not = icmp ne i32 %31, 0
  %cmp115.not = xor i1 %tobool110.not, %tobool112.not
  br i1 %cmp115.not, label %if.end120, label %if.end108.cleanup.thread_crit_edge

if.end108.cleanup.thread_crit_edge:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end120:                                        ; preds = %if.end108
  %tobool110.not.not = xor i1 %tobool110.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp125 = icmp eq i32 %29, %31
  %or.cond = select i1 %tobool110.not.not, i1 %cmp125, i1 false
  br i1 %or.cond, label %if.end120.cleanup.thread_crit_edge, label %cleanup

if.end120.cleanup.thread_crit_edge:               ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end120.cleanup.thread_crit_edge, %if.end108.cleanup.thread_crit_edge, %if.then101.cleanup.thread_crit_edge, %if.then91.cleanup.thread_crit_edge
  %.str.25.sink = phi ptr [ @.str.25, %if.then91.cleanup.thread_crit_edge ], [ @.str.29, %if.then101.cleanup.thread_crit_edge ], [ @.str.32, %if.end108.cleanup.thread_crit_edge ], [ @.str.35, %if.end120.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.25.sink) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  br label %err_clk

cleanup:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  br label %if.end132

if.end132:                                        ; preds = %cleanup, %if.end83.if.end132_crit_edge
  %call133 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @pcm512x_component_driver, ptr noundef nonnull @pcm512x_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134.not = icmp eq i32 %call133, 0
  br i1 %cmp134.not, label %if.end132.cleanup148_crit_edge, label %do.end138

if.end132.cleanup148_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup148

do.end138:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call133) #11
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_clk

err_clk:                                          ; preds = %do.end138, %cleanup.thread, %do.end82
  %ret.1 = phi i32 [ %call.i231, %do.end82 ], [ %call133, %do.end138 ], [ -22, %cleanup.thread ]
  %32 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sclk, align 4
  %cmp.i235 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %err_clk.err_crit_edge, label %if.then142

err_clk.err_crit_edge:                            ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then142:                                       ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_disable(ptr noundef %33) #8
  call void @clk_unprepare(ptr noundef %33) #8
  br label %err

err:                                              ; preds = %if.then142, %err_clk.err_crit_edge, %do.end73, %if.end57.err_crit_edge, %do.end56, %do.end49
  %ret.2 = phi i32 [ %call44, %do.end49 ], [ %call51, %do.end56 ], [ %ret.1, %err_clk.err_crit_edge ], [ %ret.1, %if.then142 ], [ %retval.0.i.ph, %do.end73 ], [ -517, %if.end57.err_crit_edge ]
  %call147 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx2) #8
  br label %cleanup148

cleanup148:                                       ; preds = %err, %if.end132.cleanup148_crit_edge, %do.end42, %do.end9, %entry.cleanup148_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ %call37, %do.end42 ], [ %ret.2, %err ], [ -12, %entry.cleanup148_crit_edge ], [ 0, %if.end132.cleanup148_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_regulator_event_0(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_regulator_event_1(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -56
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_regulator_event_2(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -68
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcm512x_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %sclk = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 258, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.280, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.283, i32 noundef %call2) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sclk = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sclk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call2, %do.end7 ], [ 0, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sclk = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %supplies = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call6) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call14 = tail call i32 @regcache_sync(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.289, i32 noundef %call14) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 258, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp23.not = icmp eq i32 %call.i50, 0
  br i1 %cmp23.not, label %if.end20.cleanup_crit_edge, label %do.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.292, i32 noundef %call.i50) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end20.cleanup_crit_edge, %do.end19, %do.end11, %do.end
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ %call14, %do.end19 ], [ %call.i50, %do.end27 ], [ %retval.0.i.ph, %do.end ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 258, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %sw.bb1.cleanup_crit_edge, label %do.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.109, i32 noundef %call.i) #11
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 258, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp7.not = icmp eq i32 %call.i23, 0
  br i1 %cmp7.not, label %sw.bb4.cleanup_crit_edge, label %do.end11

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef %call.i23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %sw.bb4.cleanup_crit_edge, %do.end, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i23, %do.end11 ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_digital_playback_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %mutex = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %mute = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mute, align 4
  %and = lshr i32 %7, 2
  %and.lobit = and i32 %and, 1
  %8 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  %10 = load i32, ptr %mute, align 4
  %and3 = lshr i32 %10, 1
  %and3.lobit = and i32 %and3, 1
  %11 = xor i32 %and3.lobit, 1
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx8, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_digital_playback_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %mutex = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %mute = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mute, align 4
  %and = and i32 %7, 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %shl = shl i32 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl)
  %cmp = icmp eq i32 %and, %shl
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %xor = xor i32 %7, 4
  %10 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor, ptr %mute, align 4
  %and4 = and i32 %7, 2
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %shl7 = shl i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %shl7)
  %cmp8 = icmp eq i32 %and4, %shl7
  br i1 %cmp8, label %if.end.if.end12.thread_crit_edge, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end.if.end12.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.thread

if.end.thread:                                    ; preds = %entry
  %13 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mute, align 4
  %and440 = and i32 %14, 2
  %arrayidx641 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx641, align 4
  %shl742 = shl i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and440, i32 %shl742)
  %cmp843 = icmp eq i32 %and440, %shl742
  br i1 %cmp843, label %if.end.thread.if.end12.thread_crit_edge, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread.if.end12.thread_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end.thread.if.end12.thread_crit_edge, %if.end.if.end12.thread_crit_edge
  %17 = phi i32 [ %14, %if.end.thread.if.end12.thread_crit_edge ], [ %xor, %if.end.if.end12.thread_crit_edge ]
  %xor11 = xor i32 %17, 2
  %18 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %xor11, ptr %mute, align 4
  br label %if.then13

if.then13:                                        ; preds = %if.end12.thread, %if.end.if.then13_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %21 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mute, align 4
  %and.i = and i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shl.i = select i1 %tobool.not.i, i32 0, i32 16
  %and3.i = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %lnot.ext8.i = zext i1 %tobool4.i to i32
  %or.i = or i32 %shl.i, %lnot.ext8.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 259, i32 noundef 17, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp15.not, label %if.then13.cleanup_crit_edge, label %do.end

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.72, i32 noundef %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ 1, %if.then13.cleanup_crit_edge ], [ 0, %if.end.thread.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_overclock_pll_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %overclock_pll = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %overclock_pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overclock_pll, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_overclock_pll_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %overclock_pll = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %overclock_pll to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %overclock_pll, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_overclock_dsp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %overclock_dsp = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %overclock_dsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overclock_dsp, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_overclock_dsp_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %overclock_dsp = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %overclock_dsp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %overclock_dsp, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_overclock_dac_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %overclock_dac = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %overclock_dac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overclock_dac, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_overclock_dac_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %overclock_dac = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %overclock_dac to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %overclock_dac, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm512x_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %ratio)
  %cmp = icmp ugt i32 %ratio, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %bclk_ratio = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ratio, ptr %bclk_ratio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #1 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.296)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 16384, label %entry.sw.epilog_crit_edge
    i16 4096, label %sw.bb2
    i16 12288, label %sw.bb3
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

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %clock_output.0 = phi i32 [ 16, %sw.bb3 ], [ 17, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %master_mode.0 = phi i32 [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 265, i32 noundef 49, i32 noundef %clock_output.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.114, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 268, i32 noundef 3, i32 noundef %master_mode.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp7.not = icmp eq i32 %call.i75, 0
  br i1 %cmp7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.117, i32 noundef %call.i75) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %and14 = and i32 %fmt, 15
  %16 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %and14, label %do.end23 [
    i32 1, label %if.end13.sw.epilog26_crit_edge
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
    i32 4, label %sw.bb18
    i32 5, label %if.end13.sw.bb19_crit_edge
  ]

if.end13.sw.bb19_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

if.end13.sw.epilog26_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb16:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb18:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb18, %if.end13.sw.bb19_crit_edge
  %offset.0 = phi i32 [ 0, %if.end13.sw.bb19_crit_edge ], [ 1, %sw.bb18 ]
  br label %sw.epilog26

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %fmt25 = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %fmt25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.120, i32 noundef %20) #11
  br label %cleanup

sw.epilog26:                                      ; preds = %sw.bb19, %sw.bb17, %sw.bb16, %if.end13.sw.epilog26_crit_edge
  %afmt.0 = phi i32 [ 16, %sw.bb19 ], [ 48, %sw.bb17 ], [ 32, %sw.bb16 ], [ 0, %if.end13.sw.epilog26_crit_edge ]
  %offset.1 = phi i32 [ %offset.0, %sw.bb19 ], [ 0, %sw.bb17 ], [ 0, %sw.bb16 ], [ 0, %if.end13.sw.epilog26_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 296, i32 noundef 48, i32 noundef %afmt.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp29.not = icmp eq i32 %call.i76, 0
  br i1 %cmp29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.123, i32 noundef %call.i76) #11
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog26
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 297, i32 noundef 255, i32 noundef %offset.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp38.not = icmp eq i32 %call.i77, 0
  br i1 %cmp38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.126, i32 noundef %call.i77) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %fmt45 = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 4
  %29 = ptrtoint ptr %fmt45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %fmt, ptr %fmt45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end42, %do.end33, %do.end23, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i75, %do.end11 ], [ -22, %do.end23 ], [ %call.i76, %do.end33 ], [ %call.i77, %do.end42 ], [ 0, %if.end44 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #1 align 64 {
entry:
  %mute_det = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mute_det) #8
  %6 = ptrtoint ptr %mute_det to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mute_det, align 4, !annotation !571
  %mutex = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %mute42 = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 15
  %7 = ptrtoint ptr %mute42 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mute42, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %8, 1
  %9 = ptrtoint ptr %mute42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %mute42, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 259, i32 noundef 17, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.128, i32 noundef %call.i) #11
  br label %unlock

if.end:                                           ; preds = %if.then
  %call5 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call5, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1456) #8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call20152 = call i32 @regmap_read(ptr noundef %15, i32 noundef 364, ptr noundef nonnull %mute_det) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20152)
  %tobool21.not153 = icmp eq i32 %call20152, 0
  br i1 %tobool21.not153, label %if.end.lor.lhs.false_crit_edge, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then34.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %16 = ptrtoint ptr %mute_det to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mute_det, align 4
  %and = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %lor.lhs.false.unlock_crit_edge, label %land.lhs.true

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call26 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then34

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call31 = call i32 @regmap_read(ptr noundef %19, i32 noundef 364, ptr noundef nonnull %mute_det) #8
  br label %unlock

if.then34:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call20 = call i32 @regmap_read(ptr noundef %21, i32 noundef 364, ptr noundef nonnull %mute_det) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then34.lor.lhs.false_crit_edge, label %if.then34.unlock_crit_edge

if.then34.unlock_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then34.lor.lhs.false_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.else:                                          ; preds = %entry
  %and43 = and i32 %8, -2
  %22 = ptrtoint ptr %mute42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and43, ptr %mute42, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %and.i = shl i32 %8, 2
  %25 = and i32 %and.i, 16
  %and3.i = lshr i32 %8, 1
  %and3.i.lobit = and i32 %and3.i, 1
  %or.i = or i32 %25, %and3.i.lobit
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 259, i32 noundef 17, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp45.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.72, i32 noundef %call.i.i) #11
  br label %unlock

if.end51:                                         ; preds = %if.else
  %call57 = tail call i64 @ktime_get() #8
  %add.i146 = add i64 %call57, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1471) #8
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %call73154 = call i32 @regmap_read(ptr noundef %29, i32 noundef 364, ptr noundef nonnull %mute_det) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73154)
  %tobool74.not155 = icmp eq i32 %call73154, 0
  br i1 %tobool74.not155, label %if.end51.lor.lhs.false75_crit_edge, label %if.end51.unlock_crit_edge

if.end51.unlock_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end51.lor.lhs.false75_crit_edge:               ; preds = %if.end51
  br label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then93.lor.lhs.false75_crit_edge, %if.end51.lor.lhs.false75_crit_edge
  %30 = ptrtoint ptr %mute_det to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mute_det, align 4
  %and76 = and i32 %31, 3
  %32 = ptrtoint ptr %mute42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mute42, align 4
  %34 = lshr i32 %33, 1
  %shr78 = and i32 %34, 3
  %and79 = xor i32 %shr78, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and76, i32 %and79)
  %cmp80 = icmp eq i32 %and76, %and79
  br i1 %cmp80, label %lor.lhs.false75.unlock_crit_edge, label %land.lhs.true84

lor.lhs.false75.unlock_crit_edge:                 ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

land.lhs.true84:                                  ; preds = %lor.lhs.false75
  %call85 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call85, i64 %add.i146)
  %cmp3.i148 = icmp sgt i64 %call85, %add.i146
  br i1 %cmp3.i148, label %if.then88, label %if.then93

if.then88:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %call90 = call i32 @regmap_read(ptr noundef %36, i32 noundef 364, ptr noundef nonnull %mute_det) #8
  br label %unlock

if.then93:                                        ; preds = %land.lhs.true84
  call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #8
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %call73 = call i32 @regmap_read(ptr noundef %38, i32 noundef 364, ptr noundef nonnull %mute_det) #8
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then93.lor.lhs.false75_crit_edge, label %if.then93.unlock_crit_edge

if.then93.unlock_crit_edge:                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then93.lor.lhs.false75_crit_edge:              ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false75

unlock:                                           ; preds = %if.then93.unlock_crit_edge, %if.then88, %lor.lhs.false75.unlock_crit_edge, %if.end51.unlock_crit_edge, %do.end49, %if.then34.unlock_crit_edge, %if.then29, %lor.lhs.false.unlock_crit_edge, %if.end.unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i.i, %do.end49 ], [ 0, %if.then29 ], [ 0, %if.then88 ], [ 0, %if.end51.unlock_crit_edge ], [ 0, %if.end.unlock_crit_edge ], [ 0, %lor.lhs.false75.unlock_crit_edge ], [ 0, %if.then93.unlock_crit_edge ], [ 0, %lor.lhs.false.unlock_crit_edge ], [ 0, %if.then34.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mute_det) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #1 align 64 {
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
  %fmt = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  %8 = trunc i32 %7 to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.298)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.bb_crit_edge
    i16 12288, label %entry.sw.bb_crit_edge20
    i16 16384, label %sw.bb3
  ]

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20
  %dev2.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2.i, align 4
  %sclk.i = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sclk.i, align 4
  %cmp.i.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.132, i32 noundef %14) #11
  %15 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sclk.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %pll_out.i = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %pll_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pll_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %20 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime.i, align 4
  %call9.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %21, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @pcm512x_hw_rule_rate, ptr noundef %5, i32 noundef 9, i32 noundef 10, i32 noundef -1) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 8, i32 noundef 3520) #8
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end14.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.i:                                       ; preds = %if.end10.i
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %call.i.i, align 4
  %call.i45.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 16, i32 noundef 3520) #8
  %tobool16.not.i = icmp eq ptr %call.i45.i, null
  br i1 %tobool16.not.i, label %if.end14.i.cleanup_crit_edge, label %if.end18.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %rats.i = getelementptr inbounds %struct.snd_pcm_hw_constraint_ratnums, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %rats.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i45.i, ptr %rats.i, align 4
  %24 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sclk.i, align 4
  %call20.i = tail call i32 @clk_get_rate(ptr noundef %25) #8
  %div44.i = lshr i32 %call20.i, 6
  %26 = ptrtoint ptr %call.i45.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div44.i, ptr %call.i45.i, align 4
  %den_min.i = getelementptr inbounds %struct.snd_ratnum, ptr %call.i45.i, i32 0, i32 1
  %27 = ptrtoint ptr %den_min.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %den_min.i, align 4
  %den_max.i = getelementptr inbounds %struct.snd_ratnum, ptr %call.i45.i, i32 0, i32 2
  %28 = ptrtoint ptr %den_max.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %den_max.i, align 4
  %den_step.i = getelementptr inbounds %struct.snd_ratnum, ptr %call.i45.i, i32 0, i32 3
  %29 = ptrtoint ptr %den_step.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %den_step.i, align 4
  %runtime21.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %30 = ptrtoint ptr %runtime21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime21.i, align 4
  %call22.i = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %31, i32 noundef 0, i32 noundef 11, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %sclk.i12 = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %sclk.i12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sclk.i12, align 4
  %cmp.i.i13 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i13, label %do.end.i16, label %sw.bb3.pcm512x_dai_startup_slave.exit_crit_edge

sw.bb3.pcm512x_dai_startup_slave.exit_crit_edge:  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm512x_dai_startup_slave.exit

do.end.i16:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %dev2.i14 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %36 = ptrtoint ptr %dev2.i14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2.i14, align 4
  %38 = ptrtoint ptr %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.134, i32 noundef %38) #11
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 293, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 269, i32 noundef 112, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %pcm512x_dai_startup_slave.exit

pcm512x_dai_startup_slave.exit:                   ; preds = %do.end.i16, %sw.bb3.pcm512x_dai_startup_slave.exit_crit_edge
  %runtime.i17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %39 = ptrtoint ptr %runtime.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runtime.i17, align 4
  %call9.i18 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %40, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @constraints_slave) #8
  br label %cleanup

cleanup:                                          ; preds = %pcm512x_dai_startup_slave.exit, %if.end18.i, %if.end14.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then8.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9.i18, %pcm512x_dai_startup_slave.exit ], [ -22, %entry.cleanup_crit_edge ], [ %17, %do.end.i ], [ %call9.i, %if.then8.i ], [ %call22.i, %if.end18.i ], [ -12, %if.end10.i.cleanup_crit_edge ], [ -12, %if.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #1 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_hw_params.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_hw_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !572

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i255 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i255 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i255, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_hw_params.__UNIQUE_ID_ddebug312, ptr noundef %7, ptr noundef nonnull @.str.139, i32 noundef %9, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end.if.then.i.i.i_crit_edge

do.end.if.then.i.i.i_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %13, %do.end.if.then.i.i.i_crit_edge ], [ %16, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !573
  %add.i.i.i = or i32 %14, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1.i.i.i = icmp eq i32 %16, 0
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
  %17 = add i32 %call1.i, -16
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %19 = icmp ult i32 %18, 5
  br i1 %19, label %switch.hole_check, label %params_width.exit.do.end13_crit_edge

params_width.exit.do.end13_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end13:                                         ; preds = %switch.hole_check.do.end13_crit_edge, %params_width.exit.do.end13_crit_edge
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i257 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i257, label %for.inc.i.i.i264, label %do.end13.if.then.i.i.i261_crit_edge

do.end13.if.then.i.i.i261_crit_edge:              ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i261

if.then.i.i.i261:                                 ; preds = %for.inc.i.i.i264.if.then.i.i.i261_crit_edge, %do.end13.if.then.i.i.i261_crit_edge
  %i.09.lcssa.i.i.i258 = phi i32 [ 0, %do.end13.if.then.i.i.i261_crit_edge ], [ 32, %for.inc.i.i.i264.if.then.i.i.i261_crit_edge ]
  %.lcssa.i.i.i259 = phi i32 [ %23, %do.end13.if.then.i.i.i261_crit_edge ], [ %26, %for.inc.i.i.i264.if.then.i.i.i261_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i259, i1 true) #8, !range !573
  %add.i.i.i260 = or i32 %24, %i.09.lcssa.i.i.i258
  br label %params_width.exit267

for.inc.i.i.i264:                                 ; preds = %do.end13
  %arrayidx.1.i.i.i262 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i.i.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.1.i.i.i263 = icmp eq i32 %26, 0
  br i1 %tobool.not.1.i.i.i263, label %for.inc.i.i.i264.params_width.exit267_crit_edge, label %for.inc.i.i.i264.if.then.i.i.i261_crit_edge

for.inc.i.i.i264.if.then.i.i.i261_crit_edge:      ; preds = %for.inc.i.i.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i261

for.inc.i.i.i264.params_width.exit267_crit_edge:  ; preds = %for.inc.i.i.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit267

params_width.exit267:                             ; preds = %for.inc.i.i.i264.params_width.exit267_crit_edge, %if.then.i.i.i261
  %retval.0.i.i.i265 = phi i32 [ %add.i.i.i260, %if.then.i.i.i261 ], [ 0, %for.inc.i.i.i264.params_width.exit267_crit_edge ]
  %call1.i266 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i265) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.140, i32 noundef %call1.i266) #11
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %18 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %27 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.lobit.not = icmp eq i8 %27, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end13_crit_edge, label %switch.lookup

switch.hole_check.do.end13_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.pcm512x_hw_params, i32 0, i32 %18
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 296, i32 noundef 3, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.142, i32 noundef %call.i) #11
  br label %cleanup

if.end22:                                         ; preds = %switch.lookup
  %fmt = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt, align 4
  %and = and i32 %34, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp23 = icmp eq i32 %and, 16384
  br i1 %cmp23, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end22
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %call.i268 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 293, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %cmp27.not = icmp eq i32 %call.i268, 0
  br i1 %cmp27.not, label %if.then24.cleanup_crit_edge, label %do.end31

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.145, i32 noundef %call.i268) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %pll_out = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not = icmp eq i32 %40, 0
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call38 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 65087, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.148, i32 noundef %call38) #11
  br label %cleanup

if.end45:                                         ; preds = %if.then36
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 65088, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.151, i32 noundef %call47) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %call.i269 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 293, i32 noundef 127, i32 noundef 122, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp57.not = icmp eq i32 %call.i269, 0
  br i1 %cmp57.not, label %if.end54.if.end82_crit_edge, label %do.end61

if.end54.if.end82_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.154, i32 noundef %call.i269) #11
  br label %cleanup

if.else:                                          ; preds = %if.end34
  %call.i270 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 293, i32 noundef 127, i32 noundef 123, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp66.not = icmp eq i32 %call.i270, 0
  br i1 %cmp66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.154, i32 noundef %call.i270) #11
  br label %cleanup

if.end72:                                         ; preds = %if.else
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  %call.i271 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 260, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %cmp75.not = icmp eq i32 %call.i271, 0
  br i1 %cmp75.not, label %if.end72.if.end82_crit_edge, label %do.end79

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.159, i32 noundef %call.i271) #11
  br label %cleanup

if.end82:                                         ; preds = %if.end72.if.end82_crit_edge, %if.end54.if.end82_crit_edge
  %call83 = tail call fastcc i32 @pcm512x_set_dividers(ptr noundef %dai, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %if.end86, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86:                                         ; preds = %if.end82
  %59 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool88.not = icmp eq i32 %60, 0
  br i1 %tobool88.not, label %if.end86.if.end143_crit_edge, label %if.then89

if.end86.if.end143_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then89:                                        ; preds = %if.end86
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %call.i272 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 269, i32 noundef 112, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %cmp92.not = icmp eq i32 %call.i272, 0
  br i1 %cmp92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.162, i32 noundef %call.i272) #11
  br label %cleanup

if.end98:                                         ; preds = %if.then89
  %pll_in = getelementptr inbounds %struct.pcm512x_priv, ptr %5, i32 0, i32 5
  %65 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pll_in, align 4
  %sub = add i32 %66, -1
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %call.i273 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 274, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %cmp101.not = icmp eq i32 %call.i273, 0
  br i1 %cmp101.not, label %if.end108, label %do.end105

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %71 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pll_in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.165, i32 noundef %72, i32 noundef %call.i273) #11
  br label %cleanup

if.end108:                                        ; preds = %if.end98
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %call.i274 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 260, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp111.not = icmp eq i32 %call.i274, 0
  br i1 %cmp111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.168, i32 noundef %call.i274) #11
  br label %cleanup

if.end117:                                        ; preds = %if.end108
  %77 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pll_out, align 4
  %sub119 = add i32 %78, -1
  %shl = shl nuw i32 1, %sub119
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 4
  %call.i275 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 264, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %cmp122.not = icmp eq i32 %call.i275, 0
  br i1 %cmp122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %83 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pll_out, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.171, i32 noundef %84, i32 noundef %call.i275) #11
  br label %cleanup

if.end129:                                        ; preds = %if.end117
  %85 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pll_out, align 4
  %sub132 = add i32 %86, 335
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %5, align 4
  %call.i276 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %sub132, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %cmp135.not = icmp eq i32 %call.i276, 0
  br i1 %cmp135.not, label %if.end129.if.end143_crit_edge, label %do.end139

if.end129.if.end143_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

do.end139:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  %91 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pll_out, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.174, i32 noundef %call.i276, i32 noundef %92) #11
  br label %cleanup

if.end143:                                        ; preds = %if.end129.if.end143_crit_edge, %if.end86.if.end143_crit_edge
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %5, align 4
  %call.i277 = tail call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 275, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp146.not = icmp eq i32 %call.i277, 0
  br i1 %cmp146.not, label %if.end152, label %do.end150

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.177, i32 noundef %call.i277) #11
  br label %cleanup

if.end152:                                        ; preds = %if.end143
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %5, align 4
  %call.i278 = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 275, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %cmp155.not = icmp eq i32 %call.i278, 0
  br i1 %cmp155.not, label %if.end152.cleanup_crit_edge, label %do.end159

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end159:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.180, i32 noundef %call.i278) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end159, %if.end152.cleanup_crit_edge, %do.end150, %do.end139, %do.end126, %do.end115, %do.end105, %do.end96, %if.end82.cleanup_crit_edge, %do.end79, %do.end70, %do.end61, %do.end52, %do.end43, %do.end31, %if.then24.cleanup_crit_edge, %do.end20, %params_width.exit267
  %retval.0 = phi i32 [ -22, %params_width.exit267 ], [ %call.i, %do.end20 ], [ %call.i268, %do.end31 ], [ %call38, %do.end43 ], [ %call47, %do.end52 ], [ %call.i269, %do.end61 ], [ %call.i272, %do.end96 ], [ %call.i273, %do.end105 ], [ %call.i274, %do.end115 ], [ %call.i275, %do.end126 ], [ %call.i276, %do.end139 ], [ %call.i277, %do.end150 ], [ %call.i278, %do.end159 ], [ %call.i270, %do.end70 ], [ %call.i271, %do.end79 ], [ %call83, %if.end82.cleanup_crit_edge ], [ 0, %if.end152.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm512x_hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #1 align 64 {
entry:
  %ranges = alloca [2 x %struct.snd_interval], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ranges) #8
  %call = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %call, label %sw.default [
    i32 32, label %if.end.cleanup_crit_edge
    i32 48, label %if.end.sw.bb1_crit_edge
    i32 64, label %if.end.sw.bb1_crit_edge24
  ]

if.end.sw.bb1_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge24
  %3 = getelementptr inbounds i8, ptr %ranges, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8000, ptr %ranges, align 4
  %pll_out.i = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pll_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.bb1.pcm512x_sck_max.exit_crit_edge, label %if.end.i

sw.bb1.pcm512x_sck_max.exit_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm512x_sck_max.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %overclock_pll.i.i = getelementptr inbounds %struct.pcm512x_priv, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %overclock_pll.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overclock_pll.i.i, align 4
  %mul.i.i = mul i32 %9, 25000000
  %div.i.i = udiv i32 %mul.i.i, 100
  %add.i.i = add nuw nsw i32 %div.i.i, 25000000
  br label %pcm512x_sck_max.exit

pcm512x_sck_max.exit:                             ; preds = %if.end.i, %sw.bb1.pcm512x_sck_max.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i.i, %if.end.i ], [ 25000000, %sw.bb1.pcm512x_sck_max.exit_crit_edge ]
  %div = udiv i32 %retval.0.i, %call
  %div322 = lshr i32 %div, 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %ranges, i32 0, i32 1
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div322, ptr %max, align 4
  %sub = add nuw nsw i32 %call, 15999999
  %div523 = udiv i32 %sub, %call
  %arrayidx6 = getelementptr inbounds [2 x %struct.snd_interval], ptr %ranges, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div523, ptr %arrayidx6, align 4
  %max9 = getelementptr inbounds [2 x %struct.snd_interval], ptr %ranges, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %max9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 384000, ptr %max9, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %13 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %var, align 4
  %sub.i = add i32 %14, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call12 = call i32 @snd_interval_ranges(ptr noundef %arrayidx.i, i32 noundef 2, ptr noundef nonnull %ranges, i32 noundef 0) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %pcm512x_sck_max.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call12, %pcm512x_sck_max.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ranges) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_ranges(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcm512x_set_dividers(ptr nocapture noundef readonly %dai, ptr noundef %params) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component2, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %bclk_ratio = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bclk_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.182) #11
  br label %cleanup452

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %lrclk_div.0 = phi i32 [ %call4, %if.else.if.end7_crit_edge ], [ %9, %entry.if.end7_crit_edge ]
  %pll_out = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %sclk = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sclk, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %13) #8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %15, %lrclk_div.0
  %div666 = lshr i32 %mul, 1
  br label %if.end84

if.else12:                                        ; preds = %if.end7
  %call13 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.185, i32 noundef %call13) #11
  br label %cleanup452

if.end19:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp20 = icmp eq i32 %call13, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.188) #11
  br label %cleanup452

if.end25:                                         ; preds = %if.end19
  %sclk26 = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %sclk26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sclk26, align 4
  %call27 = tail call i32 @clk_get_rate(ptr noundef %17) #8
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %20 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component2, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %overclock_pll.i.i = getelementptr inbounds %struct.pcm512x_priv, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %overclock_pll.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %overclock_pll.i.i, align 4
  %mul.i.i = mul i32 %27, 25000000
  %div.i.i = udiv i32 %mul.i.i, 100
  %add.i.i = add nuw nsw i32 %div.i.i, 25000000
  %sub.i = add nuw nsw i32 %div.i.i, 9000000
  %div.i = udiv i32 %sub.i, %call13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %call13)
  %tobool.not.i.i = icmp ult i32 %sub.i, %call13
  %28 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #8, !range !573
  %sub.i.i = sub nuw nsw i32 32, %28
  %sub.i.op.i = shl nuw i32 1, %sub.i.i
  %shl.i = select i1 %tobool.not.i.i, i32 1, i32 %sub.i.op.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %shr.i = ashr i32 %pow2.040.i, 1
  %tobool.not.i = icmp ult i32 %pow2.040.i, 2
  br i1 %tobool.not.i, label %pcm512x_find_sck.exit.thread, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end25
  %pow2.040.i = phi i32 [ %shl.i, %if.end25 ], [ %shr.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %pow2.040.i, %call13
  %rem.i = urem i32 %add.i.i, %mul.i
  %sub6.i = sub nsw i32 %add.i.i, %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15999999, i32 %sub6.i)
  %cmp.i = icmp ugt i32 %sub6.i, 15999999
  br i1 %cmp.i, label %do.body10.i, label %for.cond.i

pcm512x_find_sck.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.266) #11
  br label %cleanup452

do.body10.i:                                      ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_sck.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then16.i)) #8
          to label %if.end31 [label %if.then16.i], !srcloc !572

if.then16.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_sck.__UNIQUE_ID_ddebug295, ptr noundef %19, ptr noundef nonnull @.str.268, i32 noundef %sub6.i) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then16.i, %do.body10.i
  %mul32 = shl nsw i32 %sub6.i, 2
  %call33 = tail call fastcc i32 @pcm512x_find_pll_coeff(ptr noundef %dai, i32 noundef %call27, i32 noundef %mul32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end36, label %if.end31.cleanup452_crit_edge

if.end31.cleanup452_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup452

if.end36:                                         ; preds = %if.end31
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %pll_p = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 10
  %31 = ptrtoint ptr %pll_p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pll_p, align 4
  %sub = add i32 %32, -1
  %call37 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 276, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.191, i32 noundef %call37) #11
  br label %cleanup452

if.end43:                                         ; preds = %if.end36
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 4
  %pll_j = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 8
  %35 = ptrtoint ptr %pll_j to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pll_j, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 277, i32 noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.194, i32 noundef %call45) #11
  br label %cleanup452

if.end51:                                         ; preds = %if.end43
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %7, align 4
  %pll_d = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 9
  %39 = ptrtoint ptr %pll_d to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_d, align 4
  %shr = ashr i32 %40, 8
  %call53 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 278, i32 noundef %shr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.197, i32 noundef %call53) #11
  br label %cleanup452

if.end59:                                         ; preds = %if.end51
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %7, align 4
  %43 = ptrtoint ptr %pll_d to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pll_d, align 4
  %and = and i32 %44, 255
  %call62 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 279, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end68, label %do.end67

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.200, i32 noundef %call62) #11
  br label %cleanup452

if.end68:                                         ; preds = %if.end59
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %7, align 4
  %pll_r = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 7
  %47 = ptrtoint ptr %pll_r to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pll_r, align 4
  %sub70 = add i32 %48, -1
  %call71 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 280, i32 noundef %sub70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72.not = icmp eq i32 %call71, 0
  br i1 %cmp72.not, label %if.end77, label %do.end76

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.203, i32 noundef %call71) #11
  br label %cleanup452

if.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %real_pll = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 11
  %49 = ptrtoint ptr %real_pll to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %real_pll, align 4
  %div81670 = lshr i32 %call13, 1
  br label %if.end84

if.end84:                                         ; preds = %if.end77, %if.then8
  %div81670.sink = phi i32 [ %div81670, %if.end77 ], [ %call9, %if.then8 ]
  %sub6.i.lcssa.sink = phi i32 [ %sub6.i, %if.end77 ], [ %div666, %if.then8 ]
  %call13.sink = phi i32 [ %call13, %if.end77 ], [ %mul, %if.then8 ]
  %mck_rate.0 = phi i32 [ %50, %if.end77 ], [ %call9, %if.then8 ]
  %sck_rate.0 = phi i32 [ %sub6.i, %if.end77 ], [ %call9, %if.then8 ]
  %pllin_rate.0 = phi i32 [ %call27, %if.end77 ], [ 0, %if.then8 ]
  %add82 = add i32 %sub6.i.lcssa.sink, %div81670.sink
  %div83 = udiv i32 %add82, %call13.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div83)
  %cmp85 = icmp sgt i32 %div83, 128
  br i1 %cmp85, label %do.end89, label %if.end90

do.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.206) #11
  br label %cleanup452

if.end90:                                         ; preds = %if.end84
  %div91 = udiv i32 %sck_rate.0, %div83
  %div92 = udiv i32 %div91, %lrclk_div.0
  %mul93 = shl i32 %div92, 4
  %overclock_dsp.i = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 14
  %51 = ptrtoint ptr %overclock_dsp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %overclock_dsp.i, align 4
  %mul.i699 = mul i32 %52, 50000000
  %div.i700 = udiv i32 %mul.i699, 100
  %add.i = add nuw nsw i32 %div.i700, 50000000
  call void @__sanitizer_cov_trace_cmp4(i32 %mck_rate.0, i32 %add.i)
  %cmp95 = icmp ugt i32 %mck_rate.0, %add.i
  %cond = select i1 %cmp95, i32 2, i32 1
  %53 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %component2, align 4
  %dev.i.i701 = getelementptr inbounds %struct.snd_soc_component, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %dev.i.i701 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i701, align 4
  %driver_data.i.i.i702 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %driver_data.i.i.i702 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i.i702, align 4
  %pll_out.i = getelementptr inbounds %struct.pcm512x_priv, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %pll_out.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pll_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i703 = icmp eq i32 %60, 0
  br i1 %tobool.not.i703, label %if.end90.if.else130_crit_edge, label %if.end.i

if.end90.if.else130_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else130

if.end.i:                                         ; preds = %if.end90
  %rem.i704 = urem i32 %pllin_rate.0, %mul93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i704)
  %tobool2.not.i = icmp eq i32 %rem.i704, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.else130_crit_edge

if.end.i.if.else130_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else130

if.end4.i:                                        ; preds = %if.end.i
  %overclock_dac.i.i = getelementptr inbounds %struct.pcm512x_priv, ptr %58, i32 0, i32 13
  %61 = ptrtoint ptr %overclock_dac.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %overclock_dac.i.i, align 4
  %mul.i.i705 = mul i32 %62, 6144000
  %div.i.i706 = udiv i32 %mul.i.i705, 100
  %add.i.i707 = add nuw nsw i32 %div.i.i706, 6144000
  %rem6.i = urem i32 %add.i.i707, %mul93
  %sub.i708 = sub nsw i32 %add.i.i707, %rem6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i708)
  %tobool7.not30.i = icmp eq i32 %sub.i708, 0
  br i1 %tobool7.not30.i, label %if.end4.i.if.else130_crit_edge, label %for.body.lr.ph.i

if.end4.i.if.else130_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else130

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %.neg.i = mul i32 %div92, -32
  br label %for.body.i711

for.body.i711:                                    ; preds = %if.end13.i.for.body.i711_crit_edge, %for.body.lr.ph.i
  %dac_rate.031.i = phi i32 [ %sub.i708, %for.body.lr.ph.i ], [ %sub15.i, %if.end13.i.for.body.i711_crit_edge ]
  %pllin_rate.0.frozen = freeze i32 %pllin_rate.0
  %dac_rate.031.i.frozen = freeze i32 %dac_rate.031.i
  %div.i709 = udiv i32 %pllin_rate.0.frozen, %dac_rate.031.i.frozen
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i709)
  %cmp.i710 = icmp ugt i32 %div.i709, 128
  br i1 %cmp.i710, label %for.body.i711.if.else130_crit_edge, label %if.end9.i

for.body.i711.if.else130_crit_edge:               ; preds = %for.body.i711
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else130

if.end9.i:                                        ; preds = %for.body.i711
  %63 = mul i32 %div.i709, %dac_rate.031.i.frozen
  %rem10.i.decomposed = sub i32 %pllin_rate.0.frozen, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.i.decomposed)
  %tobool11.not.i = icmp eq i32 %rem10.i.decomposed, 0
  br i1 %tobool11.not.i, label %pcm512x_pllin_dac_rate.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end9.i
  %sub15.i = add i32 %dac_rate.031.i, %.neg.i
  %tobool7.not.i = icmp eq i32 %sub15.i, 0
  br i1 %tobool7.not.i, label %if.end13.i.if.else130_crit_edge, label %if.end13.i.for.body.i711_crit_edge

if.end13.i.for.body.i711_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i711

if.end13.i.if.else130_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else130

pcm512x_pllin_dac_rate.exit:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dac_rate.031.i)
  %tobool97.not = icmp eq i32 %dac_rate.031.i, 0
  br i1 %tobool97.not, label %pcm512x_pllin_dac_rate.exit.if.else130_crit_edge, label %do.body99

pcm512x_pllin_dac_rate.exit.if.else130_crit_edge: ; preds = %pcm512x_pllin_dac_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else130

do.body99:                                        ; preds = %pcm512x_pllin_dac_rate.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then105)) #8
          to label %do.end108 [label %if.then105], !srcloc !572

if.then105:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.208) #8
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %do.body99
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %7, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 270, i32 noundef 112, i32 noundef 80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp111.not = icmp eq i32 %call.i, 0
  br i1 %cmp111.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.210, i32 noundef %call.i) #11
  br label %cleanup452

if.end117:                                        ; preds = %do.end108
  %pll_in = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 5
  %68 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pll_in, align 4
  %sub119 = add i32 %69, -1
  %70 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %7, align 4
  %call.i713 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 272, i32 noundef 7, i32 noundef %sub119, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i713)
  %cmp122.not = icmp eq i32 %call.i713, 0
  br i1 %cmp122.not, label %if.end117.if.end171_crit_edge, label %do.end126

if.end117.if.end171_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

do.end126:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 4
  %74 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pll_in, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.213, i32 noundef %75, i32 noundef %call.i713) #11
  br label %cleanup452

if.else130:                                       ; preds = %pcm512x_pllin_dac_rate.exit.if.else130_crit_edge, %if.end13.i.if.else130_crit_edge, %for.body.i711.if.else130_crit_edge, %if.end4.i.if.else130_crit_edge, %if.end.i.if.else130_crit_edge, %if.end90.if.else130_crit_edge
  %overclock_dac.i = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 13
  %76 = ptrtoint ptr %overclock_dac.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %overclock_dac.i, align 4
  %mul.i714 = mul i32 %77, 6144000
  %div.i715 = udiv i32 %mul.i714, 100
  %add.i716 = add nuw nsw i32 %div.i715, 6144000
  %div133 = udiv i32 %sck_rate.0, %mul93
  call void @__sanitizer_cov_trace_cmp4(i32 %mul93, i32 %add.i716)
  %tobool134.not759 = icmp ugt i32 %mul93, %add.i716
  br i1 %tobool134.not759, label %if.else130.do.end142.critedge_crit_edge, label %for.body.preheader

if.else130.do.end142.critedge_crit_edge:          ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end142.critedge

for.body.preheader:                               ; preds = %if.else130
  %div132 = udiv i32 %add.i716, %mul93
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %dac_mul.0760 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %div132, %for.body.preheader ]
  %rem = urem i32 %div133, %dac_mul.0760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool135.not = icmp eq i32 %rem, 0
  br i1 %tobool135.not, label %if.end143, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add i32 %dac_mul.0760, -1
  %tobool134.not = icmp eq i32 %dec, 0
  br i1 %tobool134.not, label %for.inc.do.end142.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end142.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end142.critedge

do.end142.critedge:                               ; preds = %for.inc.do.end142.critedge_crit_edge, %if.else130.do.end142.critedge_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.216) #11
  br label %cleanup452

if.end143:                                        ; preds = %for.body
  %mul144 = mul i32 %dac_mul.0760, %mul93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then157)) #8
          to label %do.end160 [label %if.then157], !srcloc !572

if.then157:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.218, i32 noundef %mul144, i32 noundef %div92) #8
  br label %do.end160

do.end160:                                        ; preds = %if.then157, %if.end143
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %7, align 4
  %call.i717 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 270, i32 noundef 112, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i717)
  %cmp163.not = icmp eq i32 %call.i717, 0
  br i1 %cmp163.not, label %do.end160.if.end171_crit_edge, label %do.end167

do.end160.if.end171_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

do.end167:                                        ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.220, i32 noundef %call.i717) #11
  br label %cleanup452

if.end171:                                        ; preds = %do.end160.if.end171_crit_edge, %if.end117.if.end171_crit_edge
  %dac_rate.1 = phi i32 [ %dac_rate.031.i, %if.end117.if.end171_crit_edge ], [ %mul144, %do.end160.if.end171_crit_edge ]
  %dacsrc_rate.1 = phi i32 [ %pllin_rate.0, %if.end117.if.end171_crit_edge ], [ %sck_rate.0, %do.end160.if.end171_crit_edge ]
  %div175667 = lshr exact i32 %mul93, 1
  %add176 = add i32 %dac_rate.1, %div175667
  %div177 = udiv i32 %add176, %mul93
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div177)
  %cmp178 = icmp sgt i32 %div177, 128
  br i1 %cmp178, label %do.end182, label %if.end183

do.end182:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.223) #11
  br label %cleanup452

if.end183:                                        ; preds = %if.end171
  %div187668 = lshr i32 %dac_rate.1, 1
  %add188 = add i32 %dacsrc_rate.1, %div187668
  %div189 = udiv i32 %add188, %dac_rate.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div189)
  %cmp190 = icmp sgt i32 %div189, 128
  br i1 %cmp190, label %do.end194, label %if.end195

do.end194:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.226) #11
  br label %cleanup452

if.end195:                                        ; preds = %if.end183
  %div196 = udiv i32 %dacsrc_rate.1, %div189
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144001, i32 %div196)
  %cmp.i718 = icmp ult i32 %div196, 6144001
  br i1 %cmp.i718, label %if.end195.pcm512x_ncp_target.exit_crit_edge, label %if.end.i723

if.end195.pcm512x_ncp_target.exit_crit_edge:      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm512x_ncp_target.exit

if.end.i723:                                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %overclock_dac.i.i719 = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 13
  %82 = ptrtoint ptr %overclock_dac.i.i719 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %overclock_dac.i.i719, align 4
  %mul.i.i720 = mul i32 %83, 1536000
  %div.i.i721 = udiv i32 %mul.i.i720, 100
  %add.i.i722 = add nuw nsw i32 %div.i.i721, 1536000
  br label %pcm512x_ncp_target.exit

pcm512x_ncp_target.exit:                          ; preds = %if.end.i723, %if.end195.pcm512x_ncp_target.exit_crit_edge
  %retval.0.i724 = phi i32 [ %add.i.i722, %if.end.i723 ], [ 1536000, %if.end195.pcm512x_ncp_target.exit_crit_edge ]
  %div201669 = lshr i32 %retval.0.i724, 1
  %add202 = add i32 %div201669, %div196
  %div203 = udiv i32 %add202, %retval.0.i724
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div203)
  %cmp204 = icmp ugt i32 %div203, 128
  br i1 %cmp204, label %pcm512x_ncp_target.exit.if.then207_crit_edge, label %lor.lhs.false

pcm512x_ncp_target.exit.if.then207_crit_edge:     ; preds = %pcm512x_ncp_target.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then207

lor.lhs.false:                                    ; preds = %pcm512x_ncp_target.exit
  %div205 = udiv i32 %div196, %div203
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048000, i32 %div205)
  %cmp206 = icmp ugt i32 %div205, 2048000
  br i1 %cmp206, label %lor.lhs.false.if.then207_crit_edge, label %lor.lhs.false.if.end217_crit_edge

lor.lhs.false.if.end217_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

lor.lhs.false.if.then207_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then207

if.then207:                                       ; preds = %lor.lhs.false.if.then207_crit_edge, %pcm512x_ncp_target.exit.if.then207_crit_edge
  %sub209 = add i32 %div196, 2047999
  %div210 = udiv i32 %sub209, 2048000
  call void @__sanitizer_cov_trace_const_cmp4(i32 264191999, i32 %sub209)
  %cmp211 = icmp ugt i32 %sub209, 264191999
  br i1 %cmp211, label %do.end215, label %if.then207.if.end217_crit_edge

if.then207.if.end217_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

do.end215:                                        ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.229) #11
  br label %cleanup452

if.end217:                                        ; preds = %if.then207.if.end217_crit_edge, %lor.lhs.false.if.end217_crit_edge
  %ncp_div.0 = phi i32 [ %div210, %if.then207.if.end217_crit_edge ], [ %div203, %lor.lhs.false.if.end217_crit_edge ]
  %mul218 = mul i32 %cond, %div92
  %div219 = udiv i32 %mck_rate.0, %mul218
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %7, align 4
  %sub221 = add nsw i32 %cond, -1
  %call222 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 283, i32 noundef %sub221) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223.not = icmp eq i32 %call222, 0
  br i1 %cmp223.not, label %if.end228, label %do.end227

do.end227:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.232, i32 noundef %call222) #11
  br label %cleanup452

if.end228:                                        ; preds = %if.end217
  %86 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %7, align 4
  %sub230 = add i32 %div189, -1
  %call231 = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 284, i32 noundef %sub230) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232.not = icmp eq i32 %call231, 0
  br i1 %cmp232.not, label %if.end237, label %do.end236

do.end236:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.235, i32 noundef %call231) #11
  br label %cleanup452

if.end237:                                        ; preds = %if.end228
  %88 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %7, align 4
  %sub239 = add nsw i32 %ncp_div.0, -1
  %call240 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 285, i32 noundef %sub239) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp241.not = icmp eq i32 %call240, 0
  br i1 %cmp241.not, label %if.end246, label %do.end245

do.end245:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.238, i32 noundef %call240) #11
  br label %cleanup452

if.end246:                                        ; preds = %if.end237
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %7, align 4
  %sub248 = add i32 %div177, -1
  %call249 = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 286, i32 noundef %sub248) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %cmp250.not = icmp eq i32 %call249, 0
  br i1 %cmp250.not, label %if.end255, label %do.end254

do.end254:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.241, i32 noundef %call249) #11
  br label %cleanup452

if.end255:                                        ; preds = %if.end246
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %7, align 4
  %sub257 = add i32 %div83, -1
  %call258 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 288, i32 noundef %sub257) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259.not = icmp eq i32 %call258, 0
  br i1 %cmp259.not, label %if.end264, label %do.end263

do.end263:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.244, i32 noundef %call258) #11
  br label %cleanup452

if.end264:                                        ; preds = %if.end255
  %94 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %7, align 4
  %sub266 = add i32 %lrclk_div.0, -1
  %call267 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 289, i32 noundef %sub266) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %cmp268.not = icmp eq i32 %call267, 0
  br i1 %cmp268.not, label %if.end273, label %do.end272

do.end272:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.247, i32 noundef %call267) #11
  br label %cleanup452

if.end273:                                        ; preds = %if.end264
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %7, align 4
  %shr275 = ashr i32 %div219, 8
  %call276 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 291, i32 noundef %shr275) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %cmp277.not = icmp eq i32 %call276, 0
  br i1 %cmp277.not, label %if.end282, label %do.end281

do.end281:                                        ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.250, i32 noundef %call276) #11
  br label %cleanup452

if.end282:                                        ; preds = %if.end273
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %7, align 4
  %and284 = and i32 %div219, 255
  %call285 = tail call i32 @regmap_write(ptr noundef %99, i32 noundef 292, i32 noundef %and284) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %cmp286.not = icmp eq i32 %call285, 0
  br i1 %cmp286.not, label %if.end291, label %do.end290

do.end290:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.253, i32 noundef %call285) #11
  br label %cleanup452

if.end291:                                        ; preds = %if.end282
  %overclock_dac.i725 = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 13
  %100 = ptrtoint ptr %overclock_dac.i725 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %overclock_dac.i725, align 4
  %mul.i726 = mul i32 %101, 48000
  %div.i727 = udiv i32 %mul.i726, 100
  %add.i728 = add nuw nsw i32 %div.i727, 48000
  call void @__sanitizer_cov_trace_cmp4(i32 %div92, i32 %add.i728)
  %cmp293.not = icmp ugt i32 %div92, %add.i728
  br i1 %cmp293.not, label %if.else295, label %if.end291.if.end306_crit_edge

if.end291.if.end306_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end306

if.else295:                                       ; preds = %if.end291
  %mul.i730 = mul i32 %101, 96000
  %div.i731 = udiv i32 %mul.i730, 100
  %add.i732 = add nuw nsw i32 %div.i731, 96000
  call void @__sanitizer_cov_trace_cmp4(i32 %div92, i32 %add.i732)
  %cmp297.not = icmp ugt i32 %div92, %add.i732
  br i1 %cmp297.not, label %if.else299, label %if.else295.if.end306_crit_edge

if.else295.if.end306_crit_edge:                   ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end306

if.else299:                                       ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i734 = mul i32 %101, 192000
  %div.i735 = udiv i32 %mul.i734, 100
  %add.i736 = add nuw nsw i32 %div.i735, 192000
  call void @__sanitizer_cov_trace_cmp4(i32 %div92, i32 %add.i736)
  %cmp301.not = icmp ugt i32 %div92, %add.i736
  %. = select i1 %cmp301.not, i32 3, i32 2
  br label %if.end306

if.end306:                                        ; preds = %if.else299, %if.else295.if.end306_crit_edge, %if.end291.if.end306_crit_edge
  %fssp.0 = phi i32 [ 0, %if.end291.if.end306_crit_edge ], [ 1, %if.else295.if.end306_crit_edge ], [ %., %if.else299 ]
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %7, align 4
  %call.i737 = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 290, i32 noundef 3, i32 noundef %fssp.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i737)
  %cmp309.not = icmp eq i32 %call.i737, 0
  br i1 %cmp309.not, label %do.body316, label %do.end313

do.end313:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.256, i32 noundef %call.i737) #11
  br label %cleanup452

do.body316:                                       ; preds = %if.end306
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then328)) #8
          to label %do.body333 [label %if.then328], !srcloc !572

if.then328:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug304, ptr noundef %107, ptr noundef nonnull @.str.258, i32 noundef %cond) #8
  br label %do.body333

do.body333:                                       ; preds = %if.then328, %do.body316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then345)) #8
          to label %do.body350 [label %if.then345], !srcloc !572

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug305, ptr noundef %109, ptr noundef nonnull @.str.259, i32 noundef %div189) #8
  br label %do.body350

do.body350:                                       ; preds = %if.then345, %do.body333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then362)) #8
          to label %do.body367 [label %if.then362], !srcloc !572

if.then362:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug306, ptr noundef %111, ptr noundef nonnull @.str.260, i32 noundef %ncp_div.0) #8
  br label %do.body367

do.body367:                                       ; preds = %if.then362, %do.body350
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then379)) #8
          to label %do.body384 [label %if.then379], !srcloc !572

if.then379:                                       ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug307, ptr noundef %113, ptr noundef nonnull @.str.261, i32 noundef %div177) #8
  br label %do.body384

do.body384:                                       ; preds = %if.then379, %do.body367
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then396)) #8
          to label %do.body401 [label %if.then396], !srcloc !572

if.then396:                                       ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug308, ptr noundef %115, ptr noundef nonnull @.str.262, i32 noundef %div83) #8
  br label %do.body401

do.body401:                                       ; preds = %if.then396, %do.body384
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then413)) #8
          to label %do.body418 [label %if.then413], !srcloc !572

if.then413:                                       ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug309, ptr noundef %117, ptr noundef nonnull @.str.263, i32 noundef %lrclk_div.0) #8
  br label %do.body418

do.body418:                                       ; preds = %if.then413, %do.body401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then430)) #8
          to label %do.body435 [label %if.then430], !srcloc !572

if.then430:                                       ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug310, ptr noundef %119, ptr noundef nonnull @.str.264, i32 noundef %div219) #8
  br label %do.body435

do.body435:                                       ; preds = %if.then430, %do.body418
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_set_dividers, %if.then447)) #8
          to label %cleanup452 [label %if.then447], !srcloc !572

if.then447:                                       ; preds = %do.body435
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i, align 4
  %shl = shl nuw nsw i32 1, %fssp.0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_set_dividers.__UNIQUE_ID_ddebug311, ptr noundef %121, ptr noundef nonnull @.str.265, i32 noundef %shl) #8
  br label %cleanup452

cleanup452:                                       ; preds = %if.then447, %do.body435, %do.end313, %do.end290, %do.end281, %do.end272, %do.end263, %do.end254, %do.end245, %do.end236, %do.end227, %do.end215, %do.end194, %do.end182, %do.end167, %do.end142.critedge, %do.end126, %do.end115, %do.end89, %do.end76, %do.end67, %do.end58, %do.end50, %do.end42, %if.end31.cleanup452_crit_edge, %pcm512x_find_sck.exit.thread, %do.end24, %do.end18, %do.end
  %retval.1 = phi i32 [ %call13, %do.end18 ], [ -22, %do.end24 ], [ %call37, %do.end42 ], [ %call45, %do.end50 ], [ %call53, %do.end58 ], [ %call62, %do.end67 ], [ %call71, %do.end76 ], [ -22, %do.end89 ], [ %call.i, %do.end115 ], [ %call.i713, %do.end126 ], [ -22, %do.end182 ], [ -22, %do.end194 ], [ -22, %do.end215 ], [ %call222, %do.end227 ], [ %call231, %do.end236 ], [ %call240, %do.end245 ], [ %call249, %do.end254 ], [ %call258, %do.end263 ], [ %call267, %do.end272 ], [ %call276, %do.end281 ], [ %call285, %do.end290 ], [ %call.i737, %do.end313 ], [ -22, %do.end ], [ %call33, %if.end31.cleanup452_crit_edge ], [ 0, %if.then447 ], [ -22, %pcm512x_find_sck.exit.thread ], [ 0, %do.body435 ], [ -22, %do.end142.critedge ], [ %call.i717, %do.end167 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcm512x_find_pll_coeff(ptr nocapture noundef readonly %dai, i32 noundef %pllin_rate, i32 noundef %pll_rate) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component2, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @gcd(i32 noundef %pll_rate, i32 noundef %pllin_rate) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_find_pll_coeff, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !572

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.270, i32 noundef %pll_rate, i32 noundef %pllin_rate, i32 noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %div = udiv i32 %pll_rate, %call3
  %div7 = udiv i32 %pllin_rate, %call3
  %div8 = udiv i32 %pllin_rate, %div7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %div8)
  %cmp = icmp ugt i32 %div8, 20000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp9 = icmp ult i32 %div, 8
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  %sub = add i32 %div8, 19999999
  %div12 = udiv i32 %sub, 20000000
  %mul17 = select i1 %or.cond, i32 %div12, i32 1
  %den.0 = mul i32 %mul17, %div7
  %num.0 = mul i32 %mul17, %div
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_find_pll_coeff, %if.then31)) #8
          to label %do.end34 [label %if.then31], !srcloc !572

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.271, i32 noundef %num.0, i32 noundef %den.0) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %den.0)
  %cmp35 = icmp ult i32 %den.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1009, i32 %num.0)
  %cmp37 = icmp ult i32 %num.0, 1009
  %or.cond886 = select i1 %cmp35, i1 %cmp37, i1 false
  br i1 %or.cond886, label %land.lhs.true38, label %if.end70

land.lhs.true38:                                  ; preds = %do.end34
  %div39 = udiv i32 %pllin_rate, %den.0
  %8 = add i32 %div39, -1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 19000001, i32 %8)
  %9 = icmp ult i32 %8, 19000001
  br i1 %9, label %for.body.preheader, label %land.lhs.true38.if.end73_crit_edge

land.lhs.true38.if.end73_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

for.body.preheader:                               ; preds = %land.lhs.true38
  %rem = and i32 %num.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool46.not = icmp ne i32 %rem, 0
  %div491011 = lshr i32 %num.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %num.0)
  %10 = icmp ult i32 %num.0, 16
  %or.cond1037 = or i1 %tobool46.not, %10
  br i1 %or.cond1037, label %for.inc, label %for.body.preheader.do.body54_crit_edge

for.body.preheader.do.body54_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body54:                                        ; preds = %if.end48.15.do.body54_crit_edge, %if.end48.14.do.body54_crit_edge, %if.end48.13.do.body54_crit_edge, %if.end48.12.do.body54_crit_edge, %if.end48.11.do.body54_crit_edge, %if.end48.10.do.body54_crit_edge, %if.end48.9.do.body54_crit_edge, %if.end48.8.do.body54_crit_edge, %if.end48.7.do.body54_crit_edge, %if.end48.6.do.body54_crit_edge, %if.end48.5.do.body54_crit_edge, %if.end48.4.do.body54_crit_edge, %if.end48.3.do.body54_crit_edge, %if.end48.2.do.body54_crit_edge, %if.end48.1.do.body54_crit_edge, %for.body.preheader.do.body54_crit_edge
  %R.01001.lcssa = phi i32 [ 15, %if.end48.1.do.body54_crit_edge ], [ 14, %if.end48.2.do.body54_crit_edge ], [ 13, %if.end48.3.do.body54_crit_edge ], [ 12, %if.end48.4.do.body54_crit_edge ], [ 11, %if.end48.5.do.body54_crit_edge ], [ 10, %if.end48.6.do.body54_crit_edge ], [ 9, %if.end48.7.do.body54_crit_edge ], [ 8, %if.end48.8.do.body54_crit_edge ], [ 7, %if.end48.9.do.body54_crit_edge ], [ 6, %if.end48.10.do.body54_crit_edge ], [ 5, %if.end48.11.do.body54_crit_edge ], [ 4, %if.end48.12.do.body54_crit_edge ], [ 3, %if.end48.13.do.body54_crit_edge ], [ 2, %if.end48.14.do.body54_crit_edge ], [ 1, %if.end48.15.do.body54_crit_edge ], [ 16, %for.body.preheader.do.body54_crit_edge ]
  %div49.lcssa = phi i32 [ %div49.1.zext, %if.end48.1.do.body54_crit_edge ], [ %div49.2.zext, %if.end48.2.do.body54_crit_edge ], [ %div49.3.zext, %if.end48.3.do.body54_crit_edge ], [ %div49.4.zext, %if.end48.4.do.body54_crit_edge ], [ %div49.5.zext, %if.end48.5.do.body54_crit_edge ], [ %div49.6.zext, %if.end48.6.do.body54_crit_edge ], [ %div49.7.zext, %if.end48.7.do.body54_crit_edge ], [ %div49.81010, %if.end48.8.do.body54_crit_edge ], [ %div49.9.zext, %if.end48.9.do.body54_crit_edge ], [ %div49.10.zext, %if.end48.10.do.body54_crit_edge ], [ %div49.11.zext, %if.end48.11.do.body54_crit_edge ], [ %div49.121009, %if.end48.12.do.body54_crit_edge ], [ %div49.13.zext, %if.end48.13.do.body54_crit_edge ], [ %div49.141008, %if.end48.14.do.body54_crit_edge ], [ %num.0, %if.end48.15.do.body54_crit_edge ], [ %div491011, %for.body.preheader.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_find_pll_coeff, %if.then66)) #8
          to label %done [label %if.then66], !srcloc !572

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.272, i32 noundef %R.01001.lcssa, i32 noundef %div49.lcssa, i32 noundef %den.0) #8
  br label %done

for.inc:                                          ; preds = %for.body.preheader
  %rem.1.lhs.trunc = trunc i32 %num.0 to i16
  %rem.11013 = urem i16 %rem.1.lhs.trunc, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.11013)
  %tobool46.not.1 = icmp eq i16 %rem.11013, 0
  br i1 %tobool46.not.1, label %if.end48.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end48.1:                                       ; preds = %for.inc
  %div49.1.lhs.trunc = trunc i32 %num.0 to i16
  %div49.11014 = udiv i16 %div49.1.lhs.trunc, 15
  %div49.1.zext = zext i16 %div49.11014 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %num.0)
  %cmp50.1 = icmp ult i32 %num.0, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 959, i16 %div49.1.lhs.trunc)
  %cmp51.1 = icmp ugt i16 %div49.1.lhs.trunc, 959
  %or.cond888.1 = or i1 %cmp50.1, %cmp51.1
  br i1 %or.cond888.1, label %if.end48.1.for.inc.1_crit_edge, label %if.end48.1.do.body54_crit_edge

if.end48.1.do.body54_crit_edge:                   ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.1.for.inc.1_crit_edge:                   ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end48.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %rem.2.lhs.trunc = trunc i32 %num.0 to i16
  %rem.21015 = urem i16 %rem.2.lhs.trunc, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.21015)
  %tobool46.not.2 = icmp eq i16 %rem.21015, 0
  br i1 %tobool46.not.2, label %if.end48.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end48.2:                                       ; preds = %for.inc.1
  %div49.2.lhs.trunc = trunc i32 %num.0 to i16
  %div49.21016 = udiv i16 %div49.2.lhs.trunc, 14
  %div49.2.zext = zext i16 %div49.21016 to i32
  %11 = add nsw i32 %num.0, -896
  call void @__sanitizer_cov_trace_const_cmp4(i32 -882, i32 %11)
  %12 = icmp ult i32 %11, -882
  br i1 %12, label %if.end48.2.for.inc.2_crit_edge, label %if.end48.2.do.body54_crit_edge

if.end48.2.do.body54_crit_edge:                   ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.2.for.inc.2_crit_edge:                   ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end48.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %rem.3.lhs.trunc = trunc i32 %num.0 to i16
  %rem.31017 = urem i16 %rem.3.lhs.trunc, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.31017)
  %tobool46.not.3 = icmp eq i16 %rem.31017, 0
  br i1 %tobool46.not.3, label %if.end48.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end48.3:                                       ; preds = %for.inc.2
  %div49.3.lhs.trunc = trunc i32 %num.0 to i16
  %div49.31018 = udiv i16 %div49.3.lhs.trunc, 13
  %div49.3.zext = zext i16 %div49.31018 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %num.0)
  %cmp50.3 = icmp ult i32 %num.0, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 831, i16 %div49.3.lhs.trunc)
  %cmp51.3 = icmp ugt i16 %div49.3.lhs.trunc, 831
  %or.cond888.3 = or i1 %cmp50.3, %cmp51.3
  br i1 %or.cond888.3, label %if.end48.3.for.inc.3_crit_edge, label %if.end48.3.do.body54_crit_edge

if.end48.3.do.body54_crit_edge:                   ; preds = %if.end48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.3.for.inc.3_crit_edge:                   ; preds = %if.end48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end48.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %rem.4.lhs.trunc = trunc i32 %num.0 to i16
  %rem.41019 = urem i16 %rem.4.lhs.trunc, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.41019)
  %tobool46.not.4 = icmp eq i16 %rem.41019, 0
  br i1 %tobool46.not.4, label %if.end48.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end48.4:                                       ; preds = %for.inc.3
  %div49.4.lhs.trunc = trunc i32 %num.0 to i16
  %div49.41020 = udiv i16 %div49.4.lhs.trunc, 12
  %div49.4.zext = zext i16 %div49.41020 to i32
  %13 = add nsw i32 %num.0, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -756, i32 %13)
  %14 = icmp ult i32 %13, -756
  br i1 %14, label %if.end48.4.for.inc.4_crit_edge, label %if.end48.4.do.body54_crit_edge

if.end48.4.do.body54_crit_edge:                   ; preds = %if.end48.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.4.for.inc.4_crit_edge:                   ; preds = %if.end48.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end48.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %rem.5.lhs.trunc = trunc i32 %num.0 to i16
  %rem.51021 = urem i16 %rem.5.lhs.trunc, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.51021)
  %tobool46.not.5 = icmp eq i16 %rem.51021, 0
  br i1 %tobool46.not.5, label %if.end48.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.end48.5:                                       ; preds = %for.inc.4
  %div49.5.lhs.trunc = trunc i32 %num.0 to i16
  %div49.51022 = udiv i16 %div49.5.lhs.trunc, 11
  %div49.5.zext = zext i16 %div49.51022 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %num.0)
  %cmp50.5 = icmp ult i32 %num.0, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 703, i16 %div49.5.lhs.trunc)
  %cmp51.5 = icmp ugt i16 %div49.5.lhs.trunc, 703
  %or.cond888.5 = or i1 %cmp50.5, %cmp51.5
  br i1 %or.cond888.5, label %if.end48.5.for.inc.5_crit_edge, label %if.end48.5.do.body54_crit_edge

if.end48.5.do.body54_crit_edge:                   ; preds = %if.end48.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.5.for.inc.5_crit_edge:                   ; preds = %if.end48.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end48.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %rem.6.lhs.trunc = trunc i32 %num.0 to i16
  %rem.61023 = urem i16 %rem.6.lhs.trunc, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.61023)
  %tobool46.not.6 = icmp eq i16 %rem.61023, 0
  br i1 %tobool46.not.6, label %if.end48.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.end48.6:                                       ; preds = %for.inc.5
  %div49.6.lhs.trunc = trunc i32 %num.0 to i16
  %div49.61024 = udiv i16 %div49.6.lhs.trunc, 10
  %div49.6.zext = zext i16 %div49.61024 to i32
  %15 = add nsw i32 %num.0, -640
  call void @__sanitizer_cov_trace_const_cmp4(i32 -630, i32 %15)
  %16 = icmp ult i32 %15, -630
  br i1 %16, label %if.end48.6.for.inc.6_crit_edge, label %if.end48.6.do.body54_crit_edge

if.end48.6.do.body54_crit_edge:                   ; preds = %if.end48.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.6.for.inc.6_crit_edge:                   ; preds = %if.end48.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end48.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %rem.7.lhs.trunc = trunc i32 %num.0 to i16
  %rem.71025 = urem i16 %rem.7.lhs.trunc, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.71025)
  %tobool46.not.7 = icmp eq i16 %rem.71025, 0
  br i1 %tobool46.not.7, label %if.end48.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.end48.7:                                       ; preds = %for.inc.6
  %div49.7.lhs.trunc = trunc i32 %num.0 to i16
  %div49.71026 = udiv i16 %div49.7.lhs.trunc, 9
  %div49.7.zext = zext i16 %div49.71026 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %num.0)
  %cmp50.7 = icmp ult i32 %num.0, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 575, i16 %div49.7.lhs.trunc)
  %cmp51.7 = icmp ugt i16 %div49.7.lhs.trunc, 575
  %or.cond888.7 = or i1 %cmp50.7, %cmp51.7
  br i1 %or.cond888.7, label %if.end48.7.for.inc.7_crit_edge, label %if.end48.7.do.body54_crit_edge

if.end48.7.do.body54_crit_edge:                   ; preds = %if.end48.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.7.for.inc.7_crit_edge:                   ; preds = %if.end48.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end48.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %rem.8 = and i32 %num.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.8)
  %tobool46.not.8 = icmp eq i32 %rem.8, 0
  br i1 %tobool46.not.8, label %if.end48.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8

if.end48.8:                                       ; preds = %for.inc.7
  %div49.81010 = lshr i32 %num.0, 3
  %17 = add nsw i32 %num.0, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -504, i32 %17)
  %18 = icmp ult i32 %17, -504
  br i1 %18, label %if.end48.8.for.inc.8_crit_edge, label %if.end48.8.do.body54_crit_edge

if.end48.8.do.body54_crit_edge:                   ; preds = %if.end48.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.8.for.inc.8_crit_edge:                   ; preds = %if.end48.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end48.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %rem.9.lhs.trunc = trunc i32 %num.0 to i16
  %rem.91027 = urem i16 %rem.9.lhs.trunc, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.91027)
  %tobool46.not.9 = icmp eq i16 %rem.91027, 0
  br i1 %tobool46.not.9, label %if.end48.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9

if.end48.9:                                       ; preds = %for.inc.8
  %div49.9.lhs.trunc = trunc i32 %num.0 to i16
  %div49.91028 = udiv i16 %div49.9.lhs.trunc, 7
  %div49.9.zext = zext i16 %div49.91028 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %num.0)
  %cmp50.9 = icmp ult i32 %num.0, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 447, i16 %div49.9.lhs.trunc)
  %cmp51.9 = icmp ugt i16 %div49.9.lhs.trunc, 447
  %or.cond888.9 = or i1 %cmp50.9, %cmp51.9
  br i1 %or.cond888.9, label %if.end48.9.for.inc.9_crit_edge, label %if.end48.9.do.body54_crit_edge

if.end48.9.do.body54_crit_edge:                   ; preds = %if.end48.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.9.for.inc.9_crit_edge:                   ; preds = %if.end48.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end48.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %rem.10.lhs.trunc = trunc i32 %num.0 to i16
  %rem.101029 = urem i16 %rem.10.lhs.trunc, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.101029)
  %tobool46.not.10 = icmp eq i16 %rem.101029, 0
  br i1 %tobool46.not.10, label %if.end48.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10

if.end48.10:                                      ; preds = %for.inc.9
  %div49.10.lhs.trunc = trunc i32 %num.0 to i16
  %div49.101030 = udiv i16 %div49.10.lhs.trunc, 6
  %div49.10.zext = zext i16 %div49.101030 to i32
  %19 = add nsw i32 %num.0, -384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -378, i32 %19)
  %20 = icmp ult i32 %19, -378
  br i1 %20, label %if.end48.10.for.inc.10_crit_edge, label %if.end48.10.do.body54_crit_edge

if.end48.10.do.body54_crit_edge:                  ; preds = %if.end48.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.10.for.inc.10_crit_edge:                 ; preds = %if.end48.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end48.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %rem.11.lhs.trunc = trunc i32 %num.0 to i16
  %rem.111031 = urem i16 %rem.11.lhs.trunc, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.111031)
  %tobool46.not.11 = icmp eq i16 %rem.111031, 0
  br i1 %tobool46.not.11, label %if.end48.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11

if.end48.11:                                      ; preds = %for.inc.10
  %div49.11.lhs.trunc = trunc i32 %num.0 to i16
  %div49.111032 = udiv i16 %div49.11.lhs.trunc, 5
  %div49.11.zext = zext i16 %div49.111032 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %num.0)
  %cmp50.11 = icmp ult i32 %num.0, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %div49.11.lhs.trunc)
  %cmp51.11 = icmp ugt i16 %div49.11.lhs.trunc, 319
  %or.cond888.11 = or i1 %cmp50.11, %cmp51.11
  br i1 %or.cond888.11, label %if.end48.11.for.inc.11_crit_edge, label %if.end48.11.do.body54_crit_edge

if.end48.11.do.body54_crit_edge:                  ; preds = %if.end48.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.11.for.inc.11_crit_edge:                 ; preds = %if.end48.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end48.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %rem.12 = and i32 %num.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.12)
  %tobool46.not.12 = icmp eq i32 %rem.12, 0
  br i1 %tobool46.not.12, label %if.end48.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.12

if.end48.12:                                      ; preds = %for.inc.11
  %div49.121009 = lshr i32 %num.0, 2
  %21 = add nsw i32 %num.0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252, i32 %21)
  %22 = icmp ult i32 %21, -252
  br i1 %22, label %if.end48.12.for.inc.12_crit_edge, label %if.end48.12.do.body54_crit_edge

if.end48.12.do.body54_crit_edge:                  ; preds = %if.end48.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.12.for.inc.12_crit_edge:                 ; preds = %if.end48.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end48.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %rem.13.lhs.trunc = trunc i32 %num.0 to i16
  %rem.131033 = urem i16 %rem.13.lhs.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.131033)
  %tobool46.not.13 = icmp eq i16 %rem.131033, 0
  br i1 %tobool46.not.13, label %if.end48.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.13

if.end48.13:                                      ; preds = %for.inc.12
  %div49.13.lhs.trunc = trunc i32 %num.0 to i16
  %div49.131034 = udiv i16 %div49.13.lhs.trunc, 3
  %div49.13.zext = zext i16 %div49.131034 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num.0)
  %cmp50.13 = icmp ult i32 %num.0, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 191, i16 %div49.13.lhs.trunc)
  %cmp51.13 = icmp ugt i16 %div49.13.lhs.trunc, 191
  %or.cond888.13 = or i1 %cmp50.13, %cmp51.13
  br i1 %or.cond888.13, label %if.end48.13.for.inc.13_crit_edge, label %if.end48.13.do.body54_crit_edge

if.end48.13.do.body54_crit_edge:                  ; preds = %if.end48.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.13.for.inc.13_crit_edge:                 ; preds = %if.end48.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end48.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %rem.14 = and i32 %num.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.14)
  %tobool46.not.14 = icmp eq i32 %rem.14, 0
  br i1 %tobool46.not.14, label %if.end48.14, label %for.inc.13.if.end48.15_crit_edge

for.inc.13.if.end48.15_crit_edge:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.15

if.end48.14:                                      ; preds = %for.inc.13
  %div49.141008 = lshr i32 %num.0, 1
  %23 = add nsw i32 %num.0, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %23)
  %24 = icmp ult i32 %23, -126
  br i1 %24, label %if.end48.14.if.end48.15_crit_edge, label %if.end48.14.do.body54_crit_edge

if.end48.14.do.body54_crit_edge:                  ; preds = %if.end48.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.14.if.end48.15_crit_edge:                ; preds = %if.end48.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.15

if.end48.15:                                      ; preds = %if.end48.14.if.end48.15_crit_edge, %for.inc.13.if.end48.15_crit_edge
  %25 = add i32 %num.0, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %25)
  %26 = icmp ult i32 %25, -63
  br i1 %26, label %if.end48.15.if.end73_crit_edge, label %if.end48.15.do.body54_crit_edge

if.end48.15.do.body54_crit_edge:                  ; preds = %if.end48.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end48.15.if.end73_crit_edge:                   ; preds = %if.end48.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end70:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 429496, i32 %num.0)
  %cmp71 = icmp ugt i32 %num.0, 429496
  br i1 %cmp71, label %if.end70.fallback_crit_edge, label %if.end70.if.end73_crit_edge

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end70.fallback_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

if.end73:                                         ; preds = %if.end70.if.end73_crit_edge, %if.end48.15.if.end73_crit_edge, %land.lhs.true38.if.end73_crit_edge
  %mul74 = mul nuw i32 %num.0, 10000
  %call75 = tail call i32 @gcd(i32 noundef %mul74, i32 noundef %den.0) #12
  %div77 = udiv i32 %mul74, %call75
  %div78 = udiv i32 %den.0, %call75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_find_pll_coeff, %if.then91)) #8
          to label %do.end94 [label %if.then91], !srcloc !572

if.then91:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.273, i32 noundef %div77, i32 noundef %div78, i32 noundef %call75) #8
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div78)
  %cmp961003 = icmp slt i32 %div78, 16
  br i1 %cmp961003, label %do.end94.for.body97_crit_edge, label %do.end94.fallback_crit_edge

do.end94.fallback_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

do.end94.for.body97_crit_edge:                    ; preds = %do.end94
  br label %for.body97

for.body97:                                       ; preds = %for.inc136.for.body97_crit_edge, %do.end94.for.body97_crit_edge
  %P.01004 = phi i32 [ %inc, %for.inc136.for.body97_crit_edge ], [ %div78, %do.end94.for.body97_crit_edge ]
  %div98 = udiv i32 %pllin_rate, %P.01004
  %27 = add i32 %div98, -200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -193333001, i32 %27)
  %28 = icmp ult i32 %27, -193333001
  br i1 %28, label %for.body97.for.inc136_crit_edge, label %if.end104

for.body97.for.inc136_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc136

if.end104:                                        ; preds = %for.body97
  %mul105 = mul i32 %P.01004, %div77
  %mul105.frozen = freeze i32 %mul105
  %div78.frozen = freeze i32 %div78
  %div111 = udiv i32 %mul105.frozen, %div78.frozen
  %29 = mul i32 %div111, %div78.frozen
  %rem106.decomposed = sub i32 %mul105.frozen, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem106.decomposed)
  %tobool107.not = icmp ne i32 %rem106.decomposed, 0
  %30 = add i32 %div111, -120001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -80001, i32 %30)
  %31 = icmp ult i32 %30, -80001
  %or.cond1041 = or i1 %tobool107.not, %31
  br i1 %or.cond1041, label %if.end104.for.inc136_crit_edge, label %if.end116

if.end104.for.inc136_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc136

if.end116:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %div117 = udiv i32 %div111, 10000
  %32 = mul i32 %div117, 10000
  %rem118.decomposed = sub i32 %div111, %32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_find_pll_coeff, %if.then131)) #8
          to label %done [label %if.then131], !srcloc !572

if.then131:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.274, i32 noundef %div117, i32 noundef %rem118.decomposed, i32 noundef %P.01004) #8
  br label %done

for.inc136:                                       ; preds = %if.end104.for.inc136_crit_edge, %for.body97.for.inc136_crit_edge
  %inc = add i32 %P.01004, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc136.fallback_crit_edge, label %for.inc136.for.body97_crit_edge

for.inc136.for.body97_crit_edge:                  ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97

for.inc136.fallback_crit_edge:                    ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

fallback:                                         ; preds = %for.inc136.fallback_crit_edge, %do.end94.fallback_crit_edge, %if.end70.fallback_crit_edge
  %sub139 = add i32 %pllin_rate, 19999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %sub139)
  %33 = icmp ult i32 %sub139, 20000000
  br i1 %33, label %fallback.if.end149_crit_edge, label %if.else

fallback.if.end149_crit_edge:                     ; preds = %fallback
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.else:                                          ; preds = %fallback
  %div140 = udiv i32 %sub139, 20000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 319999999, i32 %sub139)
  %cmp143 = icmp ugt i32 %sub139, 319999999
  br i1 %cmp143, label %do.end147, label %if.else.if.end149_crit_edge

if.else.if.end149_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

do.end147:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.275) #11
  br label %cleanup

if.end149:                                        ; preds = %if.else.if.end149_crit_edge, %fallback.if.end149_crit_edge
  %P.1 = phi i32 [ %div140, %if.else.if.end149_crit_edge ], [ 1, %fallback.if.end149_crit_edge ]
  %div150 = udiv i32 %pllin_rate, %P.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6667000, i32 %div150)
  %cmp151 = icmp ult i32 %div150, 6667000
  br i1 %cmp151, label %do.end155, label %if.end156

do.end155:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.277) #11
  br label %cleanup

if.end156:                                        ; preds = %if.end149
  %conv = zext i32 %pll_rate to i64
  %mul157 = mul nuw nsw i64 %conv, 10000
  %conv158 = zext i32 %P.1 to i64
  %mul159 = mul nuw nsw i64 %mul157, %conv158
  %div160884 = lshr i32 %pllin_rate, 1
  %conv161 = zext i32 %div160884 to i64
  %add162 = add nuw nsw i64 %mul159, %conv161
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add162)
  %cmp341 = icmp ult i64 %add162, 4294967296
  br i1 %cmp341, label %if.then349, label %if.else355, !prof !574

if.then349:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %conv350 = trunc i64 %add162 to i32
  %div353 = udiv i32 %conv350, %pllin_rate
  br label %if.end359

if.else355:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %pllin_rate, i64 %add162) #13, !srcloc !575
  %asmresult1.i = extractvalue { i64, i64 } %34, 1
  %extract.t991 = trunc i64 %asmresult1.i to i32
  br label %if.end359

if.end359:                                        ; preds = %if.else355, %if.then349
  %_tmp.0.off0 = phi i32 [ %div353, %if.then349 ], [ %extract.t991, %if.else355 ]
  %35 = tail call i32 @llvm.umax.i32(i32 %_tmp.0.off0, i32 40000)
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 120000)
  %.frozen = freeze i32 %36
  %div371 = udiv i32 %.frozen, 10000
  %37 = mul i32 %div371, 10000
  %rem372.decomposed = sub i32 %.frozen, %37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm512x_find_pll_coeff, %if.then385)) #8
          to label %do.end388 [label %if.then385], !srcloc !572

if.then385:                                       ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.279, i32 noundef %div371, i32 noundef %rem372.decomposed, i32 noundef %P.1) #8
  br label %do.end388

do.end388:                                        ; preds = %if.then385, %if.end359
  %conv390 = zext i32 %36 to i64
  %conv391 = zext i32 %pllin_rate to i64
  %mul392 = mul nuw nsw i64 %conv390, %conv391
  %mul394 = mul nuw nsw i32 %P.1, 10000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul392)
  %cmp595 = icmp ult i64 %mul392, 4294967296
  br i1 %cmp595, label %if.then603, label %if.else609, !prof !574

if.then603:                                       ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #10
  %conv604 = trunc i64 %mul392 to i32
  %div607 = udiv i32 %conv604, %mul394
  br label %done

if.else609:                                       ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #10
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul394, i64 %mul392) #13, !srcloc !575
  %asmresult1.i937 = extractvalue { i64, i64 } %38, 1
  %extract.t996 = trunc i64 %asmresult1.i937 to i32
  br label %done

done:                                             ; preds = %if.else609, %if.then603, %if.then131, %if.end116, %if.then66, %do.body54
  %_tmp389.0.off0.sink = phi i32 [ %pll_rate, %do.body54 ], [ %pll_rate, %if.then66 ], [ %pll_rate, %if.end116 ], [ %pll_rate, %if.then131 ], [ %div607, %if.then603 ], [ %extract.t996, %if.else609 ]
  %P.2 = phi i32 [ %den.0, %do.body54 ], [ %den.0, %if.then66 ], [ %P.01004, %if.end116 ], [ %P.01004, %if.then131 ], [ %P.1, %if.then603 ], [ %P.1, %if.else609 ]
  %D.0 = phi i32 [ 0, %do.body54 ], [ 0, %if.then66 ], [ %rem118.decomposed, %if.end116 ], [ %rem118.decomposed, %if.then131 ], [ %rem372.decomposed, %if.then603 ], [ %rem372.decomposed, %if.else609 ]
  %J.0 = phi i32 [ %div49.lcssa, %do.body54 ], [ %div49.lcssa, %if.then66 ], [ %div117, %if.end116 ], [ %div117, %if.then131 ], [ %div371, %if.then603 ], [ %div371, %if.else609 ]
  %R.1 = phi i32 [ %R.01001.lcssa, %do.body54 ], [ %R.01001.lcssa, %if.then66 ], [ 1, %if.end116 ], [ 1, %if.then131 ], [ 1, %if.then603 ], [ 1, %if.else609 ]
  %real_pll617 = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 11
  %39 = ptrtoint ptr %real_pll617 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %_tmp389.0.off0.sink, ptr %real_pll617, align 4
  %pll_r = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 7
  %40 = ptrtoint ptr %pll_r to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %R.1, ptr %pll_r, align 4
  %pll_j = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 8
  %41 = ptrtoint ptr %pll_j to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %J.0, ptr %pll_j, align 4
  %pll_d = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 9
  %42 = ptrtoint ptr %pll_d to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %D.0, ptr %pll_d, align 4
  %pll_p = getelementptr inbounds %struct.pcm512x_priv, ptr %7, i32 0, i32 10
  %43 = ptrtoint ptr %pll_p to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %P.2, ptr %pll_p, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end155, %do.end147
  %retval.0 = phi i32 [ 0, %done ], [ -22, %do.end147 ], [ -22, %do.end155 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 280)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 280)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !254, !255, !257, !258, !260, !262, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !295, !296, !297, !298, !300, !301, !302, !303, !304, !306, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !441, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !484, !485, !487, !488, !490, !491, !493, !494, !496, !497, !499, !500, !502, !503, !505, !506, !507, !508, !510, !511, !513, !514, !515, !517, !518, !520, !521, !523, !524, !526, !527, !529, !530, !531, !533, !534, !535, !537, !538, !540, !541, !542, !543, !545, !546, !547, !549, !550, !551, !553, !554, !556, !557, !558, !560, !561}
!llvm.module.flags = !{!562, !563, !564, !565, !566, !567, !568, !569}
!llvm.ident = !{!570}

!0 = !{ptr @pcm512x_regmap, !1, !"pcm512x_regmap", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/pcm512x.c", i32 1526, i32 28}
!2 = !{ptr @__ksymtab_pcm512x_regmap, !3, !"__ksymtab_pcm512x_regmap", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/pcm512x.c", i32 1541, i32 1}
!4 = !{ptr @pcm512x_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/pcm512x.c", i32 1552, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/pcm512x.c", i32 1563, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pcm512x_probe._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @pcm512x_probe._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/pcm512x.c", i32 1576, i32 4}
!17 = !{ptr @pcm512x_probe._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @pcm512x_probe._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/pcm512x.c", i32 1585, i32 3}
!21 = !{ptr @pcm512x_probe._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @pcm512x_probe._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/pcm512x.c", i32 1593, i32 3}
!25 = !{ptr @pcm512x_probe._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @pcm512x_probe._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @pcm512x_probe._entry.15, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/pcm512x.c", i32 1599, i32 3}
!29 = !{ptr @pcm512x_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/pcm512x.c", i32 1611, i32 4}
!32 = !{ptr @pcm512x_probe._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pcm512x_probe._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/pcm512x.c", i32 1620, i32 3}
!36 = !{ptr @pcm512x_probe._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pcm512x_probe._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/pcm512x.c", i32 1634, i32 32}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/pcm512x.c", i32 1636, i32 5}
!42 = !{ptr @pcm512x_probe._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pcm512x_probe._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/pcm512x.c", i32 1643, i32 32}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/pcm512x.c", i32 1645, i32 5}
!48 = !{ptr @pcm512x_probe._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pcm512x_probe._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/pcm512x.c", i32 1653, i32 4}
!52 = !{ptr @pcm512x_probe._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pcm512x_probe._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/pcm512x.c", i32 1659, i32 4}
!56 = !{ptr @pcm512x_probe._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pcm512x_probe._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/pcm512x.c", i32 1669, i32 3}
!60 = !{ptr @pcm512x_probe._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pcm512x_probe._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @__ksymtab_pcm512x_probe, !63, !"__ksymtab_pcm512x_probe", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/pcm512x.c", i32 1685, i32 1}
!64 = !{ptr @__ksymtab_pcm512x_remove, !65, !"__ksymtab_pcm512x_remove", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/pcm512x.c", i32 1697, i32 1}
!66 = !{ptr @pcm512x_pm_ops, !67, !"pcm512x_pm_ops", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/pcm512x.c", i32 1763, i32 25}
!68 = !{ptr @__ksymtab_pcm512x_pm_ops, !69, !"__ksymtab_pcm512x_pm_ops", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/pcm512x.c", i32 1766, i32 1}
!70 = !{ptr @__UNIQUE_ID_description313, !71, !"__UNIQUE_ID_description313", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/pcm512x.c", i32 1768, i32 1}
!72 = !{ptr @__UNIQUE_ID_author314, !73, !"__UNIQUE_ID_author314", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/pcm512x.c", i32 1769, i32 1}
!74 = !{ptr @__UNIQUE_ID_file315, !75, !"__UNIQUE_ID_file315", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/pcm512x.c", i32 1770, i32 1}
!76 = !{ptr @__UNIQUE_ID_license316, !75, !"__UNIQUE_ID_license316", i1 false, i1 false}
!77 = !{ptr @pcm512x_reg_defaults, !78, !"pcm512x_reg_defaults", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/pcm512x.c", i32 75, i32 33}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/pcm512x.c", i32 1519, i32 10}
!81 = !{ptr @pcm512x_range, !82, !"pcm512x_range", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/pcm512x.c", i32 1518, i32 38}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/pcm512x.c", i32 27, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/pcm512x.c", i32 28, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/pcm512x.c", i32 29, i32 2}
!89 = distinct !{null, !90, !"pcm512x_supply_names", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/pcm512x.c", i32 26, i32 27}
!91 = !{ptr @pcm512x_component_driver, !92, !"pcm512x_component_driver", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/pcm512x.c", i32 1505, i32 46}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/pcm512x.c", i32 440, i32 1}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/pcm512x.c", i32 442, i32 1}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/pcm512x.c", i32 444, i32 1}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/pcm512x.c", i32 448, i32 10}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/pcm512x.c", i32 456, i32 1}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/pcm512x.c", i32 457, i32 1}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/pcm512x.c", i32 459, i32 1}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/pcm512x.c", i32 460, i32 1}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/pcm512x.c", i32 461, i32 1}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/pcm512x.c", i32 462, i32 1}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/pcm512x.c", i32 464, i32 1}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/pcm512x.c", i32 467, i32 1}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/pcm512x.c", i32 468, i32 1}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/pcm512x.c", i32 469, i32 1}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/pcm512x.c", i32 470, i32 1}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/pcm512x.c", i32 471, i32 1}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/pcm512x.c", i32 472, i32 1}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/pcm512x.c", i32 474, i32 1}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/pcm512x.c", i32 476, i32 1}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/pcm512x.c", i32 478, i32 1}
!133 = !{ptr @pcm512x_controls, !134, !"pcm512x_controls", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/pcm512x.c", i32 439, i32 38}
!135 = !{ptr @digital_tlv, !136, !"digital_tlv", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/pcm512x.c", i32 307, i32 14}
!137 = !{ptr @analog_tlv, !138, !"analog_tlv", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/pcm512x.c", i32 308, i32 14}
!139 = !{ptr @boost_tlv, !140, !"boost_tlv", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/pcm512x.c", i32 309, i32 14}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/pcm512x.c", i32 427, i32 4}
!143 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pcm512x_digital_playback_switch_put._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @pcm512x_digital_playback_switch_put._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @pcm512x_dsp_program, !147, !"pcm512x_dsp_program", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/pcm512x.c", i32 327, i32 8}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/pcm512x.c", i32 312, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/pcm512x.c", i32 313, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/pcm512x.c", i32 314, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/pcm512x.c", i32 315, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/pcm512x.c", i32 316, i32 2}
!158 = !{ptr @pcm512x_dsp_program_texts, !159, !"pcm512x_dsp_program_texts", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/pcm512x.c", i32 311, i32 27}
!160 = !{ptr @pcm512x_dsp_program_values, !161, !"pcm512x_dsp_program_values", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/pcm512x.c", i32 319, i32 27}
!162 = !{ptr @pcm512x_clk_missing, !163, !"pcm512x_clk_missing", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/pcm512x.c", i32 336, i32 30}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 2}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 8}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 14}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 20}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 26}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 32}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 38}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/pcm512x.c", i32 333, i32 44}
!180 = !{ptr @pcm512x_clk_missing_text, !181, !"pcm512x_clk_missing_text", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/pcm512x.c", i32 332, i32 27}
!182 = !{ptr @pcm512x_autom_l, !183, !"pcm512x_autom_l", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/pcm512x.c", i32 343, i32 30}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 10}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 19}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 28}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 37}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 46}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 55}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/pcm512x.c", i32 340, i32 64}
!200 = !{ptr @pcm512x_autom_text, !201, !"pcm512x_autom_text", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/pcm512x.c", i32 339, i32 27}
!202 = !{ptr @pcm512x_autom_r, !203, !"pcm512x_autom_r", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/pcm512x.c", i32 347, i32 30}
!204 = !{ptr @pcm512x_vndf, !205, !"pcm512x_vndf", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/pcm512x.c", i32 356, i32 30}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/pcm512x.c", i32 352, i32 2}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/pcm512x.c", i32 352, i32 21}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/pcm512x.c", i32 352, i32 41}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/pcm512x.c", i32 353, i32 2}
!214 = !{ptr @pcm512x_ramp_rate_text, !215, !"pcm512x_ramp_rate_text", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/pcm512x.c", i32 351, i32 27}
!216 = !{ptr @pcm512x_vnds, !217, !"pcm512x_vnds", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/pcm512x.c", i32 372, i32 30}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/pcm512x.c", i32 369, i32 2}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/pcm512x.c", i32 369, i32 14}
!222 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/pcm512x.c", i32 369, i32 26}
!224 = !{ptr @.str.102, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/pcm512x.c", i32 369, i32 38}
!226 = !{ptr @pcm512x_ramp_step_text, !227, !"pcm512x_ramp_step_text", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/pcm512x.c", i32 368, i32 27}
!228 = !{ptr @pcm512x_vnuf, !229, !"pcm512x_vnuf", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/pcm512x.c", i32 360, i32 30}
!230 = !{ptr @pcm512x_vnus, !231, !"pcm512x_vnus", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/pcm512x.c", i32 376, i32 30}
!232 = !{ptr @pcm512x_vedf, !233, !"pcm512x_vedf", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/pcm512x.c", i32 364, i32 30}
!234 = !{ptr @pcm512x_veds, !235, !"pcm512x_veds", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/pcm512x.c", i32 380, i32 30}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/pcm512x.c", i32 483, i32 1}
!238 = !{ptr @.str.104, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/pcm512x.c", i32 484, i32 1}
!240 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/pcm512x.c", i32 486, i32 1}
!242 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/pcm512x.c", i32 487, i32 1}
!244 = !{ptr @pcm512x_dapm_widgets, !245, !"pcm512x_dapm_widgets", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/pcm512x.c", i32 482, i32 41}
!246 = !{ptr @.str.108, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/pcm512x.c", i32 491, i32 18}
!248 = !{ptr @pcm512x_dapm_routes, !249, !"pcm512x_dapm_routes", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/pcm512x.c", i32 490, i32 40}
!250 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/pcm512x.c", i32 683, i32 4}
!252 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @pcm512x_set_bias_level._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @pcm512x_set_bias_level._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @pcm512x_set_bias_level._entry.111, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/pcm512x.c", i32 693, i32 4}
!257 = !{ptr @pcm512x_set_bias_level._entry_ptr.112, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.113, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/pcm512x.c", i32 1490, i32 10}
!260 = !{ptr @pcm512x_dai, !261, !"pcm512x_dai", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/pcm512x.c", i32 1489, i32 34}
!262 = !{ptr @pcm512x_dai_ops, !263, !"pcm512x_dai_ops", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/pcm512x.c", i32 1480, i32 37}
!264 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/pcm512x.c", i32 1367, i32 3}
!266 = !{ptr @.str.115, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @pcm512x_set_fmt._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @pcm512x_set_fmt._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.117, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/pcm512x.c", i32 1375, i32 3}
!271 = !{ptr @pcm512x_set_fmt._entry.116, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @pcm512x_set_fmt._entry_ptr.118, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.120, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/pcm512x.c", i32 1396, i32 3}
!275 = !{ptr @pcm512x_set_fmt._entry.119, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @pcm512x_set_fmt._entry_ptr.121, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/pcm512x.c", i32 1404, i32 3}
!279 = !{ptr @pcm512x_set_fmt._entry.122, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @pcm512x_set_fmt._entry_ptr.124, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/pcm512x.c", i32 1411, i32 3}
!283 = !{ptr @pcm512x_set_fmt._entry.125, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @pcm512x_set_fmt._entry_ptr.127, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/pcm512x.c", i32 1448, i32 4}
!287 = !{ptr @.str.129, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @pcm512x_mute._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @pcm512x_mute._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @pcm512x_mute._entry.130, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/pcm512x.c", i32 1461, i32 4}
!292 = !{ptr @pcm512x_mute._entry_ptr.131, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/pcm512x.c", i32 591, i32 3}
!295 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @pcm512x_dai_startup_master._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @pcm512x_dai_startup_master._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.134, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/pcm512x.c", i32 632, i32 3}
!300 = !{ptr @.str.135, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.136, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @pcm512x_dai_startup_slave._entry, !299, !"_entry", i1 false, i1 false}
!303 = !{ptr @pcm512x_dai_startup_slave._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @constraints_slave, !305, !"constraints_slave", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/pcm512x.c", i32 542, i32 48}
!306 = !{ptr @pcm512x_dai_rates, !307, !"pcm512x_dai_rates", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/pcm512x.c", i32 537, i32 18}
!308 = !{ptr @.str.137, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/pcm512x.c", i32 1175, i32 2}
!310 = !{ptr @.str.138, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.139, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @pcm512x_hw_params.__UNIQUE_ID_ddebug312, !309, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!313 = !{ptr @.str.140, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/pcm512x.c", i32 1193, i32 3}
!315 = !{ptr @pcm512x_hw_params._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @pcm512x_hw_params._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.142, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/pcm512x.c", i32 1201, i32 3}
!319 = !{ptr @pcm512x_hw_params._entry.141, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @pcm512x_hw_params._entry_ptr.143, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.145, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/pcm512x.c", i32 1210, i32 4}
!323 = !{ptr @pcm512x_hw_params._entry.144, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @pcm512x_hw_params._entry_ptr.146, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.148, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/pcm512x.c", i32 1221, i32 4}
!327 = !{ptr @pcm512x_hw_params._entry.147, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @pcm512x_hw_params._entry_ptr.149, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.151, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/pcm512x.c", i32 1227, i32 4}
!331 = !{ptr @pcm512x_hw_params._entry.150, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @pcm512x_hw_params._entry_ptr.152, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.154, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/pcm512x.c", i32 1240, i32 4}
!335 = !{ptr @pcm512x_hw_params._entry.153, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @pcm512x_hw_params._entry_ptr.155, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @pcm512x_hw_params._entry.156, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/pcm512x.c", i32 1255, i32 4}
!339 = !{ptr @pcm512x_hw_params._entry_ptr.157, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.159, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/pcm512x.c", i32 1264, i32 4}
!342 = !{ptr @pcm512x_hw_params._entry.158, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @pcm512x_hw_params._entry_ptr.160, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.162, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/pcm512x.c", i32 1277, i32 4}
!346 = !{ptr @pcm512x_hw_params._entry.161, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @pcm512x_hw_params._entry_ptr.163, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.165, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/pcm512x.c", i32 1286, i32 4}
!350 = !{ptr @pcm512x_hw_params._entry.164, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @pcm512x_hw_params._entry_ptr.166, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.168, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/pcm512x.c", i32 1295, i32 4}
!354 = !{ptr @pcm512x_hw_params._entry.167, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @pcm512x_hw_params._entry_ptr.169, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.171, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/pcm512x.c", i32 1303, i32 4}
!358 = !{ptr @pcm512x_hw_params._entry.170, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @pcm512x_hw_params._entry_ptr.172, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.174, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/pcm512x.c", i32 1312, i32 4}
!362 = !{ptr @pcm512x_hw_params._entry.173, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @pcm512x_hw_params._entry_ptr.175, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.177, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/pcm512x.c", i32 1321, i32 3}
!366 = !{ptr @pcm512x_hw_params._entry.176, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @pcm512x_hw_params._entry_ptr.178, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/pcm512x.c", i32 1328, i32 3}
!370 = !{ptr @pcm512x_hw_params._entry.179, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @pcm512x_hw_params._entry_ptr.181, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.182, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/pcm512x.c", i32 919, i32 4}
!374 = !{ptr @.str.183, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @pcm512x_set_dividers._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @pcm512x_set_dividers._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.185, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/pcm512x.c", i32 933, i32 4}
!379 = !{ptr @pcm512x_set_dividers._entry.184, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @pcm512x_set_dividers._entry_ptr.186, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.188, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/pcm512x.c", i32 937, i32 4}
!383 = !{ptr @pcm512x_set_dividers._entry.187, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @pcm512x_set_dividers._entry_ptr.189, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.191, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/pcm512x.c", i32 956, i32 4}
!387 = !{ptr @pcm512x_set_dividers._entry.190, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @pcm512x_set_dividers._entry_ptr.192, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.194, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/pcm512x.c", i32 963, i32 4}
!391 = !{ptr @pcm512x_set_dividers._entry.193, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @pcm512x_set_dividers._entry_ptr.195, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.197, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/pcm512x.c", i32 970, i32 4}
!395 = !{ptr @pcm512x_set_dividers._entry.196, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @pcm512x_set_dividers._entry_ptr.198, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.200, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/pcm512x.c", i32 977, i32 4}
!399 = !{ptr @pcm512x_set_dividers._entry.199, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @pcm512x_set_dividers._entry_ptr.201, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.203, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/pcm512x.c", i32 984, i32 4}
!403 = !{ptr @pcm512x_set_dividers._entry.202, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @pcm512x_set_dividers._entry_ptr.204, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.206, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/pcm512x.c", i32 994, i32 3}
!407 = !{ptr @pcm512x_set_dividers._entry.205, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @pcm512x_set_dividers._entry_ptr.207, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.208, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/pcm512x.c", i32 1012, i32 3}
!411 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug302, !410, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!412 = !{ptr @.str.210, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/pcm512x.c", i32 1016, i32 4}
!414 = !{ptr @pcm512x_set_dividers._entry.209, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @pcm512x_set_dividers._entry_ptr.211, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.213, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/pcm512x.c", i32 1025, i32 4}
!418 = !{ptr @pcm512x_set_dividers._entry.212, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @pcm512x_set_dividers._entry_ptr.214, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.216, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/pcm512x.c", i32 1043, i32 4}
!422 = !{ptr @pcm512x_set_dividers._entry.215, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @pcm512x_set_dividers._entry_ptr.217, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.218, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/pcm512x.c", i32 1048, i32 3}
!426 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug303, !425, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!427 = !{ptr @.str.220, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/pcm512x.c", i32 1054, i32 4}
!429 = !{ptr @pcm512x_set_dividers._entry.219, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @pcm512x_set_dividers._entry_ptr.221, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.223, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/pcm512x.c", i32 1064, i32 3}
!433 = !{ptr @pcm512x_set_dividers._entry.222, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @pcm512x_set_dividers._entry_ptr.224, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.226, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/pcm512x.c", i32 1070, i32 3}
!437 = !{ptr @pcm512x_set_dividers._entry.225, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @pcm512x_set_dividers._entry_ptr.227, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.229, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/pcm512x.c", i32 1081, i32 4}
!441 = !{ptr @pcm512x_set_dividers._entry.228, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @pcm512x_set_dividers._entry_ptr.230, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.232, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/pcm512x.c", i32 1090, i32 3}
!445 = !{ptr @pcm512x_set_dividers._entry.231, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @pcm512x_set_dividers._entry_ptr.233, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.235, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/pcm512x.c", i32 1096, i32 3}
!449 = !{ptr @pcm512x_set_dividers._entry.234, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @pcm512x_set_dividers._entry_ptr.236, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.238, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/pcm512x.c", i32 1102, i32 3}
!453 = !{ptr @pcm512x_set_dividers._entry.237, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @pcm512x_set_dividers._entry_ptr.239, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.241, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/pcm512x.c", i32 1108, i32 3}
!457 = !{ptr @pcm512x_set_dividers._entry.240, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @pcm512x_set_dividers._entry_ptr.242, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.244, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/pcm512x.c", i32 1115, i32 3}
!461 = !{ptr @pcm512x_set_dividers._entry.243, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @pcm512x_set_dividers._entry_ptr.245, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.247, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/pcm512x.c", i32 1122, i32 3}
!465 = !{ptr @pcm512x_set_dividers._entry.246, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @pcm512x_set_dividers._entry_ptr.248, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.250, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/pcm512x.c", i32 1128, i32 3}
!469 = !{ptr @pcm512x_set_dividers._entry.249, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @pcm512x_set_dividers._entry_ptr.251, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.253, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/pcm512x.c", i32 1134, i32 3}
!473 = !{ptr @pcm512x_set_dividers._entry.252, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @pcm512x_set_dividers._entry_ptr.254, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.256, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/pcm512x.c", i32 1149, i32 3}
!477 = !{ptr @pcm512x_set_dividers._entry.255, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @pcm512x_set_dividers._entry_ptr.257, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.258, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/pcm512x.c", i32 1153, i32 2}
!481 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug304, !480, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!482 = !{ptr @.str.259, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/pcm512x.c", i32 1154, i32 2}
!484 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug305, !483, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!485 = !{ptr @.str.260, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/pcm512x.c", i32 1155, i32 2}
!487 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug306, !486, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!488 = !{ptr @.str.261, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/pcm512x.c", i32 1156, i32 2}
!490 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug307, !489, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!491 = !{ptr @.str.262, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/pcm512x.c", i32 1157, i32 2}
!493 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug308, !492, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!494 = !{ptr @.str.263, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/pcm512x.c", i32 1158, i32 2}
!496 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug309, !495, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!497 = !{ptr @.str.264, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/pcm512x.c", i32 1159, i32 2}
!499 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug310, !498, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!500 = !{ptr @.str.265, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/pcm512x.c", i32 1160, i32 2}
!502 = !{ptr @pcm512x_set_dividers.__UNIQUE_ID_ddebug311, !501, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!503 = !{ptr @.str.266, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/pcm512x.c", i32 727, i32 3}
!505 = !{ptr @.str.267, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @pcm512x_find_sck._entry, !504, !"_entry", i1 false, i1 false}
!507 = !{ptr @pcm512x_find_sck._entry_ptr, !504, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.268, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/pcm512x.c", i32 731, i32 2}
!510 = !{ptr @pcm512x_find_sck.__UNIQUE_ID_ddebug295, !509, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!511 = !{ptr @.str.269, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/pcm512x.c", i32 762, i32 2}
!513 = !{ptr @.str.270, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug296, !512, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!515 = !{ptr @.str.271, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/pcm512x.c", i32 772, i32 2}
!517 = !{ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug297, !516, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!518 = !{ptr @.str.272, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/pcm512x.c", i32 787, i32 4}
!520 = !{ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug298, !519, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!521 = !{ptr @.str.273, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/pcm512x.c", i32 803, i32 2}
!523 = !{ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug299, !522, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!524 = !{ptr @.str.274, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/pcm512x.c", i32 817, i32 3}
!526 = !{ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug300, !525, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!527 = !{ptr @.str.275, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/pcm512x.c", i32 830, i32 3}
!529 = !{ptr @pcm512x_find_pll_coeff._entry, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @pcm512x_find_pll_coeff._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.277, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/pcm512x.c", i32 834, i32 3}
!533 = !{ptr @pcm512x_find_pll_coeff._entry.276, !532, !"_entry", i1 false, i1 false}
!534 = !{ptr @pcm512x_find_pll_coeff._entry_ptr.278, !532, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @.str.279, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/pcm512x.c", i32 845, i32 2}
!537 = !{ptr @pcm512x_find_pll_coeff.__UNIQUE_ID_ddebug301, !536, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!538 = !{ptr @.str.280, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/pcm512x.c", i32 1708, i32 3}
!540 = !{ptr @.str.281, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @pcm512x_suspend._entry, !539, !"_entry", i1 false, i1 false}
!542 = !{ptr @pcm512x_suspend._entry_ptr, !539, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.283, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/pcm512x.c", i32 1715, i32 3}
!545 = !{ptr @pcm512x_suspend._entry.282, !544, !"_entry", i1 false, i1 false}
!546 = !{ptr @pcm512x_suspend._entry_ptr.284, !544, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.285, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/pcm512x.c", i32 1733, i32 4}
!549 = !{ptr @pcm512x_resume._entry, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @pcm512x_resume._entry_ptr, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @pcm512x_resume._entry.286, !552, !"_entry", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/pcm512x.c", i32 1741, i32 3}
!553 = !{ptr @pcm512x_resume._entry_ptr.287, !552, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.289, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/pcm512x.c", i32 1748, i32 3}
!556 = !{ptr @pcm512x_resume._entry.288, !555, !"_entry", i1 false, i1 false}
!557 = !{ptr @pcm512x_resume._entry_ptr.290, !555, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.292, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/pcm512x.c", i32 1755, i32 3}
!560 = !{ptr @pcm512x_resume._entry.291, !559, !"_entry", i1 false, i1 false}
!561 = !{ptr @pcm512x_resume._entry_ptr.293, !559, !"_entry_ptr", i1 false, i1 false}
!562 = !{i32 1, !"wchar_size", i32 2}
!563 = !{i32 1, !"min_enum_size", i32 4}
!564 = !{i32 8, !"branch-target-enforcement", i32 0}
!565 = !{i32 8, !"sign-return-address", i32 0}
!566 = !{i32 8, !"sign-return-address-all", i32 0}
!567 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!568 = !{i32 7, !"uwtable", i32 1}
!569 = !{i32 7, !"frame-pointer", i32 2}
!570 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!571 = !{!"auto-init"}
!572 = !{i64 2148998670, i64 2148998675, i64 2148998688, i64 2148998732, i64 2148998766, i64 2148998787}
!573 = !{i32 0, i32 33}
!574 = !{!"branch_weights", i32 2000, i32 1}
!575 = !{i64 2148244201, i64 2148244481, i64 2148244815, i64 2148245149}
